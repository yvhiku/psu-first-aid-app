import 'dart:async';
import 'dart:io';

import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/features/authentication/screens/contacts/contact_support.dart';
import 'package:first_aid_app/src/features/authentication/screens/contacts/support_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> openContact(
  WidgetTester tester, {
  String language = 'en',
  Size size = const Size(390, 844),
  double scale = 1,
  Future<bool> Function(Uri)? launch,
}) async {
  tester.view.devicePixelRatio = 1;
  tester.view.physicalSize = size;
  await tester.pumpWidget(
    MaterialApp(
      locale: Locale(language),
      supportedLocales: S.delegate.supportedLocales,
      theme: const bool.fromEnvironment('CONTACT_PREVIEWS')
          ? ThemeData(fontFamilyFallback: const ['ContactPreviewFallback'])
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
      home: RepaintBoundary(
        key: const Key('contact-preview'),
        child: ContactSupportScreen(launch: launch ?? (_) async => true),
      ),
    ),
  );
  await tester.pumpAndSettle();
}

Future<void> tapContact(WidgetTester tester, String key) async {
  final finder = find.byKey(ValueKey(key));
  await tester.ensureVisible(finder);
  await tester.pumpAndSettle();
  await tester.tap(finder);
  await tester.pumpAndSettle();
}

