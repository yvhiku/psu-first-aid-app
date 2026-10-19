import 'dart:async';

import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/features/core/screens/quizes/quiz.dart';
import 'package:first_aid_app/src/features/core/screens/saved/saved_topic_item.dart';
import 'package:first_aid_app/src/features/core/screens/saved/saved_topics_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

const savedFixtures = [
  {'title': 'CPR', 'type': 'cpr', 'image': 'assets/icons/cpr.png'},
  {'title': 'Burns', 'type': 'burns', 'image': 'assets/icons/burn.png'},
  {
    'title': 'First Aid Algorithm',
    'type': 'universal_first_aid_algorithm',
    'image': 'assets/icons/helping-person.png',
  },
];

class SavedHarness extends StatefulWidget {
  const SavedHarness({
    required this.items,
    this.onBrowse,
    this.onOpen,
    this.pendingRemoval,
    this.loading = false,
    super.key,
  });
  final List<Map<String, dynamic>> items;
  final VoidCallback? onBrowse;
  final ValueChanged<SavedTopicItem>? onOpen;
  final Completer<void>? pendingRemoval;
  final bool loading;
  @override
  State<SavedHarness> createState() => _SavedHarnessState();
}

class _SavedHarnessState extends State<SavedHarness> {
  late final items = widget.items
      .map((item) => Map<String, dynamic>.from(item))
      .toList();
  @override
  Widget build(BuildContext context) => SavedTopicsView(
    topics: items,
    loading: widget.loading,
    onBrowse: widget.onBrowse ?? () {},
    onOpen: widget.onOpen ?? (_) {},
    onRemove: (raw) async {
      setState(
        () => items.removeWhere((item) => item['title'] == raw['title']),
      );
      if (widget.pendingRemoval != null) await widget.pendingRemoval!.future;
    },
    onRestore: (raw) async {
      setState(() => items.add(Map<String, dynamic>.from(raw)));
    },
    onClear: () async {
      setState(items.clear);
    },
  );
}

Future<void> openSaved(
  WidgetTester tester, {
  List<Map<String, dynamic>> items = savedFixtures,
  Locale locale = const Locale('en'),
  Size size = const Size(390, 844),
  double scale = 1,
  VoidCallback? onBrowse,
  ValueChanged<SavedTopicItem>? onOpen,
  Completer<void>? pendingRemoval,
  ThemeData? theme,
  bool loading = false,
}) async {
  tester.view.devicePixelRatio = 1;
  tester.view.physicalSize = size;
  addTearDown(tester.view.resetDevicePixelRatio);
  addTearDown(tester.view.resetPhysicalSize);
  SharedPreferences.setMockInitialValues({});
  await tester.pumpWidget(
    MaterialApp(
      locale: locale,
      theme: theme,
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
      home: SavedHarness(
        items: items,
        onBrowse: onBrowse,
        onOpen: onOpen,
        pendingRemoval: pendingRemoval,
        loading: loading,
      ),
    ),
  );
  if (loading) {
    await tester.pump();
  } else {
    await tester.pumpAndSettle();
  }
}

