import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/features/core/screens/topics/all_topic.dart';
import 'package:first_aid_app/src/features/core/screens/topics/topic_catalog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> openTopics(
  WidgetTester tester, {
  Locale locale = const Locale('en'),
  Size size = const Size(390, 844),
  double scale = 1,
  Map<String, Object> progress = const {},
}) async {
  tester.view.devicePixelRatio = 1;
  tester.view.physicalSize = size;
  addTearDown(tester.view.resetDevicePixelRatio);
  addTearDown(tester.view.resetPhysicalSize);
  SharedPreferences.setMockInitialValues(progress);
  await tester.pumpWidget(
    MaterialApp(
      locale: locale,
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
      home: const AllTopicsScreen(),
    ),
  );
  await tester.pumpAndSettle();
}

Finder get topicCards => find.byWidgetPredicate(
  (widget) =>
      widget is InkWell &&
      widget.key is ValueKey<String> &&
      (widget.key! as ValueKey<String>).value.startsWith('topic-card-'),
);

void main() {
  testWidgets('all 23 guides keep their bundled illustrations and routes', (
    tester,
  ) async {
    await openTopics(tester);
    expect(topicCards, findsNWidgets(23));
    expect(find.text('0 of 23 quizzes completed'), findsOneWidget);
    final context = tester.element(find.byType(AllTopicsScreen));
    final catalog = buildTopicCatalog(S.of(context));
    expect(catalog.map((topic) => topic.id).toSet().length, 23);
    for (final topic in catalog) {
      expect(
        (await rootBundle.load(topic.image)).lengthInBytes,
        greaterThan(0),
      );
      expect(topic.builder(context), isA<Widget>());
    }
    expect(tester.takeException(), isNull);
  });

  testWidgets('search and category filters combine and reset', (tester) async {
    await openTopics(tester);
    await tester.enterText(find.byKey(const ValueKey('topic-search')), 'CPR');
    await tester.pumpAndSettle();
    expect(topicCards, findsOneWidget);
    expect(find.byKey(const ValueKey('topic-card-cpr')), findsOneWidget);
    final injuries = find.byKey(const ValueKey('filter-injuries'));
    await tester.ensureVisible(injuries);
    await tester.tap(injuries);
    await tester.pumpAndSettle();
    expect(topicCards, findsNothing);
    expect(find.text('No topics found'), findsOneWidget);
    final reset = find.text('Show all topics');
    await tester.ensureVisible(reset);
    await tester.tap(reset);
    await tester.pumpAndSettle();
    expect(topicCards, findsNWidgets(23));
    expect(tester.takeException(), isNull);
  });

  testWidgets('progress uses saved quiz scores and ignores invalid scores', (
    tester,
  ) async {
    await openTopics(
      tester,
      progress: {
        'quiz_v2_cpr_score': 4,
        'quiz_v2_bleeding_score': 0,
        'quiz_v2_burns_score': 99,
        'Asthma_score': 6,
        'topics_last_viewed_id': 'asthma',
      },
    );
    expect(find.text('2 of 23 quizzes completed'), findsOneWidget);
    expect(find.text('Last quiz: 4 / 10'), findsOneWidget);
    expect(find.text('Last quiz: 0 / 10'), findsOneWidget);
    expect(find.text('Last quiz: 99 / 10'), findsNothing);
    expect(
      find.descendant(
        of: find.byKey(const ValueKey('continue-learning')),
        matching: find.text('Asthma'),
      ),
      findsOneWidget,
    );
    expect(tester.takeException(), isNull);
  });

  for (final locale in [const Locale('ar'), const Locale('ru')]) {
    testWidgets(
      '${locale.languageCode} supports narrow screens and large text',
      (tester) async {
        await openTopics(
          tester,
          locale: locale,
          size: const Size(320, 640),
          scale: 1.6,
        );
        expect(topicCards, findsNWidgets(23));
        final scroll = tester.state<ScrollableState>(
          find
              .descendant(
                of: find.byKey(const PageStorageKey('topic-browser-scroll')),
                matching: find.byType(Scrollable),
              )
              .first,
        );
        scroll.position.jumpTo(scroll.position.maxScrollExtent);
        await tester.pumpAndSettle();
        expect(tester.takeException(), isNull);
      },
    );
  }
}
