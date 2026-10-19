import 'dart:io';

import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/features/authentication/model/user_model.dart';
import 'package:first_aid_app/src/features/core/screens/profile/about.dart';
import 'package:first_aid_app/src/features/core/screens/profile/privacy_policy.dart';
import 'package:first_aid_app/src/features/core/screens/profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

final profileFixture = UserModel(
  name: 'Mohamed Fikri',
  email: 'fikri@example.com',
  bio: 'Learning first aid, one topic at a time.',
  profilePic: '',
  createdAt: '',
  phoneNumber: '',
  uid: 'test-user',
);

Future<void> openProfile(
  WidgetTester tester, {
  Widget? page,
  String language = 'en',
  bool guest = false,
  bool loading = false,
  bool error = false,
  UserModel? user,
  Size size = const Size(390, 844),
  double scale = 1,
  VoidCallback? onSignIn,
  VoidCallback? onEdit,
  VoidCallback? onLanguage,
  VoidCallback? onContact,
  VoidCallback? onPrivacy,
  VoidCallback? onAbout,
  VoidCallback? onRetry,
  VoidCallback? onLogout,
}) async {
  tester.view.devicePixelRatio = 1;
  tester.view.physicalSize = size;
  await tester.pumpWidget(
    MaterialApp(
      locale: Locale(language),
      supportedLocales: S.delegate.supportedLocales,
      theme: const bool.fromEnvironment('PROFILE_PREVIEWS')
          ? ThemeData(fontFamilyFallback: const ['ProfilePreviewFallback'])
          : null,
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
          key: const Key('profile-preview'),
          child:
              page ??
              ProfileView(
                guest: guest,
                loading: loading,
                user: error ? null : (user ?? profileFixture),
                onSignIn: onSignIn ?? () {},
                onEdit: onEdit ?? () {},
                onLanguage: onLanguage ?? () {},
                onContact: onContact ?? () {},
                onPrivacy:
                    onPrivacy ??
                    () => Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (_) => const PrivacyPolicyScreen(),
                      ),
                    ),
                onAbout:
                    onAbout ??
                    () => Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (_) => const AboutScreen(),
                      ),
                    ),
                onRetry: onRetry ?? () {},
                onLogout: onLogout ?? () {},
              ),
        ),
      ),
    ),
  );
  if (loading) {
    await tester.pump(const Duration(milliseconds: 200));
  } else {
    await tester.pumpAndSettle();
  }
}

Future<void> tapMenu(WidgetTester tester, String key) async {
  final finder = find.byKey(Key(key));
  await tester.ensureVisible(finder);
  await tester.pumpAndSettle();
  await tester.tap(finder);
  await tester.pumpAndSettle();
}