Future<void> tapVisible(WidgetTester tester, Finder finder) async {
  await tester.ensureVisible(finder);
  await tester.pumpAndSettle();
  await tester.tap(finder);
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('empty state explains bookmarking and opens topic browsing', (
    tester,
  ) async {
    var browsed = false;
    await openSaved(tester, items: [], onBrowse: () => browsed = true);
    expect(find.byKey(const ValueKey('saved-empty')), findsOneWidget);
    expect(find.byKey(const ValueKey('saved-search')), findsNothing);
    expect(find.text('Keep helpful guides together'), findsOneWidget);
    await tapVisible(tester, find.byKey(const ValueKey('saved-browse')));
    expect(browsed, isTrue);
    expect(tester.takeException(), isNull);
  });

  testWidgets('search and categories combine without changing saved topics', (
    tester,
  ) async {
    await openSaved(tester);
    await tester.enterText(find.byKey(const ValueKey('saved-search')), 'CPR');
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('saved-card-cpr:CPR')), findsOneWidget);
    expect(find.text('Burns'), findsNothing);
    await tapVisible(
      tester,
      find.byKey(const ValueKey('saved-filter-injuries')),
    );
    expect(find.byKey(const ValueKey('saved-no-results')), findsOneWidget);
    expect(find.byKey(const ValueKey('saved-empty')), findsNothing);
    await tapVisible(tester, find.byKey(const ValueKey('saved-reset')));
    expect(find.text('Burns'), findsOneWidget);
    expect(find.text('CPR'), findsOneWidget);
    expect(find.text('Saved: 3'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('remove and undo work while a cloud operation is still pending', (
    tester,
  ) async {
    final removal = Completer<void>();
    await openSaved(
      tester,
      items: [savedFixtures.first],
      pendingRemoval: removal,
    );
    await tapVisible(
      tester,
      find.byKey(const ValueKey('saved-remove-cpr:CPR')),
    );
    expect(find.byKey(const ValueKey('saved-empty')), findsOneWidget);
    expect(removal.isCompleted, isFalse);
    await tester.tap(find.text('Undo'));
    await tester.pumpAndSettle();
    expect(find.text('CPR'), findsOneWidget);
    expect(find.byKey(const ValueKey('saved-empty')), findsNothing);
    removal.complete();
    await tester.pump();
    expect(tester.takeException(), isNull);
  });

  testWidgets('swipe removes a saved topic and offers undo', (tester) async {
    await openSaved(tester);
    await tester.drag(
      find.byKey(const ValueKey('saved-dismiss-cpr:CPR')),
      const Offset(-450, 0),
    );
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('saved-card-cpr:CPR')), findsNothing);
    await tester.tap(find.text('Undo'));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('saved-card-cpr:CPR')), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('clear all requires confirmation and displays the empty state', (
    tester,
  ) async {
    await openSaved(tester);
    await tester.tap(find.byKey(const ValueKey('saved-menu')));
    await tester.pumpAndSettle();
    final s = S.of(tester.element(find.byType(SavedTopicsView)));
    await tester.tap(find.text(s.tclearAll));
    await tester.pumpAndSettle();
    expect(find.text(s.savedClearTitle), findsOneWidget);
    await tester.tap(find.text(s.tcancel));
    await tester.pumpAndSettle();
    expect(find.text('CPR'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('saved-menu')));
    await tester.pumpAndSettle();
    await tester.tap(find.text(s.tclearAll));
    await tester.pumpAndSettle();
    await tester.tap(find.text(s.tclear));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('saved-empty')), findsOneWidget);
  });

  testWidgets(
    'stable topic types localize saved titles and retain original removal metadata',
    (tester) async {
      SavedTopicItem? selected;
      await openSaved(
        tester,
        locale: const Locale('ru'),
        onOpen: (item) => selected = item,
      );
      final s = S.of(tester.element(find.byType(SavedTopicsView)));
      expect(find.text(s.tCpr), findsOneWidget);
      expect(find.text(s.ufaa_title), findsOneWidget);
      await tapVisible(
        tester,
        find.byKey(
          const ValueKey(
            'saved-card-universal_first_aid_algorithm:First Aid Algorithm',
          ),
        ),
      );
      expect(selected?.entry?.id, 'universal_first_aid_algorithm');
      expect(selected?.raw['title'], 'First Aid Algorithm');
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets('practice chooser opens a real quiz from a saved topic', (
    tester,
  ) async {
    await openSaved(tester);
    await tapVisible(tester, find.byKey(const ValueKey('saved-practice')));
    await tester.tap(find.byKey(const ValueKey('saved-quiz-cpr')));
    await tester.pumpAndSettle();
    expect(find.byType(QuizScreen), findsOneWidget);
    expect(find.text('Question 1 of 10'), findsOneWidget);
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('loading does not flash the empty state', (tester) async {
    await openSaved(tester, items: [], loading: true);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    expect(find.byKey(const ValueKey('saved-empty')), findsNothing);
    await tester.pumpWidget(const SizedBox());
  });

  for (final language in ['ar', 'ru']) {
    for (final empty in [false, true]) {
      testWidgets(
        '$language saved ${empty ? 'empty' : 'list'} state fits narrow screens with large text',
        (tester) async {
          await openSaved(
            tester,
            locale: Locale(language),
            items: empty ? [] : savedFixtures,
            size: const Size(320, 640),
            scale: 1.6,
          );
          if (empty) {
            await tester.ensureVisible(
              find.byKey(const ValueKey('saved-browse')),
            );
          } else {
            final scroll = tester.state<ScrollableState>(
              find.byType(Scrollable).last,
            );
            scroll.position.jumpTo(scroll.position.maxScrollExtent);
          }
          await tester.pumpAndSettle();
          expect(tester.takeException(), isNull);
          await tester.pumpWidget(const SizedBox());
        },
      );
    }
  }
}
