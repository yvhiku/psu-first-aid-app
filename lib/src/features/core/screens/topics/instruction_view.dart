import 'package:first_aid_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import '../home/home_theme.dart';
import '../quizes/quiz_widgets.dart';
import 'instruction_models.dart';

/// Offline guide UI, independent of authentication and persistence.
class InstructionView extends StatelessWidget {
  const InstructionView({
    super.key,
    required this.guide,
    required this.saved,
    required this.onSave,
    required this.onCall,
    this.onQuiz,
  });
  final InstructionGuide guide;
  final bool saved;
  final VoidCallback onSave;
  final VoidCallback onCall;
  final VoidCallback? onQuiz;

  @override
  Widget build(BuildContext context) => Theme(
    data: homeTheme(context),
    child: Builder(
      builder: (context) {
        final s = S.of(context);
        return Scaffold(
          backgroundColor: QuizColors.background,
          appBar: AppBar(
            backgroundColor: QuizColors.background,
            surfaceTintColor: Colors.transparent,
            foregroundColor: QuizColors.ink,
            toolbarHeight: 72,
            title: Text(
              guide.title,
              maxLines: 2,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            actions: [
              IconButton(
                tooltip: saved ? s.guideRemoveSaved : s.guideSave,
                onPressed: onSave,
                icon: Icon(
                  saved
                      ? Icons.bookmark_rounded
                      : Icons.bookmark_border_rounded,
                  color: QuizColors.primary,
                ),
              ),
              const SizedBox(width: 8),
            ],
          ),
          body: SingleChildScrollView(
            key: PageStorageKey('instructions-${guide.id}'),
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 28),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 720),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _Header(guide: guide),
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFEDEA),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Wrap(
                        alignment: WrapAlignment.spaceBetween,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 16,
                        runSpacing: 6,
                        children: [
                          Text(
                            s.guideEmergency,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                              color: QuizColors.primary,
                            ),
                          ),
                          TextButton.icon(
                            key: const Key('guide-call'),
                            onPressed: onCall,
                            style: TextButton.styleFrom(
                              foregroundColor: QuizColors.primary,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4,
                                vertical: 8,
                              ),
                            ),
                            icon: const Icon(
                              Icons.phone_in_talk_outlined,
                              size: 19,
                            ),
                            label: Text(
                              s.guideCall112,
                              style: const TextStyle(
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    ..._sections(context),
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: onQuiz == null
              ? null
              : Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(top: BorderSide(color: QuizColors.border)),
                  ),
                  child: SafeArea(
                    top: false,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
                      child: Center(
                        heightFactor: 1,
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 720),
                          child: SizedBox(
                            width: double.infinity,
                            child: FilledButton.icon(
                              key: const Key('guide-quiz'),
                              style: FilledButton.styleFrom(
                                backgroundColor: QuizColors.primary,
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 16,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              onPressed: onQuiz,
                              icon: const Icon(Icons.quiz_outlined, size: 20),
                              label: Text(
                                s.takeQuiz,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
        );
      },
    ),
  );

  List<Widget> _sections(BuildContext context) {
    final widgets = <Widget>[];
    var index = 0;
    var sawSteps = false;
    while (index < guide.blocks.length) {
      final block = guide.blocks[index];
      if (block.kind == GuideBlockKind.step) {
        sawSteps = true;
        final children = <GuideBlock>[];
        while (index + 1 < guide.blocks.length &&
            guide.blocks[index + 1].kind == GuideBlockKind.substep) {
          children.add(guide.blocks[++index]);
        }
        widgets.add(_StepCard(block: block, substeps: children));
        index++;
      } else if (block.kind == GuideBlockKind.heading) {
        final details = <GuideBlock>[];
        while (index + 1 < guide.blocks.length &&
            guide.blocks[index + 1].kind != GuideBlockKind.heading &&
            guide.blocks[index + 1].kind != GuideBlockKind.step) {
          details.add(guide.blocks[++index]);
        }
        if (details.isNotEmpty) {
          widgets.add(
            _InfoSection(
              title: block.body,
              details: details,
              warning: sawSteps,
            ),
          );
        } else {
          widgets.add(
            Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: Text(
                block.body,
                style: const TextStyle(
                  fontSize: 19,
                  height: 1.4,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          );
        }
        index++;
      } else {
        widgets.add(
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Text(block.body),
          ),
        );
        index++;
      }
    }
    return widgets;
  }
}

class _Header extends StatelessWidget {
  const _Header({required this.guide});
  final InstructionGuide guide;
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final number = MaterialLocalizations.of(
      context,
    ).formatDecimal(guide.stepCount);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 64,
              height: 64,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: QuizColors.border),
              ),
              child: Image.asset(guide.image, excludeFromSemantics: true),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    s.guideStepByStep,
                    style: const TextStyle(
                      color: QuizColors.primary,
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    guide.heading,
                    style: const TextStyle(
                      fontSize: 23,
                      height: 1.3,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            _Tag(
              icon: Icons.format_list_numbered_rounded,
              text: s.guideStepCount(number),
            ),
            _Tag(icon: Icons.offline_pin_outlined, text: s.guideOffline),
          ],
        ),
        if (guide.intro != null) ...[
          const SizedBox(height: 16),
          Text(
            guide.intro!,
            style: const TextStyle(
              fontSize: 15,
              height: 1.65,
              color: QuizColors.muted,
            ),
          ),
        ],
      ],
    );
  }
}

class _Tag extends StatelessWidget {
  const _Tag({required this.icon, required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
    decoration: BoxDecoration(
      color: QuizColors.surface,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 14, color: QuizColors.muted),
        const SizedBox(width: 6),
        Flexible(
          child: Text(
            text,
            style: const TextStyle(
              color: QuizColors.muted,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    ),
  );
}

class _StepCard extends StatelessWidget {
  const _StepCard({required this.block, required this.substeps});
  final GuideBlock block;
  final List<GuideBlock> substeps;
  @override
  Widget build(BuildContext context) => Container(
    key: ValueKey('guide-step-${block.number}'),
    margin: const EdgeInsets.only(bottom: 14),
    padding: const EdgeInsets.all(18),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: QuizColors.border),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints: const BoxConstraints(minWidth: 32, minHeight: 32),
              alignment: Alignment.center,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: QuizColors.primary,
                borderRadius: BorderRadius.circular(11),
              ),
              child: Text(
                MaterialLocalizations.of(
                  context,
                ).formatDecimal(int.parse(block.number!)),
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Text(
                  block.title ?? block.body,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.55,
                    fontWeight: block.title == null
                        ? FontWeight.w600
                        : FontWeight.w800,
                  ),
                ),
              ),
            ),
          ],
        ),
        if (block.title != null) ...[
          const SizedBox(height: 12),
          Text(
            block.body,
            style: const TextStyle(
              fontSize: 15,
              height: 1.65,
              color: QuizColors.muted,
            ),
          ),
        ],
        for (final substep in substeps)
          Padding(
            padding: const EdgeInsets.only(top: 14),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 7,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: QuizColors.surface,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    substep.number!,
                    textDirection: TextDirection.ltr,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                      color: QuizColors.primary,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    substep.body,
                    style: const TextStyle(
                      fontSize: 15,
                      height: 1.6,
                      color: QuizColors.muted,
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    ),
  );
}

