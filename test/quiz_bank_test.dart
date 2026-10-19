import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/features/core/models/auto_quiz_data.dart';
import 'package:first_aid_app/src/features/core/models/quiz_progress.dart';
import 'package:first_aid_app/src/features/core/screens/topics/topic_catalog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'quiz_screen_test.dart' as harness;

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test(
    'all 230 questions have four distinct choices and translated explanations',
    () async {
      final english = generateLocalizedQuizData(
        await S.load(const Locale('en')),
      );
      expect(english.length, 23);
      expect(english['CPR']!.map((q) => q.correctIndex), [
        0,
        1,
        2,
        3,
        1,
        2,
        0,
        1,
        2,
        3,
      ]);
      for (final locale in ['en', 'ar', 'ru']) {
        final s = await S.load(Locale(locale));
        final bank = generateLocalizedQuizData(s);
        final catalog = buildTopicCatalog(s);
        expect(bank.values.expand((questions) => questions).length, 230);
        expect(bank.keys.toSet(), english.keys.toSet());
        expect(catalog.every((topic) => topic.questionCount == 10), isTrue);
        expect(
          bank.values.map((questions) => questions.first.topicId).toSet(),
          catalog.map((topic) => topic.id).toSet(),
        );
        for (final entry in bank.entries) {
          expect(entry.value.length, 10, reason: '$locale ${entry.key}');
          for (var i = 0; i < entry.value.length; i++) {
            final question = entry.value[i];
            expect(question.options.toSet().length, 4);
            expect(
              question.options.every((option) => option.trim().isNotEmpty),
              isTrue,
            );
            expect(question.question.trim(), isNotEmpty);
            expect(question.explanation?.trim(), isNotEmpty);
            expect(question.correctIndex, english[entry.key]![i].correctIndex);
            expect(question.topicId, english[entry.key]![i].topicId);
            if (locale != 'en') {
              expect(question.question, isNot(english[entry.key]![i].question));
              expect(
                question.explanation,
                isNot(english[entry.key]![i].explanation),
              );
            }
          }
        }
      }
    },
  );

  for (final locale in ['en', 'ar', 'ru']) {
    testWidgets(
      '$locale shows explanations after confirmation and saves a full ten-question result',
      (tester) async {
        final s = await S.load(Locale(locale));
        final questions = generateLocalizedQuizData(s)['CPR']!;
        await harness.openQuiz(
          tester,
          locale: Locale(locale),
          data: questions,
          scale: 1.6,
        );
        tester.view.devicePixelRatio = 1;
        tester.view.physicalSize = const Size(320, 640);
        addTearDown(tester.view.resetDevicePixelRatio);
        addTearDown(tester.view.resetPhysicalSize);
        await tester.pumpAndSettle();
        expect(find.text(questions.first.explanation!), findsNothing);
        for (var i = 0; i < questions.length; i++) {
          await harness.choose(
            tester,
            i,
            i == 9
                ? (questions[i].correctIndex + 1) % 4
                : questions[i].correctIndex,
          );
          await harness.proceed(tester);
          expect(
            find.descendant(
              of: find.byKey(const ValueKey('answer-feedback')),
              matching: find.text(questions[i].explanation!),
            ),
            findsOneWidget,
          );
          await harness.proceed(tester);
        }
        final prefs = await SharedPreferences.getInstance();
        expect(prefs.getInt(quizScoreKey('cpr')), 9);
        expect(prefs.get('CPR_score'), isNull);
        expect(
          find.descendant(
            of: find.byKey(const ValueKey('review-9')),
            matching: find.text(questions.last.explanation!),
          ),
          findsOneWidget,
        );
        expect(tester.takeException(), isNull);
        await tester.pumpWidget(const SizedBox());
      },
    );
  }
}
