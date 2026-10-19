import 'package:flutter/material.dart';
import '../quizes/quiz_widgets.dart';

ThemeData homeTheme(BuildContext context) {
  final base = Theme.of(context);
  return base.copyWith(
    colorScheme: ColorScheme.fromSeed(
      seedColor: QuizColors.primary,
      brightness: Brightness.light,
    ).copyWith(primary: QuizColors.primary),
    scaffoldBackgroundColor: QuizColors.background,
    textTheme: base.textTheme.apply(
      fontFamily: 'PlusJakartaSans',
      bodyColor: QuizColors.ink,
      displayColor: QuizColors.ink,
    ),
  );
}
