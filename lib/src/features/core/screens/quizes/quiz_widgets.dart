import 'package:flutter/material.dart';

abstract final class QuizColors {
  static const background = Color(0xFFFBF9FA);
  static const primary = Color(0xFFB7131A);
  static const primaryLight = Color(0xFFFFDAD6);
  static const ink = Color(0xFF1B1C1D);
  static const muted = Color(0xFF545F73);
  static const surface = Color(0xFFF5F3F4);
  static const border = Color(0xFFE9E8E9);
  static const green = Color(0xFF186A22);
  static const greenLight = Color(0xFFEAF6E8);
}

class QuizCard extends StatelessWidget {
  const QuizCard({
    required this.child,
    this.padding = const EdgeInsets.all(18),
    super.key,
  });
  final Widget child;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) => Container(
    padding: padding,
    clipBehavior: Clip.antiAlias,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: .035),
          blurRadius: 18,
          offset: const Offset(0, 5),
        ),
      ],
    ),
    child: Material(type: MaterialType.transparency, child: child),
  );
}

class QuizPill extends StatelessWidget {
  const QuizPill({
    required this.label,
    this.icon,
    this.color = QuizColors.primary,
    this.background = QuizColors.primaryLight,
    super.key,
  });
  final String label;
  final IconData? icon;
  final Color color;
  final Color background;
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
    decoration: BoxDecoration(
      color: background,
      borderRadius: BorderRadius.circular(30),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (icon != null) ...[
          Icon(icon, size: 14, color: color),
          const SizedBox(width: 5),
        ],
        Flexible(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w800,
              letterSpacing: .6,
              color: color,
            ),
          ),
        ),
      ],
    ),
  );
}

class QuizAction extends StatelessWidget {
  const QuizAction({
    required this.label,
    required this.onPressed,
    this.icon = Icons.arrow_forward_rounded,
    this.secondary = false,
    super.key,
  });
  final String label;
  final VoidCallback? onPressed;
  final IconData icon;
  final bool secondary;
  @override
  Widget build(BuildContext context) => FilledButton(
    onPressed: onPressed,
    style: FilledButton.styleFrom(
      minimumSize: const Size(double.infinity, 52),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
      backgroundColor: secondary ? Colors.white : QuizColors.primary,
      foregroundColor: secondary ? QuizColors.ink : Colors.white,
      disabledBackgroundColor: QuizColors.border,
      disabledForegroundColor: QuizColors.muted,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: secondary
            ? const BorderSide(color: QuizColors.border)
            : BorderSide.none,
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
          ),
        ),
        const SizedBox(width: 9),
        Icon(icon, size: 20),
      ],
    ),
  );
}

class QuizOption extends StatelessWidget {
  const QuizOption({
    required this.index,
    required this.answer,
    required this.selected,
    required this.revealed,
    required this.correct,
    required this.selectedLabel,
    required this.onTap,
    super.key,
  });
  final int index;
  final String answer;
  final bool selected;
  final bool revealed;
  final bool correct;
  final String selectedLabel;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final highlighted = selected || (revealed && correct);
    final accent = revealed && correct ? QuizColors.green : QuizColors.primary;
    final fill = highlighted
        ? (revealed && correct
              ? QuizColors.greenLight
              : const Color(0xFFFFF0EE))
        : Colors.white;
    return Semantics(
      selected: selected,
      inMutuallyExclusiveGroup: true,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: fill,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: highlighted
                ? accent.withValues(alpha: .25)
                : QuizColors.border.withValues(alpha: .45),
          ),
          boxShadow: [
            BoxShadow(
              color: highlighted
                  ? accent.withValues(alpha: .06)
                  : Colors.black.withValues(alpha: .018),
              blurRadius: 12,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: revealed ? null : onTap,
            child: Stack(
              children: [
                if (highlighted)
                  PositionedDirectional(
                    start: 0,
                    top: 0,
                    bottom: 0,
                    child: Container(width: 4, color: accent),
                  ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: highlighted ? accent : QuizColors.surface,
                          shape: BoxShape.circle,
                        ),
                        child: highlighted
                            ? Icon(
                                revealed && !correct
                                    ? Icons.close_rounded
                                    : Icons.check_rounded,
                                size: 18,
                                color: Colors.white,
                              )
                            : Text(
                                String.fromCharCode(65 + index),
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                      ),
                      const SizedBox(width: 13),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (selected && !revealed) ...[
                              Text(
                                selectedLabel,
                                style: TextStyle(
                                  color: accent,
                                  fontSize: 9,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: .8,
                                ),
                              ),
                              const SizedBox(height: 4),
                            ],
                            Text(
                              answer,
                              style: TextStyle(
                                fontSize: 14,
                                height: 1.55,
                                fontWeight: highlighted
                                    ? FontWeight.w700
                                    : FontWeight.w400,
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
      ),
    );
  }
}

class QuizMetric extends StatelessWidget {
  const QuizMetric({
    required this.label,
    required this.value,
    required this.icon,
    this.highlight = false,
    super.key,
  });
  final String label;
  final String value;
  final IconData icon;
  final bool highlight;
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 12),
    decoration: BoxDecoration(
      color: highlight ? Colors.white : Colors.transparent,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: [
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: QuizColors.muted,
            fontSize: 8,
            fontWeight: FontWeight.w700,
            letterSpacing: .6,
          ),
        ),
        const SizedBox(height: 8),
        Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 4,
          children: [
            Icon(
              icon,
              size: 15,
              color: highlight ? QuizColors.green : QuizColors.muted,
            ),
            Text(
              value,
              style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ],
    ),
  );
}