void main() {
  setUpAll(() async {
    if (const bool.fromEnvironment('CONTACT_PREVIEWS')) {
      await (FontLoader(
        'PlusJakartaSans',
      )..addFont(rootBundle.load('fonts/PlusJakartaSans-Variable.ttf'))).load();
      await (FontLoader(
        'MaterialIcons',
      )..addFont(rootBundle.load('fonts/MaterialIcons-Regular.otf'))).load();
      final bytes = await File('C:/Windows/Fonts/segoeui.ttf').readAsBytes();
      await (FontLoader(
        'ContactPreviewFallback',
      )..addFont(Future.value(ByteData.sublistView(bytes)))).load();
    }
  });

  testWidgets('only real contacts and six relevant FAQs are offered', (
    tester,
  ) async {
    await openContact(tester);
    expect(find.text(supportEmail), findsOneWidget);
    expect(find.text(supportPhone), findsOneWidget);
    expect(find.byType(ExpansionTile), findsNWidgets(6));
    expect(find.text('Live Chat'), findsNothing);
    expect(
      find.textContaining(RegExp('password', caseSensitive: false)),
      findsNothing,
    );
    final s = S.of(tester.element(find.byType(ContactSupportScreen)));
    final answers = [
      s.tanswer1,
      s.tanswer2,
      s.contactFaqSavedA,
      s.contactFaqMapA,
      s.contactFaqReportA,
      s.contactFaqDataA,
    ];
    for (var i = 0; i < answers.length; i++) {
      await tapContact(tester, 'contact-faq-$i');
      expect(find.text(answers[i]), findsOneWidget);
    }
    expect(tester.takeException(), isNull);
  });

  testWidgets(
    'email and phone actions use correct URIs without sending or calling',
    (tester) async {
      final requests = <Uri>[];
      await openContact(
        tester,
        language: 'ar',
        launch: (uri) async {
          requests.add(uri);
          return true;
        },
      );
      await tapContact(tester, 'contact-email');
      await tapContact(tester, 'contact-phone');
      expect(requests.first.scheme, 'mailto');
      expect(requests.first.path, supportEmail);
      expect(requests.first.queryParameters['subject'], S.current.tsubject);
      expect(requests.first.query, contains('%20'));
      expect(requests.first.query, isNot(contains('+')));
      expect(requests.last, supportPhoneUri);
      expect(find.byType(AlertDialog), findsNothing);
    },
  );

  testWidgets('unavailable email app has a selectable, copyable fallback', (
    tester,
  ) async {
    String? copied;
    tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
      SystemChannels.platform,
      (call) async {
        if (call.method == 'Clipboard.setData') {
          copied = (call.arguments as Map)['text'] as String;
        }
        return null;
      },
    );
    addTearDown(
      () => tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
        SystemChannels.platform,
        null,
      ),
    );
    await openContact(tester, launch: (_) async => false);
    await tapContact(tester, 'contact-email');
    expect(find.text(S.current.contactEmailUnavailable), findsOneWidget);
    expect(
      find.descendant(
        of: find.byType(AlertDialog),
        matching: find.byType(SelectableText),
      ),
      findsOneWidget,
    );
    await tester.tap(find.byKey(const Key('contact-fallback-copy')));
    await tester.pumpAndSettle();
    expect(copied, supportEmail);
    expect(find.byType(AlertDialog), findsNothing);
    expect(find.text(S.current.temailCopied), findsOneWidget);
  });

  testWidgets('dialer exceptions report phone failure, not email failure', (
    tester,
  ) async {
    await openContact(
      tester,
      launch: (_) async => throw StateError('No dialer'),
    );
    await tapContact(tester, 'contact-phone');
    expect(find.text(S.current.contactPhoneUnavailable), findsOneWidget);
    expect(find.text(S.current.contactEmailUnavailable), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('contact cards copy the displayed email and phone number', (
    tester,
  ) async {
    final copied = <String>[];
    tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
      SystemChannels.platform,
      (call) async {
        if (call.method == 'Clipboard.setData') {
          copied.add((call.arguments as Map)['text'] as String);
        }
        return null;
      },
    );
    addTearDown(
      () => tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
        SystemChannels.platform,
        null,
      ),
    );
    await openContact(tester);
    await tapContact(tester, 'contact-copy-email');
    await tapContact(tester, 'contact-copy-phone');
    expect(copied, [supportEmail, supportPhone]);
    expect(tester.takeException(), isNull);
  });

  testWidgets('clipboard failure keeps fallback details available', (
    tester,
  ) async {
    tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
      SystemChannels.platform,
      (call) async {
        if (call.method == 'Clipboard.setData') {
          throw PlatformException(code: 'clipboard-unavailable');
        }
        return null;
      },
    );
    addTearDown(
      () => tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
        SystemChannels.platform,
        null,
      ),
    );
    await openContact(tester, launch: (_) async => false);
    await tapContact(tester, 'contact-email');
    await tester.tap(find.byKey(const Key('contact-fallback-copy')));
    await tester.pumpAndSettle();
    expect(find.byType(AlertDialog), findsOneWidget);
    expect(find.text(S.current.contactCopyFailed), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('a late launcher response is safe after leaving the screen', (
    tester,
  ) async {
    final pending = Completer<bool>();
    await openContact(tester, launch: (_) => pending.future);
    await tester.tap(find.byKey(const ValueKey('contact-email')));
    await tester.pumpWidget(const SizedBox());
    pending.complete(false);
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
  });

  for (final language in ['en', 'ar', 'ru']) {
    testWidgets(
      '$language contact cards and expanded FAQs fit narrow large-text screens',
      (tester) async {
        await openContact(
          tester,
          language: language,
          size: const Size(320, 640),
          scale: 1.6,
        );
        expect(tester.takeException(), isNull);
        for (var i = 0; i < 6; i++) {
          await tapContact(tester, 'contact-faq-$i');
          expect(tester.takeException(), isNull);
        }
      },
    );
    if (const bool.fromEnvironment('CONTACT_PREVIEWS')) {
      testWidgets('$language contact visual preview', (tester) async {
        await openContact(tester, language: language);
        await expectLater(
          find.byKey(const Key('contact-preview')),
          matchesGoldenFile('../.dart_tool/contact-$language.png'),
        );
        await tapContact(tester, 'contact-faq-0');
        await expectLater(
          find.byKey(const Key('contact-preview')),
          matchesGoldenFile('../.dart_tool/contact-faq-$language.png'),
        );
      });
    }
  }
}