class _InfoSection extends StatelessWidget {
  const _InfoSection({
    required this.title,
    required this.details,
    required this.warning,
  });
  final String title;
  final List<GuideBlock> details;
  final bool warning;
  @override
  Widget build(BuildContext context) => Container(
    margin: const EdgeInsets.only(bottom: 24),
    padding: const EdgeInsets.all(18),
    decoration: BoxDecoration(
      color: warning ? const Color(0xFFFFF4DF) : QuizColors.surface,
      borderRadius: BorderRadius.circular(18),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              warning
                  ? Icons.warning_amber_rounded
                  : Icons.info_outline_rounded,
              size: 21,
              color: warning ? const Color(0xFF805516) : QuizColors.muted,
            ),
            const SizedBox(width: 9),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.4,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
        for (final detail in details)
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (detail.kind == GuideBlockKind.bullet) ...[
                  const Padding(
                    padding: EdgeInsets.only(top: 7),
                    child: Icon(Icons.circle, size: 5, color: QuizColors.muted),
                  ),
                  const SizedBox(width: 9),
                ],
                Expanded(
                  child: Text(
                    detail.body.replaceFirst(RegExp(r'^[-•]\s*'), ''),
                    style: const TextStyle(
                      fontSize: 14,
                      height: 1.65,
                      color: QuizColors.ink,
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    ),
  );
}
