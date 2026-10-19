import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../quizes/quiz_widgets.dart';
import 'topic_catalog.dart';
import 'topic_strings.dart';

class AllTopicsScreen extends StatefulWidget {
  const AllTopicsScreen({super.key});

  @override
  State<AllTopicsScreen> createState() => _AllTopicsScreenState();
}

class _AllTopicsScreenState extends State<AllTopicsScreen> {
  static const _lastViewedKey = 'topics_last_viewed_id';
  final _search = TextEditingController();
  final _scroll = ScrollController();
  List<TopicEntry> _catalog = [];
  Map<String, int> _scores = {};
  TopicCategory? _category;
  String? _lastViewed;
  String? _locale;
  int _loadVersion = 0;
  bool _opening = false;

  TopicStrings get _copy => TopicStrings(context);

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final locale = Localizations.localeOf(context).toLanguageTag();
    if (_locale != locale) {
      _locale = locale;
      _catalog = buildTopicCatalog(S.of(context));
      _scores = {};
      _refreshProgress();
    }
  }

  @override
  void dispose() {
    _search.dispose();
    _scroll.dispose();
    super.dispose();
  }

  Future<void> _refreshProgress() async {
    final version = ++_loadVersion;
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.reload();
      if (!mounted || version != _loadVersion) return;
      final scores = <String, int>{};
      for (final topic in _catalog) {
        final score = prefs.get(topic.scoreKey);
        if (topic.questionCount > 0 &&
            score is int &&
            score >= 0 &&
            score <= topic.questionCount) {
          scores[topic.id] = score;
        }
      }
      final last = prefs.get(_lastViewedKey);
      setState(() {
        _scores = scores;
        _lastViewed =
            last is String && _catalog.any((topic) => topic.id == last)
            ? last
            : null;
      });
    } catch (_) {
      // Local progress must never prevent access to a first aid guide.
    }
  }

  Future<void> _openTopic(TopicEntry topic) async {
    if (_opening) return;
    _opening = true;
    setState(() => _lastViewed = topic.id);
    FocusScope.of(context).unfocus();
    try {
      try {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString(_lastViewedKey, topic.id);
      } catch (_) {
        // The guide remains available when local persistence fails.
      }
      if (!mounted) return;
      await Navigator.of(
        context,
      ).push(MaterialPageRoute<void>(builder: topic.builder));
      if (mounted) await _refreshProgress();
    } finally {
      _opening = false;
    }
  }

  String _normalize(String value) => value
      .toLowerCase()
      .replaceAll(RegExp(r'[\u064B-\u065F\u0670]'), '')
      .replaceAll(RegExp('[أإآ]'), 'ا')
      .replaceAll('ى', 'ي')
      .trim();

  void _filterChanged() {
    setState(() {});
    if (_scroll.hasClients) _scroll.jumpTo(0);
  }

  void _reset() {
    _search.clear();
    _category = null;
    _filterChanged();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final base = Theme.of(context);
    final theme = base.copyWith(
      colorScheme: ColorScheme.fromSeed(
        seedColor: QuizColors.primary,
        brightness: Brightness.light,
      ),
      textTheme: base.textTheme.apply(
        fontFamily: 'PlusJakartaSans',
        bodyColor: QuizColors.ink,
        displayColor: QuizColors.ink,
      ),
      scaffoldBackgroundColor: QuizColors.background,
    );
    final terms = _normalize(
      _search.text,
    ).split(RegExp(r'\s+')).where((term) => term.isNotEmpty);
    final filtered = _catalog.where((topic) {
      if (_category != null && topic.category != _category) return false;
      final haystack = _normalize(
        '${topic.title} ${topic.id.replaceAll('_', ' ')} ${_copy.category(topic.category)}',
      );
      return terms.every(haystack.contains);
    }).toList();
    final browsing = _category == null && terms.isEmpty;
    return Theme(
      data: theme,
      child: Scaffold(
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              _header(s.topics),
              Expanded(
                child: CustomScrollView(
                  key: const PageStorageKey('topic-browser-scroll'),
                  controller: _scroll,
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  slivers: [
                    SliverPadding(
                      padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
                      sliver: SliverList.list(
                        children: [
                          Center(
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 980),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  if (browsing) ...[
                                    _continueCard(),
                                    const SizedBox(height: 20),
                                  ],
                                  _filters(),
                                  const SizedBox(height: 22),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          browsing
                                              ? _copy.text('browse')
                                              : _category == null
                                              ? _copy.text('all')
                                              : _copy.category(_category!),
                                          style: const TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      QuizPill(
                                        label: _copy.count(filtered.length),
                                        background: QuizColors.surface,
                                        color: QuizColors.muted,
                                      ),
                                    ],
                                  ),
                                  if (browsing) ...[
                                    const SizedBox(height: 5),
                                    Text(
                                      _copy.text('available'),
                                      style: const TextStyle(
                                        color: QuizColors.muted,
                                        fontSize: 12,
                                        height: 1.6,
                                      ),
                                    ),
                                  ],
                                  const SizedBox(height: 18),
                                  if (filtered.isEmpty)
                                    _empty()
                                  else
                                    for (final category in TopicCategory.values)
                                      if (filtered.any(
                                        (topic) => topic.category == category,
                                      ))
                                        _section(
                                          category,
                                          filtered
                                              .where(
                                                (topic) =>
                                                    topic.category == category,
                                              )
                                              .toList(),
                                          showHeading: _category == null,
                                        ),
                                  if (browsing) _offlineNote(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _header(String title) => Center(
    child: ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 1020),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 18, 20, 14),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 44,
                  height: 44,
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Image.asset(
                    tHelpingPersonimg,
                    excludeFromSemantics: true,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 23,
                          height: 1.25,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -.5,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        _copy.text('tagline'),
                        style: const TextStyle(
                          fontSize: 11,
                          height: 1.5,
                          color: QuizColors.muted,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            TextField(
              key: const ValueKey('topic-search'),
              controller: _search,
              onChanged: (_) => _filterChanged(),
              textInputAction: TextInputAction.search,
              onSubmitted: (_) => FocusScope.of(context).unfocus(),
              style: const TextStyle(fontSize: 14),
              decoration: InputDecoration(
                hintText: _copy.text('search'),
                hintStyle: const TextStyle(
                  fontSize: 13,
                  color: QuizColors.muted,
                ),
                prefixIcon: const Icon(
                  Icons.search_rounded,
                  color: QuizColors.muted,
                  size: 22,
                ),
                suffixIcon: _search.text.isEmpty
                    ? null
                    : IconButton(
                        tooltip: _copy.text('clearSearch'),
                        onPressed: () {
                          _search.clear();
                          _filterChanged();
                        },
                        icon: const Icon(Icons.close_rounded, size: 18),
                      ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: const BorderSide(color: QuizColors.border),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: const BorderSide(
                    color: QuizColors.primary,
                    width: 1.3,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget _continueCard() {
    final topic = _catalog.firstWhere(
      (topic) => topic.id == _lastViewed,
      orElse: () => _catalog.firstWhere(
        (topic) => topic.id == 'universal_first_aid_algorithm',
      ),
    );
    final practiced = _scores.length;
    final total = _catalog.where((topic) => topic.questionCount > 0).length;
    return QuizCard(
      padding: EdgeInsets.zero,
      child: InkWell(
        key: const ValueKey('continue-learning'),
        onTap: () => _openTopic(topic),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      _copy.text(_lastViewed == null ? 'start' : 'continue'),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  SizedBox(
                    width: 34,
                    height: 34,
                    child: CircularProgressIndicator(
                      value: total == 0 ? 0 : practiced / total,
                      strokeWidth: 4,
                      strokeCap: StrokeCap.round,
                      color: QuizColors.primary,
                      backgroundColor: QuizColors.border,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 42,
                    height: 42,
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: QuizColors.surface,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(topic.image, excludeFromSemantics: true),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          topic.title,
                          style: const TextStyle(
                            fontSize: 13,
                            height: 1.5,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          _copy.progress(practiced, total),
                          style: const TextStyle(
                            fontSize: 10,
                            height: 1.5,
                            color: QuizColors.muted,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Icon(
                    Directionality.of(context) == TextDirection.rtl
                        ? Icons.arrow_back_rounded
                        : Icons.arrow_forward_rounded,
                    color: QuizColors.primary,
                    size: 21,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _filters() => SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        _chip(null, _copy.text('all')),
        for (final category in TopicCategory.values)
          _chip(category, _copy.category(category)),
      ],
    ),
  );

  Widget _chip(TopicCategory? category, String label) {
    final selected = _category == category;
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 8),
      child: ChoiceChip(
        key: ValueKey('filter-${category?.name ?? 'all'}'),
        label: Text(label),
        selected: selected,
        showCheckmark: false,
        onSelected: (_) {
          _category = category;
          _filterChanged();
        },
        backgroundColor: Colors.white,
        selectedColor: QuizColors.primary,
        side: BorderSide(
          color: selected
              ? QuizColors.primary
              : QuizColors.border.withValues(alpha: .6),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 8),
        labelStyle: TextStyle(
          color: selected ? Colors.white : QuizColors.muted,
          fontSize: 11,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget _section(
    TopicCategory category,
    List<TopicEntry> topics, {
    required bool showHeading,
  }) => Padding(
    padding: const EdgeInsets.only(bottom: 24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showHeading) ...[
          Row(
            children: [
              Container(
                width: 7,
                height: 7,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: category == TopicCategory.emergencies
                      ? QuizColors.primary
                      : QuizColors.muted,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  _copy.category(category),
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Text(
                '${topics.length}',
                style: const TextStyle(
                  fontSize: 11,
                  color: QuizColors.muted,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            _copy.text('${category.name}Body'),
            style: const TextStyle(
              fontSize: 11,
              color: QuizColors.muted,
              height: 1.6,
            ),
          ),
          const SizedBox(height: 12),
        ],
        LayoutBuilder(
          builder: (context, constraints) {
            final columns = constraints.maxWidth >= 680 ? 2 : 1;
            final width = (constraints.maxWidth - (columns - 1) * 12) / columns;
            return Wrap(
              spacing: 12,
              runSpacing: 10,
              children: [
                for (final topic in topics)
                  SizedBox(width: width, child: _topicCard(topic)),
              ],
            );
          },
        ),
      ],
    ),
  );

  Widget _topicCard(TopicEntry topic) {
    final score = _scores[topic.id];
    return QuizCard(
      padding: EdgeInsets.zero,
      child: InkWell(
        key: ValueKey('topic-card-${topic.id}'),
        onTap: () => _openTopic(topic),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                      topic.image,
                      fit: BoxFit.contain,
                      excludeFromSemantics: true,
                    ),
                  ),
                  const SizedBox(width: 13),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          topic.title,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                            height: 1.45,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          topic.questionCount > 0
                              ? _copy.questions(topic.questionCount)
                              : _copy.text('guide'),
                          style: const TextStyle(
                            fontSize: 11,
                            height: 1.5,
                            color: QuizColors.muted,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Icon(
                    Directionality.of(context) == TextDirection.rtl
                        ? Icons.chevron_left_rounded
                        : Icons.chevron_right_rounded,
                    color: QuizColors.muted,
                    size: 22,
                  ),
                ],
              ),
              if (score != null) ...[
                const SizedBox(height: 12),
                QuizPill(
                  label:
                      '${_copy.text('lastScore')}: $score / ${topic.questionCount}',
                  icon: Icons.check_circle_outline_rounded,
                  color: QuizColors.green,
                  background: QuizColors.greenLight,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _empty() => Padding(
    key: const ValueKey('topics-empty'),
    padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 12),
    child: Column(
      children: [
        Image.asset(
          tServiceToOhersimg,
          width: 64,
          height: 64,
          excludeFromSemantics: true,
        ),
        const SizedBox(height: 18),
        Text(
          _copy.text('noResults'),
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
        ),
        const SizedBox(height: 8),
        Text(
          _copy.text('tryAgain'),
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: QuizColors.muted,
            fontSize: 13,
            height: 1.6,
          ),
        ),
        const SizedBox(height: 14),
        TextButton(onPressed: _reset, child: Text(_copy.text('reset'))),
      ],
    ),
  );

  Widget _offlineNote() => Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: QuizColors.surface,
      borderRadius: BorderRadius.circular(14),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          tInfoimg,
          width: 25,
          height: 25,
          excludeFromSemantics: true,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _copy.text('offline'),
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                _copy.text('offlineBody'),
                style: const TextStyle(
                  fontSize: 11,
                  color: QuizColors.muted,
                  height: 1.6,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