void main() {
  setUpAll(() async {
    if (const bool.fromEnvironment('PROFILE_PREVIEWS')) {
      await (FontLoader(
        'PlusJakartaSans',
      )..addFont(rootBundle.load('fonts/PlusJakartaSans-Variable.ttf'))).load();
      await (FontLoader(
        'MaterialIcons',
      )..addFont(rootBundle.load('fonts/MaterialIcons-Regular.otf'))).load();
      final bytes = await File('C:/Windows/Fonts/segoeui.ttf').readAsBytes();
      await (FontLoader(
        'ProfilePreviewFallback',
      )..addFont(Future.value(ByteData.sublistView(bytes)))).load();
    }
  });

  testWidgets('signed-in profile shows identity and keeps all menu callbacks', (
    tester,
  ) async {
    final calls = <String>[];
    await openProfile(
      tester,
      onEdit: () => calls.add('edit'),
      onLanguage: () => calls.add('language'),
      onContact: () => calls.add('contact'),
      onPrivacy: () => calls.add('privacy'),
      onAbout: () => calls.add('about'),
    );
    expect(find.text(profileFixture.name), findsOneWidget);
    expect(find.text(profileFixture.email), findsOneWidget);
    expect(find.text(profileFixture.bio), findsOneWidget);
    for (final key in ['edit', 'language', 'contact', 'privacy', 'about']) {
      await tapMenu(tester, 'profile-$key');
    }
    expect(calls, ['edit', 'language', 'contact', 'privacy', 'about']);
    expect(tester.takeException(), isNull);
  });

  testWidgets(
    'guest can use settings, support, privacy and about without an account',
    (tester) async {
      var signIns = 0;
      await openProfile(tester, guest: true, onSignIn: () => signIns++);
      expect(find.byKey(const Key('profile-guest')), findsOneWidget);
      expect(find.byKey(const Key('profile-edit')), findsNothing);
      expect(find.byKey(const Key('profile-logout')), findsNothing);
      for (final key in ['language', 'contact', 'privacy', 'about']) {
        expect(find.byKey(Key('profile-$key')), findsOneWidget);
      }
      await tapMenu(tester, 'profile-sign-in');
      expect(signIns, 1);
      await tapMenu(tester, 'profile-privacy');
      expect(find.byType(PrivacyPolicyScreen), findsOneWidget);
      await tester.pageBack();
      await tester.pumpAndSettle();
      await tapMenu(tester, 'profile-about');
      expect(find.byType(AboutScreen), findsOneWidget);
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets('loading and retry states leave app information accessible', (
    tester,
  ) async {
    await openProfile(tester, loading: true);
    expect(find.byKey(const Key('profile-loading')), findsOneWidget);
    expect(find.byKey(const Key('profile-identity')), findsNothing);
    expect(find.byKey(const Key('profile-privacy')), findsOneWidget);
    var retries = 0;
    await openProfile(tester, error: true, onRetry: () => retries++);
    expect(find.byKey(const Key('profile-error')), findsOneWidget);
    await tapMenu(tester, 'profile-retry');
    expect(retries, 1);
    expect(find.byKey(const Key('profile-about')), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('logout requires confirmation and cancel keeps the session', (
    tester,
  ) async {
    var signOuts = 0;
    await openProfile(tester, onLogout: () => signOuts++);
    await tapMenu(tester, 'profile-logout');
    await tester.tap(find.text(S.current.tcancel));
    await tester.pumpAndSettle();
    expect(signOuts, 0);
    await tapMenu(tester, 'profile-logout');
    await tester.tap(find.byKey(const Key('profile-confirm-logout')));
    await tester.pumpAndSettle();
    expect(signOuts, 1);
  });

  for (final language in ['en', 'ar', 'ru']) {
    testWidgets(
      '$language About uses PSU branding and actual guide/question counts',
      (tester) async {
        await openProfile(
          tester,
          language: language,
          page: const AboutScreen(),
        );
        final s = S.of(tester.element(find.byType(AboutScreen)));
        expect(find.text('PSU First Aid'), findsOneWidget);
        expect(find.text(s.psuUniversity), findsOneWidget);
        expect(s.tWelcomeTitle, isNot(contains('PGU')));
        expect(s.taboutParagraph2, contains('PSU'));
        final number = MaterialLocalizations.of(
          tester.element(find.byType(AboutScreen)),
        ).formatDecimal;
        expect(find.text(s.aboutGuidesCount(number(23))), findsOneWidget);
        expect(find.text(s.aboutQuizCount(number(230))), findsOneWidget);
        expect(find.text(s.aboutOfflineBody), findsOneWidget);
        expect(tester.takeException(), isNull);
      },
    );

    testWidgets(
      '$language privacy explains location, cloud data and deletion requests',
      (tester) async {
        await openProfile(
          tester,
          language: language,
          page: const PrivacyPolicyScreen(),
        );
        final s = S.of(tester.element(find.byType(PrivacyPolicyScreen)));
        for (final body in [
          s.tprivacyA1,
          s.tprivacyA2,
          s.tprivacyA3,
          s.tprivacyA4,
          s.tprivacyA5,
        ]) {
          expect(find.text(body), findsOneWidget);
        }
        expect(s.tprivacyA3, contains('Overpass'));
        expect(find.text('Firebase'), findsOneWidget);
        expect(find.text('OpenStreetMap'), findsOneWidget);
        expect(find.text('yvhiku@yandex.ru'), findsOneWidget);
        expect(tester.takeException(), isNull);
      },
    );

    testWidgets(
      '$language profile and information pages fit narrow screens with large text',
      (tester) async {
        final longUser = profileFixture.copyWith(
          name: 'Mohamed Fikri Mohamed Fikri Mohamed Fikri',
          email: 'a.very.long.email.address.for.testing@example.com',
        );
        for (final page in <Widget?>[
          null,
          const PrivacyPolicyScreen(),
          const AboutScreen(),
        ]) {
          await openProfile(
            tester,
            language: language,
            page: page,
            user: longUser,
            size: const Size(320, 640),
            scale: 1.6,
          );
          expect(tester.takeException(), isNull);
          final scroll = tester.state<ScrollableState>(
            find.byType(Scrollable).first,
          );
          scroll.position.jumpTo(scroll.position.maxScrollExtent);
          await tester.pumpAndSettle();
          expect(tester.takeException(), isNull);
        }
        await openProfile(
          tester,
          guest: true,
          language: language,
          size: const Size(320, 640),
          scale: 1.6,
        );
        expect(tester.takeException(), isNull);
      },
    );
  }

  if (const bool.fromEnvironment('PROFILE_PREVIEWS')) {
    for (final language in ['en', 'ar', 'ru']) {
      testWidgets('$language profile visual previews', (tester) async {
        final pages = <String, Widget?>{
          'profile': null,
          'privacy': const PrivacyPolicyScreen(),
          'about': const AboutScreen(),
        };
        for (final entry in pages.entries) {
          await openProfile(tester, language: language, page: entry.value);
          await expectLater(
            find.byKey(const Key('profile-preview')),
            matchesGoldenFile('../.dart_tool/${entry.key}-$language.png'),
          );
        }
      });
    }
  }
}
