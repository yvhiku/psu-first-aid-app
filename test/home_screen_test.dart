import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/features/core/screens/home/home_page.dart';
import 'package:first_aid_app/src/features/core/screens/home/hospital_map.dart';
import 'package:first_aid_app/src/features/core/screens/home/hospital_finder_screen.dart';
import 'package:first_aid_app/src/features/core/screens/quizes/quiz.dart';
import 'package:first_aid_app/src/features/core/services/hospital_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/testing.dart';
import 'package:latlong2/latlong.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'hospital_service_test.dart' as fixtures;

Future<void> openHome(
  WidgetTester tester, {
  Locale locale = const Locale('en'),
  double scale = 1,
  Size size = const Size(390, 844),
  HospitalSearchController? search,
  ThemeData? theme,
}) async {
  tester.view.devicePixelRatio = 1;
  tester.view.physicalSize = size;
  addTearDown(tester.view.resetDevicePixelRatio);
  addTearDown(tester.view.resetPhysicalSize);
  SharedPreferences.setMockInitialValues({
    'quiz_v2_cpr_score': 8,
    'quiz_v2_bleeding_score': 0,
    'Asthma_score': 6,
  });
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
      home: HomeScreen(hospitalSearch: search),
    ),
  );
  await tester.pumpAndSettle();
}

class TestMapTiles extends TileProvider {
  @override
  ImageProvider getImage(TileCoordinates coordinates, TileLayer options) =>
      const AssetImage('assets/icons/hospital_pin.png');
}

void main() {
  testWidgets(
    'full hospital map supports radius changes and translated result cards',
    (tester) async {
      var calls = 0;
      final search = HospitalSearchController(
        repository: HospitalRepository(
          client: MockClient((_) async {
            calls++;
            return fixtures.response([
              fixtures.element(
                1,
                0,
                .001,
                name: 'Test Hospital',
                tags: {'name:ar': 'مستشفى تجريبي'},
              ),
            ]);
          }),
        ),
      );
      await search.searchAt(const LatLng(0, 0));
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = const Size(320, 640);
      addTearDown(tester.view.resetDevicePixelRatio);
      addTearDown(tester.view.resetPhysicalSize);
      await tester.pumpWidget(
        MaterialApp(
          locale: const Locale('ar'),
          supportedLocales: S.delegate.supportedLocales,
          localizationsDelegates: const [
            S.delegate,
            ...GlobalMaterialLocalizations.delegates,
          ],
          home: HospitalFinderScreen(
            search: search,
            tileProvider: TestMapTiles(),
          ),
        ),
      );
      await tester.pumpAndSettle();
      final s = S.of(tester.element(find.byType(HospitalFinderScreen)));
      await tester.tap(find.text(s.hospitalRadiusKm(10)));
      await tester.pumpAndSettle();
      expect(search.radiusKm, 10);
      expect(calls, 2);
      final scroll = tester.state<ScrollableState>(
        find.byType(Scrollable).first,
      );
      scroll.position.jumpTo(scroll.position.maxScrollExtent);
      await tester.pumpAndSettle();
      expect(find.text('مستشفى تجريبي'), findsOneWidget);
      expect(find.text(s.hospitalEmergencyUnknown), findsOneWidget);
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox());
      search.dispose();
    },
  );
  testWidgets(
    'home keeps illustrated guides, real progress and does not request location on launch',
    (tester) async {
      var locationCalls = 0;
      final search = HospitalSearchController(
        locate: () async {
          locationCalls++;
          return const LatLng(0, 0);
        },
      );
      await openHome(tester, search: search);
      expect(locationCalls, 0);
      for (final id in ['cpr', 'bleeding', 'choking', 'burns', 'poisons']) {
        expect(find.byKey(ValueKey('home-topic-$id')), findsOneWidget);
      }
      expect(find.text('23 topics'), findsOneWidget);
      expect(find.text('2 of 23 topic quizzes completed'), findsOneWidget);
      final quiz = find.byKey(const ValueKey('home-start-quiz'));
      await tester.ensureVisible(quiz);
      await tester.pumpAndSettle();
      await tester.tap(quiz);
      await tester.pumpAndSettle();
      expect(find.byType(QuizScreen), findsOneWidget);
      expect(find.text('Question 1 of 10'), findsOneWidget);
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox());
      search.dispose();
    },
  );

  testWidgets('location denial leaves a readable explanation and map action', (
    tester,
  ) async {
    final search = HospitalSearchController(
      locate: () async =>
          throw const HospitalSearchException(HospitalStatus.denied),
    );
    await openHome(tester, search: search);
    final button = find.byKey(const ValueKey('home-use-location'));
    await tester.ensureVisible(button);
    await tester.pumpAndSettle();
    await tester.tap(button);
    await tester.pumpAndSettle();
    expect(
      find.byKey(const ValueKey('hospital-status-denied')),
      findsOneWidget,
    );
    expect(find.byKey(const ValueKey('home-open-map')), findsOneWidget);
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox());
    search.dispose();
  });

  for (final locale in ['ar', 'ru']) {
    testWidgets('$locale home fits a narrow screen with large text', (
      tester,
    ) async {
      await openHome(
        tester,
        locale: Locale(locale),
        size: const Size(320, 640),
        scale: 1.6,
      );
      await tester.ensureVisible(find.byKey(const ValueKey('home-start-quiz')));
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox());
    });
  }

  testWidgets(
    'hospital markers use returned coordinates, attribution and selectable details',
    (tester) async {
      final search = HospitalSearchController(
        repository: HospitalRepository(
          client: MockClient(
            (_) async => fixtures.response([
              fixtures.element(1, 0, .001, name: 'Test Hospital'),
            ]),
          ),
        ),
      );
      await search.searchAt(const LatLng(0, 0));
      Hospital? selected;
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: const [
            S.delegate,
            ...GlobalMaterialLocalizations.delegates,
          ],
          home: Scaffold(
            body: SizedBox(
              height: 350,
              child: HospitalMap(
                search: search,
                tileProvider: TestMapTiles(),
                onHospitalTap: (hospital) => selected = hospital,
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('© OpenStreetMap contributors'), findsOneWidget);
      await tester.tap(find.byTooltip('Test Hospital'));
      await tester.pump();
      expect(selected?.id, 'node/1');
      expect(selected?.point, const LatLng(0, .001));
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox());
      search.dispose();
    },
  );
}
