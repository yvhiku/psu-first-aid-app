import 'dart:io';

import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/features/core/models/auto_quiz_data.dart';
import 'package:first_aid_app/src/features/core/screens/topics/instruction_data.dart';
import 'package:first_aid_app/src/features/core/screens/topics/instruction_models.dart';
import 'package:first_aid_app/src/features/core/screens/topics/instruction_view.dart';
import 'package:first_aid_app/src/features/core/screens/topics/topic_catalog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> openGuide(
  WidgetTester tester, {
  String id = 'cpr',
  String language = 'en',
  Size size = const Size(390, 844),
  double scale = 1,
  VoidCallback? onQuiz,
  VoidCallback? onSave,
  VoidCallback? onCall,
  bool saved = false,
}) async {
  tester.view.devicePixelRatio = 1;
  tester.view.physicalSize = size;
  await tester.pumpWidget(
    MaterialApp(
      theme: const bool.fromEnvironment('GUIDE_PREVIEWS')
          ? ThemeData(fontFamilyFallback: const ['GuidePreviewFallback'])
          : null,
      locale: Locale(language),
      supportedLocales: S.delegate.supportedLocales,
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
      home: Builder(
        builder: (context) => RepaintBoundary(
          key: const Key('guide-preview'),
          child: InstructionView(
            guide: buildInstructionGuide(id, S.of(context)),
            saved: saved,
            onSave: onSave ?? () {},
            onCall: onCall ?? () {},
            onQuiz: onQuiz ?? () {},
          ),
        ),
      ),
    ),
  );
  await tester.pumpAndSettle();
}

void main() {
  setUpAll(() async {
    if (const bool.fromEnvironment('GUIDE_PREVIEWS')) {
      await (FontLoader(
        'PlusJakartaSans',
      )..addFont(rootBundle.load('fonts/PlusJakartaSans-Variable.ttf'))).load();
      await (FontLoader(
        'MaterialIcons',
      )..addFont(rootBundle.load('fonts/MaterialIcons-Regular.otf'))).load();
      // Windows-only local previews use a system font for Arabic/Cyrillic.
      // Runtime builds use the device's own fallback fonts.
      final bytes = await File('C:/Windows/Fonts/segoeui.ttf').readAsBytes();
      await (FontLoader(
        'GuidePreviewFallback',
      )..addFont(Future.value(ByteData.sublistView(bytes)))).load();
    }
  });
  tearDown(() {
    TestWidgetsFlutterBinding.instance.platformDispatcher.clearAllTestValues();
  });

  testWidgets(
    'every catalog route has a complete guide and its own ten-question quiz',
    (tester) async {
      await openGuide(tester);
      final context = tester.element(find.byType(InstructionView));
      final s = S.of(context);
      final catalog = buildTopicCatalog(s);
      expect(catalog, hasLength(23));
      for (final topic in catalog) {
        final guide = buildInstructionGuide(topic.id, s);
        expect(guide.stepCount, greaterThanOrEqualTo(4), reason: topic.id);
        expect(guide.image, startsWith('assets/icons/'));
        expect(topic.builder(context), isA<StatelessWidget>());
        expect(generateLocalizedQuizData(s)[guide.quizKey], hasLength(10));
        final steps = guide.blocks
            .where((block) => block.kind == GuideBlockKind.step)
            .toList();
        expect(
          steps.map((step) => step.number).toList(),
          List.generate(guide.stepCount, (i) => '${i + 1}'),
        );
        for (final asset in {guide.image}) {
          expect(
            (await rootBundle.load(asset)).lengthInBytes,
            greaterThan(0),
            reason: asset,
          );
        }
      }
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets(
    'save, emergency call and pinned quiz remain actionable after scrolling',
    (tester) async {
      var saves = 0, calls = 0, quizzes = 0;
      await openGuide(
        tester,
        onSave: () => saves++,
        onCall: () => calls++,
        onQuiz: () => quizzes++,
      );
      await tester.tap(find.byTooltip('Save guide'));
      final call = find.byKey(const Key('guide-call'));
      await tester.ensureVisible(call);
      await tester.tap(call);
      final scroll = tester.state<ScrollableState>(
        find.byType(Scrollable).first,
      );
      scroll.position.jumpTo(scroll.position.maxScrollExtent);
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('guide-quiz')));
      expect(saves, 1);
      expect(calls, 1);
      expect(quizzes, 1);
      expect(find.text(S.current.cprNote1), findsOneWidget);
      expect(find.text(S.current.cprNote3), findsOneWidget);
      expect(tester.takeException(), isNull);
    },
  );

  for (final language in ['en', 'ar', 'ru']) {
    testWidgets('all 23 $language guides fit at 320px and 160 percent text', (
      tester,
    ) async {
      await openGuide(tester, language: language);
      final s = S.of(tester.element(find.byType(InstructionView)));
      final ids = buildTopicCatalog(s).map((topic) => topic.id).toList();
      for (final id in ids) {
        await openGuide(
          tester,
          id: id,
          language: language,
          size: const Size(320, 640),
          scale: 1.6,
        );
        expect(tester.takeException(), isNull, reason: '$language $id header');
        final scroll = tester.state<ScrollableState>(
          find.byType(Scrollable).first,
        );
        scroll.position.jumpTo(scroll.position.maxScrollExtent);
        await tester.pumpAndSettle();
        expect(tester.takeException(), isNull, reason: '$language $id steps');
        expect(
          Directionality.of(tester.element(find.byType(InstructionView))),
          language == 'ar' ? TextDirection.rtl : TextDirection.ltr,
        );
      }
      await tester.pumpWidget(const SizedBox());
    });
  }

  testWidgets('algorithm keeps its three decision branches inside step four', (
    tester,
  ) async {
    await openGuide(tester, id: 'universal_first_aid_algorithm');
    final step = find.byKey(const ValueKey('guide-step-4'));
    expect(
      find.descendant(of: step, matching: find.text('4.1')),
      findsOneWidget,
    );
    expect(
      find.descendant(of: step, matching: find.text('4.2')),
      findsOneWidget,
    );
    expect(
      find.descendant(of: step, matching: find.text('4.3')),
      findsOneWidget,
    );
    expect(tester.takeException(), isNull);
  });

  if (const bool.fromEnvironment('GUIDE_PREVIEWS')) {
    for (final language in ['en', 'ar', 'ru']) {
      testWidgets('$language visual preview', (tester) async {
        await openGuide(tester, language: language);
        await expectLater(
          find.byKey(const Key('guide-preview')),
          matchesGoldenFile('../.dart_tool/guide-$language.png'),
        );
        final step = find.byKey(const ValueKey('guide-step-5'));
        await tester.ensureVisible(step);
        await tester.pumpAndSettle();
        await expectLater(
          find.byKey(const Key('guide-preview')),
          matchesGoldenFile('../.dart_tool/guide-step-$language.png'),
        );
      });
    }
  }
}
