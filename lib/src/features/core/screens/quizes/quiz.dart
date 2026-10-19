import 'dart:async';

import 'package:first_aid_app/src/features/core/models/question_model.dart';
import 'package:first_aid_app/src/features/core/models/quiz_progress.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'quiz_strings.dart';
import 'quiz_widgets.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({
    required this.topicTitle,
    required this.questions,
    super.key,
  });
  final String topicTitle;
  final List<Question> questions;
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> with WidgetsBindingObserver {
  final _clock = Stopwatch();
  final _scroll = ScrollController();
  final _answers = <int>[];
  final _marked = <int>{};
  Timer? _ticker;
  int _current = 0;
  int? _selected;
  bool _revealed = false;
  bool _complete = false;
  bool _paused = false;
  bool _leaving = false;
  bool _saving = false;
  bool _saveFailed = false;

  int get _score => _answers
      .asMap()
      .entries
      .where((entry) => widget.questions[entry.key].correctIndex == entry.value)
      .length;
  QuizStrings get _copy => QuizStrings(context);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    if (widget.questions.isNotEmpty) _clock.start();
    _ticker = Timer.periodic(const Duration(seconds: 1), (_) {
      if (mounted && _clock.isRunning) setState(() {});
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      if (!_paused && !_complete && widget.questions.isNotEmpty) _clock.start();
    } else {
      _clock.stop();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _ticker?.cancel();
    _clock.stop();
    _scroll.dispose();
    super.dispose();
  }

  String _time(Duration duration) =>
      '${duration.inMinutes.toString().padLeft(2, '0')}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';

  void _toTop() {
    if (_scroll.hasClients) _scroll.jumpTo(0);
  }

  Future<void> _proceed() async {
    if (_selected == null || _saving) return;
    if (!_revealed) {
      setState(() {
        _answers.add(_selected!);
        _revealed = true;
      });
      return;
    }
    if (_current < widget.questions.length - 1) {
      setState(() {
        _current++;
        _selected = null;
        _revealed = false;
      });
      _toTop();
      return;
    }
    _clock.stop();
    setState(() {
      _complete = true;
      _saving = true;
    });
    _toTop();
    try {
      final prefs = await SharedPreferences.getInstance();
      final topicId = widget.questions.first.topicId;
      final saved = await prefs.setInt(
        topicId == null ? '${widget.topicTitle}_score' : quizScoreKey(topicId),
        _score,
      );
      if (!saved && mounted) setState(() => _saveFailed = true);
    } catch (_) {
      if (mounted) setState(() => _saveFailed = true);
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  void _restart() {
    setState(() {
      _current = 0;
      _selected = null;
      _answers.clear();
      _marked.clear();
      _revealed = false;
      _complete = false;
      _saveFailed = false;
      _clock.reset();
      _clock.start();
    });
    _toTop();
  }

  Future<void> _pause() async {
    _clock.stop();
    setState(() => _paused = true);
    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) => AlertDialog(
        icon: const Icon(
          Icons.pause_circle_outline_rounded,
          color: QuizColors.primary,
          size: 40,
        ),
        title: Text(_copy.text('paused')),
        content: Text(_copy.text('pauseBody')),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text(_copy.text('resume')),
          ),
        ],
      ),
    );
    if (!mounted) return;
    setState(() => _paused = false);
    if (!_complete) _clock.start();
  }

  Future<void> _exit() async {
    if (_leaving || _saving) return;
    if (!_complete && widget.questions.isNotEmpty) {
      _clock.stop();
      _paused = true;
      final leave = await showDialog<bool>(
        context: context,
        builder: (dialogContext) => AlertDialog(
          title: Text(_copy.text('exit')),
          content: Text(_copy.text('exitBody')),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext, false),
              child: Text(_copy.text('stay')),
            ),
            TextButton(
              onPressed: () => Navigator.pop(dialogContext, true),
              child: Text(_copy.text('leave')),
            ),
          ],
        ),
      );
      if (!mounted) return;
      _paused = false;
      if (leave != true) {
        _clock.start();
        return;
      }
    }
    if (!mounted) return;
    setState(() => _leaving = true);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) Navigator.of(context).pop();
    });
  }

  @override
  Widget build(BuildContext context) {
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
      dividerColor: QuizColors.border,
    );
    return Theme(
      data: theme,
      child: PopScope(
        canPop: _leaving,
        onPopInvokedWithResult: (didPop, _) {
          if (!didPop) _exit();
        },
        child: Scaffold(
          body: SafeArea(
            bottom: false,
            child: Column(
              children: [
                _header(),
                Expanded(
                  child: SingleChildScrollView(
                    controller: _scroll,
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 24),
                    child: Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 640),
                        child: widget.questions.isEmpty
                            ? _empty()
                            : _complete
                            ? _results()
                            : _question(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: _footer(),
        ),
      ),
    );
  }

  Widget _header() => Container(
    padding: const EdgeInsets.fromLTRB(8, 8, 12, 12),
    decoration: BoxDecoration(
      color: QuizColors.background,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: .025),
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ],
    ),
    child: Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 664),
        child: Row(
          children: [
            IconButton(
              tooltip: _copy.text('leave'),
              onPressed: _saving ? null : _exit,
              icon: const Icon(Icons.close_rounded, size: 23),
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  QuizPill(
                    label: widget.topicTitle,
                    icon: Icons.circle,
                    background: QuizColors.primaryLight.withValues(alpha: .65),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    _copy.text(_complete ? 'results' : 'active'),
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
            if (!_complete && widget.questions.isNotEmpty) ...[
              IconButton(
                tooltip: _copy.text('pause'),
                onPressed: _paused ? null : _pause,
                icon: const Icon(
                  Icons.pause_circle_outline_rounded,
                  color: QuizColors.muted,
                ),
              ),
              IconButton(
                tooltip: _copy.text(
                  _marked.contains(_current) ? 'unmark' : 'mark',
                ),
                onPressed: () => setState(() {
                  if (!_marked.add(_current)) _marked.remove(_current);
                }),
                icon: Icon(
                  _marked.contains(_current)
                      ? Icons.bookmark_rounded
                      : Icons.bookmark_border_rounded,
                  color: _marked.contains(_current)
                      ? QuizColors.primary
                      : QuizColors.muted,
                ),
              ),
            ] else
              const Padding(
                padding: EdgeInsets.all(12),
                child: Icon(Icons.school_outlined, color: QuizColors.primary),
              ),
          ],
        ),
      ),
    ),
  );

  Widget _question() {
    final question = widget.questions[_current];
    final correct = _selected == question.correctIndex;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Row(
          children: List.generate(
            widget.questions.length,
            (index) => Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                  end: index == widget.questions.length - 1 ? 0 : 5,
                ),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  height: index == _current ? 7 : 5,
                  decoration: BoxDecoration(
                    color: index < _current
                        ? QuizColors.green
                        : index == _current
                        ? QuizColors.primary
                        : QuizColors.border,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 14),
        Row(
          children: [
            Expanded(
              child: Text(
                _copy.count(_current + 1, widget.questions.length),
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            QuizPill(label: _time(_clock.elapsed), icon: Icons.timer_outlined),
          ],
        ),
        const SizedBox(height: 14),
        QuizPill(
          label: _copy.text('practice'),
          icon: Icons.medical_services_outlined,
          background: QuizColors.surface,
          color: QuizColors.muted,
        ),
        const SizedBox(height: 10),
        Text(
          _copy.text('educationalNotice'),
          style: const TextStyle(
            fontSize: 11,
            height: 1.5,
            color: QuizColors.muted,
          ),
        ),
        const SizedBox(height: 16),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 220),
          child: QuizCard(
            key: ValueKey(_current),
            padding: EdgeInsets.zero,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 4,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [QuizColors.primary, Color(0xFFDB322F)],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      QuizPill(
                        label: '${_copy.text('question')} ${_current + 1}',
                        icon: Icons.circle,
                      ),
                      const SizedBox(height: 14),
                      Text(
                        question.question,
                        style: const TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w800,
                          height: 1.5,
                          letterSpacing: -.35,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: QuizColors.surface,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(9),
                              decoration: BoxDecoration(
                                color: QuizColors.primaryLight,
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: const Icon(
                                Icons.touch_app_outlined,
                                color: QuizColors.primary,
                                size: 22,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    _copy.text('choose'),
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  const SizedBox(height: 3),
                                  Text(
                                    _copy.text('help'),
                                    style: const TextStyle(
                                      fontSize: 11,
                                      color: QuizColors.muted,
                                      height: 1.5,
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
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        for (var index = 0; index < question.options.length; index++) ...[
          QuizOption(
            key: ValueKey('answer-$_current-$index'),
            index: index,
            answer: question.options[index],
            selected: _selected == index,
            revealed: _revealed,
            correct: question.correctIndex == index,
            selectedLabel: _copy.text('selected'),
            onTap: () => setState(() => _selected = index),
          ),
          const SizedBox(height: 10),
        ],
        if (_revealed)
          Semantics(
            liveRegion: true,
            child: Container(
              key: const ValueKey('answer-feedback'),
              margin: const EdgeInsets.only(top: 6),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: correct
                    ? QuizColors.greenLight
                    : QuizColors.primaryLight.withValues(alpha: .4),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    correct
                        ? Icons.check_circle_outline_rounded
                        : Icons.lightbulb_outline_rounded,
                    color: correct ? QuizColors.green : QuizColors.primary,
                    size: 22,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _copy.text(correct ? 'correct' : 'incorrect'),
                          style: const TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          '${_copy.text('answer')}: ${question.options[question.correctIndex]}',
                          style: const TextStyle(
                            fontSize: 13,
                            height: 1.6,
                            color: QuizColors.muted,
                          ),
                        ),
                        if (question.explanation?.isNotEmpty ?? false) ...[
                          const SizedBox(height: 12),
                          _explanation(question.explanation!),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }

  Widget _results() {
    final total = widget.questions.length;
    final accuracy = _score / total;
    final missed = total - _score;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 6),
        QuizCard(
          child: Column(
            children: [
              QuizPill(
                label: _copy.text('complete'),
                icon: Icons.task_alt_rounded,
                background: QuizColors.greenLight,
                color: QuizColors.green,
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: 160,
                height: 160,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned.fill(
                      child: TweenAnimationBuilder<double>(
                        tween: Tween(begin: 0, end: accuracy),
                        duration: const Duration(milliseconds: 700),
                        builder: (_, value, _) => CircularProgressIndicator(
                          value: value,
                          strokeWidth: 10,
                          strokeCap: StrokeCap.round,
                          backgroundColor: QuizColors.border,
                          color: QuizColors.green,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: '$_score',
                                    style: const TextStyle(
                                      fontSize: 39,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' / $total',
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: QuizColors.muted,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              '${(accuracy * 100).round()}% ${_copy.text('accuracy')}',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w800,
                                color: QuizColors.green,
                                letterSpacing: .6,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 23),
              Text(
                _copy.text(accuracy >= .8 ? 'excellent' : 'keepGoing'),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 9),
              Text(
                _copy.text('summary'),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 13,
                  height: 1.6,
                  color: QuizColors.muted,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: QuizColors.surface,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: QuizMetric(
                        label: _copy.text('time'),
                        value: _time(_clock.elapsed),
                        icon: Icons.timer_outlined,
                      ),
                    ),
                    Expanded(
                      child: QuizMetric(
                        label: _copy.text('average'),
                        value: _time(
                          Duration(
                            seconds: (_clock.elapsed.inSeconds / total).round(),
                          ),
                        ),
                        icon: Icons.bolt_rounded,
                        highlight: true,
                      ),
                    ),
                    Expanded(
                      child: QuizMetric(
                        label: _copy.text('correctMetric'),
                        value: '$_score / $total',
                        icon: Icons.check_circle_outline_rounded,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 18),
        QuizCard(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: QuizColors.greenLight,
                child: Icon(
                  missed == 0
                      ? Icons.check_rounded
                      : Icons.lightbulb_outline_rounded,
                  color: QuizColors.green,
                  size: 21,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _copy.text(missed == 0 ? 'perfectTitle' : 'reviewTitle'),
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      _copy.text(missed == 0 ? 'perfectBody' : 'reviewBody'),
                      style: const TextStyle(
                        fontSize: 12,
                        color: QuizColors.muted,
                        height: 1.6,
                      ),
                    ),
                    if (missed > 0) ...[
                      const SizedBox(height: 10),
                      QuizPill(
                        label: '$missed / $total',
                        icon: Icons.priority_high_rounded,
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 22),
        Wrap(
          alignment: WrapAlignment.spaceBetween,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 10,
          runSpacing: 10,
          children: [
            Text(
              '${_copy.text('breakdown')} ($total)',
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
            ),
            QuizPill(
              label: '$_score / $total',
              icon: Icons.check_circle_outline_rounded,
              background: QuizColors.greenLight,
              color: QuizColors.green,
            ),
          ],
        ),
        const SizedBox(height: 12),
        for (var index = 0; index < total; index++) ...[
          _review(index),
          const SizedBox(height: 10),
        ],
        const SizedBox(height: 8),
        QuizCard(
          child: Row(
            children: [
              const Icon(
                Icons.menu_book_rounded,
                color: QuizColors.primary,
                size: 32,
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _copy.text('guideTitle'),
                      style: const TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      _copy.text('guideBody'),
                      style: const TextStyle(
                        color: QuizColors.muted,
                        fontSize: 12,
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 14),
        QuizAction(
          label: _copy.text('retake'),
          icon: Icons.replay_rounded,
          secondary: true,
          onPressed: _saving ? null : _restart,
        ),
        if (_saveFailed)
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(
              _copy.text('saveError'),
              style: const TextStyle(color: QuizColors.primary, fontSize: 12),
            ),
          ),
      ],
    );
  }

  Widget _review(int index) {
    final question = widget.questions[index];
    final correct = _answers[index] == question.correctIndex;
    final marked = _marked.contains(index);
    return QuizCard(
      padding: EdgeInsets.zero,
      child: Builder(
        builder: (context) => Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            key: ValueKey('review-$index'),
            initiallyExpanded: !correct || marked,
            tilePadding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 4,
            ),
            childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            leading: CircleAvatar(
              radius: 15,
              backgroundColor: correct
                  ? QuizColors.greenLight
                  : QuizColors.primaryLight,
              child: Icon(
                correct ? Icons.check_rounded : Icons.close_rounded,
                size: 18,
                color: correct ? QuizColors.green : QuizColors.primary,
              ),
            ),
            title: Text(
              '${index + 1}. ${question.question}',
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 13,
                height: 1.55,
              ),
            ),
            subtitle: !correct || marked
                ? Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                      _copy.text(!correct ? 'needsReview' : 'marked'),
                      style: const TextStyle(
                        fontSize: 9,
                        color: QuizColors.primary,
                        fontWeight: FontWeight.w800,
                        letterSpacing: .5,
                      ),
                    ),
                  )
                : null,
            children: [
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (!correct) ...[
                      Text(
                        '${_copy.text('yourAnswer')}: ${question.options[_answers[index]]}',
                        style: const TextStyle(
                          fontSize: 12,
                          height: 1.6,
                          color: QuizColors.muted,
                        ),
                      ),
                      const SizedBox(height: 8),
                    ],
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: QuizColors.greenLight,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        '${_copy.text('answer')}: ${question.options[question.correctIndex]}',
                        style: const TextStyle(
                          fontSize: 12,
                          height: 1.6,
                          fontWeight: FontWeight.w600,
                          color: QuizColors.green,
                        ),
                      ),
                    ),
                    if (question.explanation?.isNotEmpty ?? false) ...[
                      const SizedBox(height: 12),
                      _explanation(question.explanation!),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _explanation(String explanation) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        _copy.text('explanation'),
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
      ),
      const SizedBox(height: 4),
      Text(
        explanation,
        style: const TextStyle(
          fontSize: 13,
          height: 1.6,
          color: QuizColors.muted,
        ),
      ),
    ],
  );

  Widget _empty() => Padding(
    padding: const EdgeInsets.symmetric(vertical: 70),
    child: Column(
      children: [
        const Icon(Icons.quiz_outlined, size: 56, color: QuizColors.primary),
        const SizedBox(height: 18),
        Text(
          _copy.text('empty'),
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
        ),
        const SizedBox(height: 10),
        Text(
          _copy.text('emptyBody'),
          textAlign: TextAlign.center,
          style: const TextStyle(color: QuizColors.muted, height: 1.6),
        ),
      ],
    ),
  );

  Widget _footer() => Container(
    decoration: BoxDecoration(
      color: QuizColors.background,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: .04),
          blurRadius: 20,
          offset: const Offset(0, -4),
        ),
      ],
    ),
    child: SafeArea(
      top: false,
      minimum: const EdgeInsets.fromLTRB(20, 12, 20, 12),
      child: Center(
        heightFactor: 1,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 640),
          child: QuizAction(
            key: const ValueKey('quiz-primary-action'),
            label: _copy.text(
              _complete || widget.questions.isEmpty
                  ? 'guide'
                  : !_revealed
                  ? 'confirm'
                  : _current == widget.questions.length - 1
                  ? 'finish'
                  : 'next',
            ),
            icon: _complete || widget.questions.isEmpty
                ? Icons.menu_book_outlined
                : Icons.arrow_forward_rounded,
            onPressed: _complete || widget.questions.isEmpty
                ? (_saving ? null : _exit)
                : _selected == null || _paused
                ? null
                : _proceed,
          ),
        ),
      ),
    ),
  );
}
