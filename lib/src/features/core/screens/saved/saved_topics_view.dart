import 'dart:async';

import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../models/auto_quiz_data.dart';
import '../home/home_theme.dart';
import '../quizes/quiz.dart';
import '../quizes/quiz_widgets.dart';
import '../topics/topic_catalog.dart';
import '../topics/topic_strings.dart';
import 'saved_topic_item.dart';

class SavedTopicsView extends StatefulWidget {
  const SavedTopicsView({
    required this.topics,
    required this.onBrowse,
    required this.onRemove,
    required this.onRestore,
    required this.onClear,
    required this.onOpen,
    this.loading = false,
    super.key,
  });
  final List<Map<String, dynamic>> topics;
  final bool loading;
  final VoidCallback onBrowse;
  final Future<void> Function(Map<String, dynamic>) onRemove;
  final Future<void> Function(Map<String, dynamic>) onRestore;
  final Future<void> Function() onClear;
  final ValueChanged<SavedTopicItem> onOpen;
  @override
  State<SavedTopicsView> createState() => _SavedTopicsViewState();
}

class _SavedTopicsViewState extends State<SavedTopicsView> {
  final _search = TextEditingController();
  final _scroll = ScrollController();
  TopicCategory? _category;

  @override
  void dispose() {
    _search.dispose();
    _scroll.dispose();
    super.dispose();
  }

  void _filterChanged() {
    setState(() {});
    if (_scroll.hasClients) _scroll.jumpTo(0);
  }

  void _reset() {
    _search.clear();
    _category = null;
    _filterChanged();
  }

