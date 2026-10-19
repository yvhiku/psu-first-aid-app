import 'package:first_aid_app/src/features/core/models/question_model.dart';
import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/features/core/screens/quizes/quiz.dart';
import 'package:first_aid_app/src/features/core/screens/quizes/quiz_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

final questions = [
  Question(
    question: 'First practice question?',
    options: ['First choice', 'Second choice', 'Third choice', 'Fourth choice'],
    correctIndex: 1,
  ),
  Question(
    question: 'Second practice question?',
    options: ['Another first choice', 'Another second choice'],
    correctIndex: 0,
  ),
];

Future<void> openQuiz(
  WidgetTester tester, {
  List<Question>? data,
  Locale locale = const Locale('en'),
  double scale = 1,
  ThemeData? theme,
}) async {
  SharedPreferences.setMockInitialValues({});
  await tester.pumpWidget(
    MaterialApp(
      theme: theme,
      locale: locale,
      supportedLocales: const [Locale('en'), Locale('ar'), Locale('ru')],
      localizationsDelegates: const [
        S.delegate,
        ...GlobalMaterialLocalizations.delegates,
      ],
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(
          context,
        ).copyWith(textScaler: TextScaler.linear(scale)),
        child: child!,
      ),
      home: QuizScreen(topicTitle: 'CPR', questions: data ?? questions),
    ),
  );
  await tester.pumpAndSettle();
}

Future<void> choose(WidgetTester tester, int question, int option) async {
  final finder = find.byKey(ValueKey('answer-$question-$option'));
  await tester.ensureVisible(finder);
  await tester.tap(finder);
  await tester.pumpAndSettle();
}

Future<void> proceed(WidgetTester tester) async {
  await tester.tap(
    find.descendant(
      of: find.byKey(const ValueKey('quiz-primary-action')),
      matching: find.byType(FilledButton),
    ),
  );
  await tester.pumpAndSettle();
}

void main() {
  testWidgets(
    'confirmation locks an answer, computes the real score, saves it and supports a retake',
    (tester) async {
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = const Size(390, 844);
      addTearDown(tester.view.resetDevicePixelRatio);
      addTearDown(() => tester.view.resetPhysicalSize());
      await openQuiz(tester);
      final primary = find.descendant(
        of: find.byKey(const ValueKey('quiz-primary-action')),
        matching: find.byType(FilledButton),
      );
      expect(tester.widget<FilledButton>(primary).onPressed, isNull);
      await choose(tester, 0, 1);
      expect(find.text('SELECTED CHOICE'), findsOneWidget);
      await proceed(tester);
      expect(find.text('Question 1 of 2'), findsOneWidget);
      final locked = tester.widget<QuizOption>(
        find.byKey(const ValueKey('answer-0-1')),
      );
      expect(locked.revealed, isTrue);
      await choose(tester, 0, 0);
      expect(
        tester
            .widget<QuizOption>(find.byKey(const ValueKey('answer-0-1')))
            .selected,
        isTrue,
      );
      await proceed(tester);
      await choose(tester, 1, 1);
      await proceed(tester);
      await proceed(tester);
      expect(find.text('Your quiz results'), findsOneWidget);
      expect(find.text('50% ACCURACY'), findsOneWidget);
      final prefs = await SharedPreferences.getInstance();
      expect(prefs.getInt('CPR_score'), 1);
      await tester.ensureVisible(find.text('NEEDS REVIEW'));
      expect(find.text('NEEDS REVIEW'), findsOneWidget);
      await tester.ensureVisible(find.text('Retake quiz'));
      await tester.tap(find.text('Retake quiz'));
      await tester.pumpAndSettle();
      expect(find.text('Question 1 of 2'), findsOneWidget);
      expect(tester.widget<FilledButton>(primary).onPressed, isNull);
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox());
    },
  );

  testWidgets(
    'pause, resume and review marks work without revealing the answer',
    (tester) async {
      await openQuiz(tester);
      await tester.tap(find.byTooltip('Mark for review'));
      await tester.pumpAndSettle();
      expect(find.byTooltip('Unmark question'), findsOneWidget);
      await tester.tap(find.byTooltip('Pause quiz'));
      await tester.pumpAndSettle();
      expect(find.text('Take a moment'), findsOneWidget);
      await tester.tap(find.text('Resume quiz'));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('answer-feedback')), findsNothing);
      await tester.tap(find.byTooltip('Leave quiz'));
      await tester.pumpAndSettle();
      expect(find.text('Leave this quiz?'), findsOneWidget);
      await tester.tap(find.text('Keep practicing'));
      await tester.pumpAndSettle();
      expect(find.text('Question 1 of 2'), findsOneWidget);
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox());
    },
  );

  testWidgets('empty quizzes do not crash or expose a confirm action', (
    tester,
  ) async {
    await openQuiz(tester, data: []);
    expect(find.text('No questions available'), findsOneWidget);
    expect(find.text('Confirm answer'), findsNothing);
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('Arabic RTL and large text fit a narrow phone through results', (
    tester,
  ) async {
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(320, 640);
    addTearDown(tester.view.resetDevicePixelRatio);
    addTearDown(() => tester.view.resetPhysicalSize());
    await openQuiz(
      tester,
      locale: const Locale('ar'),
      scale: 1.6,
      data: [questions.first],
    );
    expect(find.text('السؤال 1 من 1'), findsOneWidget);
    expect(
      Directionality.of(tester.element(find.byType(QuizScreen))),
      TextDirection.rtl,
    );
    await choose(tester, 0, 1);
    await proceed(tester);
    await proceed(tester);
    expect(find.text('نتائج اختبارك'), findsOneWidget);
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox());
  });
}