  void _run(Future<void> Function() action) {
    unawaited(
      Future<void>.sync(action).catchError((Object error) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(S.of(context).savedActionError)),
          );
        }
      }),
    );
  }

  void _remove(SavedTopicItem item) {
    final s = S.of(context);
    final raw = Map<String, dynamic>.from(item.raw);
    _run(() => widget.onRemove(raw));
    // Show undo immediately; cloud writes can remain pending when offline.
    final messenger = ScaffoldMessenger.of(context);
    messenger.hideCurrentSnackBar();
    messenger.showSnackBar(
      SnackBar(
        content: Text(s.savedRemovedMessage(item.title ?? s.savedGuideLabel)),
        duration: const Duration(seconds: 6),
        action: SnackBarAction(
          label: s.savedUndo,
          onPressed: () => _run(() => widget.onRestore(raw)),
        ),
      ),
    );
  }

  Future<void> _clear() async {
    final s = S.of(context);
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(s.savedClearTitle),
        content: Text(s.savedClearBody),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(s.tcancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(s.tclear),
          ),
        ],
      ),
    );
    if (confirmed == true && mounted) {
      _reset();
      _run(widget.onClear);
    }
  }

  void _chooseQuiz(List<SavedTopicItem> items) {
    final s = S.of(context);
    final practice = <String, TopicEntry>{};
    for (final item in items) {
      if (item.entry != null && item.entry!.questionCount > 0) {
        practice[item.entry!.id] = item.entry!;
      }
    }
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (sheetContext) => SafeArea(
        child: SizedBox(
          height: (MediaQuery.sizeOf(sheetContext).height * .65).clamp(
            200,
            600,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 4, 20, 14),
                child: Text(
                  s.savedChooseQuiz,
                  style: const TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: practice.length,
                  itemBuilder: (context, index) {
                    final topic = practice.values.elementAt(index);
                    return ListTile(
                      key: ValueKey('saved-quiz-${topic.id}'),
                      leading: Image.asset(
                        topic.image,
                        width: 38,
                        height: 38,
                        excludeFromSemantics: true,
                      ),
                      title: Text(topic.title),
                      subtitle: Text(
                        TopicStrings(context).questions(topic.questionCount),
                      ),
                      trailing: const Icon(
                        Icons.play_arrow_rounded,
                        color: QuizColors.primary,
                      ),
                      onTap: () {
                        Navigator.of(sheetContext).pop();
                        final questions = generateLocalizedQuizData(s).values
                            .firstWhere(
                              (questions) =>
                                  questions.first.topicId == topic.id,
                            );
                        Navigator.of(this.context).push(
                          MaterialPageRoute<void>(
                            builder: (_) => QuizScreen(
                              topicTitle: topic.title,
                              questions: questions,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final copy = TopicStrings(context);
    final catalog = buildTopicCatalog(s);
    final items = widget.topics
        .map((raw) => SavedTopicItem(raw, catalog))
        .toList();
    final terms = SavedTopicItem.normalize(_search.text.trim()).isEmpty
        ? <String>[]
        : _search.text
              .trim()
              .split(RegExp(r'\s+'))
              .map(SavedTopicItem.normalize)
              .toList();
    final filtered = items.where((item) {
      if (_category != null && item.category != _category) return false;
      final haystack = SavedTopicItem.normalize(
        '${item.title ?? ''} ${item.entry?.id ?? ''} '
        '${item.category == null ? '' : copy.category(item.category!)}',
      );
      return terms.every(haystack.contains);
    }).toList();
    final canPractice = items.any(
      (item) => (item.entry?.questionCount ?? 0) > 0,
    );
    return Theme(
      data: homeTheme(context),
      child: Builder(
        builder: (context) => Scaffold(
          body: SafeArea(
            bottom: false,
            child: Column(
              children: [
                Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 1020),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 18, 12, 16),
                      child: Row(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: const Icon(
                              Icons.bookmark_rounded,
                              color: QuizColors.primary,
                              size: 25,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  s.saved,
                                  style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  s.savedTagline,
                                  style: const TextStyle(
                                    fontSize: 11,
                                    height: 1.5,
                                    color: QuizColors.muted,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (items.isNotEmpty)
                            PopupMenuButton<String>(
                              key: const ValueKey('saved-menu'),
                              tooltip: s.savedManage,
                              onSelected: (_) => _clear(),
                              itemBuilder: (_) => [
                                PopupMenuItem(
                                  value: 'clear',
                                  child: Text(s.tclearAll),
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
                if (!widget.loading && items.isNotEmpty)
                  Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 1020),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 12),
                        child: TextField(
                          key: const ValueKey('saved-search'),
                          controller: _search,
                          onChanged: (_) => _filterChanged(),
                          textInputAction: TextInputAction.search,
                          decoration: InputDecoration(
                            hintText: s.savedSearchHint,
                            filled: true,
                            fillColor: Colors.white,
                            hintStyle: const TextStyle(
                              fontSize: 13,
                              color: QuizColors.muted,
                            ),
                            prefixIcon: const Icon(
                              Icons.search_rounded,
                              color: QuizColors.muted,
                            ),
                            suffixIcon: _search.text.isEmpty
                                ? null
                                : IconButton(
                                    tooltip: s.savedClearSearch,
                                    onPressed: () {
                                      _search.clear();
                                      _filterChanged();
                                    },
                                    icon: const Icon(
                                      Icons.close_rounded,
                                      size: 18,
                                    ),
                                  ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 15,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide: const BorderSide(
                                color: QuizColors.border,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide: const BorderSide(
                                color: QuizColors.primary,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                Expanded(
                  child: CustomScrollView(
                    controller: _scroll,
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.onDrag,
                    slivers: [
                      if (widget.loading)
                        SliverFillRemaining(
                          hasScrollBody: false,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const CircularProgressIndicator(),
                                const SizedBox(height: 16),
                                Text(s.savedLoading),
                              ],
                            ),
                          ),
                        )
                      else if (items.isEmpty)
                        SliverFillRemaining(
                          hasScrollBody: false,
                          child: _empty(context, s),
                        )
                      else ...[
                        SliverToBoxAdapter(
                          child: _constrained(
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    _chip(null, s.savedAllFilter(items.length)),
                                    for (final category in TopicCategory.values)
                                      _chip(
                                        category,
                                        '${copy.category(category)} (${items.where((item) => item.category == category).length})',
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        if (filtered.isEmpty)
                          SliverFillRemaining(
                            hasScrollBody: false,
                            child: _noResults(s),
                          )
                        else ...[
                          SliverToBoxAdapter(
                            child: _constrained(
                              Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            s.savedLibraryTitle,
                                            style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        QuizPill(
                                          label: s.savedCount(filtered.length),
                                          background: QuizColors.surface,
                                          color: QuizColors.muted,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 9),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Icon(
                                          Icons.offline_pin_outlined,
                                          size: 17,
                                          color: QuizColors.green,
                                        ),
                                        const SizedBox(width: 7),
                                        Expanded(
                                          child: Text(
                                            s.savedOfflineNote,
                                            style: const TextStyle(
                                              fontSize: 11,
                                              height: 1.5,
                                              color: QuizColors.muted,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SliverList.builder(
                            itemCount: filtered.length,
                            itemBuilder: (context, index) => _constrained(
                              Padding(
                                padding: const EdgeInsets.only(bottom: 12),
                                child: _card(s, copy, filtered[index]),
                              ),
                            ),
                          ),
                          if (canPractice)
                            SliverToBoxAdapter(
                              child: _constrained(
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 8,
                                    bottom: 24,
                                  ),
                                  child: QuizCard(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.asset(
                                              tInfoimg,
                                              width: 28,
                                              height: 28,
                                              excludeFromSemantics: true,
                                            ),
                                            const SizedBox(width: 10),
                                            Expanded(
                                              child: Text(
                                                s.savedPracticeTitle,
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  height: 1.5,
                                                  fontWeight: FontWeight.w800,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 9),
                                        Text(
                                          s.savedPracticeBody,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            height: 1.6,
                                            color: QuizColors.muted,
                                          ),
                                        ),
                                        const SizedBox(height: 14),
                                        FilledButton.icon(
                                          key: const ValueKey('saved-practice'),
                                          onPressed: () => _chooseQuiz(items),
                                          icon: const Icon(
                                            Icons.quiz_outlined,
                                            size: 18,
                                          ),
                                          label: Text(s.savedChooseQuiz),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          const SliverToBoxAdapter(child: SizedBox(height: 12)),
                        ],
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _constrained(Widget child) => Center(
    child: ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 1020),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: child,
      ),
    ),
  );

  Widget _chip(TopicCategory? category, String label) => Padding(
    padding: const EdgeInsetsDirectional.only(end: 8),
    child: ChoiceChip(
      key: ValueKey('saved-filter-${category?.name ?? 'all'}'),
      label: Text(label),
      selected: _category == category,
      showCheckmark: false,
      onSelected: (_) {
        _category = category;
        _filterChanged();
      },
      selectedColor: QuizColors.primary,
      backgroundColor: Colors.white,
      side: const BorderSide(color: QuizColors.border),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      labelStyle: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w700,
        color: _category == category ? Colors.white : QuizColors.muted,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
    ),
  );

  Widget _card(S s, TopicStrings copy, SavedTopicItem item) => Dismissible(
    key: ValueKey('saved-dismiss-${item.key}'),
    direction: DismissDirection.endToStart,
    onDismissed: (_) => _remove(item),
    background: Container(
      alignment: AlignmentDirectional.centerEnd,
      padding: const EdgeInsetsDirectional.only(end: 20),
      decoration: BoxDecoration(
        color: QuizColors.primaryLight,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Icon(
        Icons.bookmark_remove_outlined,
        color: QuizColors.primary,
      ),
    ),
    child: QuizCard(
      padding: EdgeInsets.zero,
      child: InkWell(
        key: ValueKey('saved-card-${item.key}'),
        onTap: () => widget.onOpen(item),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 5, 15),
          child: Row(
            children: [
              Container(
                width: 54,
                height: 54,
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: QuizColors.surface,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Image.asset(
                  item.image,
                  excludeFromSemantics: true,
                  errorBuilder: (_, _, _) =>
                      Image.asset(tDefaultTopicImg, excludeFromSemantics: true),
                ),
              ),
              const SizedBox(width: 13),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title ?? s.savedGuideLabel,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      item.category == null
                          ? s.savedGuideLabel
                          : copy.category(item.category!),
                      style: const TextStyle(
                        fontSize: 11,
                        height: 1.5,
                        color: QuizColors.muted,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                key: ValueKey('saved-remove-${item.key}'),
                tooltip: s.savedRemoveTooltip(item.title ?? s.savedGuideLabel),
                onPressed: () => _remove(item),
                icon: const Icon(
                  Icons.bookmark_rounded,
                  color: QuizColors.primary,
                  size: 23,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );

  Widget _empty(BuildContext context, S s) => _constrained(
    Padding(
      key: const ValueKey('saved-empty'),
      padding: const EdgeInsets.symmetric(vertical: 28),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 156,
            height: 156,
            padding: const EdgeInsets.all(28),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                color: QuizColors.primaryLight.withValues(alpha: .5),
                width: 7,
              ),
            ),
            child: Image.asset(tNoSavedTopicsImg, excludeFromSemantics: true),
          ),
          const SizedBox(height: 26),
          Text(
            s.savedEmptyTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w800,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 12),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 440),
            child: Text(
              s.savedEmptyBody,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 13,
                height: 1.7,
                color: QuizColors.muted,
              ),
            ),
          ),
          const SizedBox(height: 24),
          FilledButton.icon(
            key: const ValueKey('saved-browse'),
            onPressed: widget.onBrowse,
            style: FilledButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            ),
            icon: const Icon(Icons.menu_book_outlined, size: 20),
            label: Text(s.savedEmptyBrowse, textAlign: TextAlign.center),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (final image in [tCprimg, tChokingimg, tBurnimg])
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Image.asset(
                    image,
                    width: 34,
                    height: 34,
                    excludeFromSemantics: true,
                  ),
                ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            s.savedEmptyHint,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 11,
              height: 1.5,
              color: QuizColors.muted,
            ),
          ),
        ],
      ),
    ),
  );

  Widget _noResults(S s) => _constrained(
    Padding(
      key: const ValueKey('saved-no-results'),
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Icon(
              Icons.search_off_rounded,
              color: QuizColors.muted,
              size: 38,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            s.savedNoResultsTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 22,
              height: 1.4,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            s.savedNoResultsBody,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 13,
              height: 1.6,
              color: QuizColors.muted,
            ),
          ),
          const SizedBox(height: 18),
          TextButton(
            key: const ValueKey('saved-reset'),
            onPressed: _reset,
            child: Text(s.savedResetFilters),
          ),
        ],
      ),
    ),
  );
}
