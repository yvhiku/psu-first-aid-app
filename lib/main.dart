import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/features/authentication/screens/select_language/select_lang.dart';
import 'package:first_aid_app/src/features/authentication/screens/welcome/welcom_screen.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:first_aid_app/src/features/authentication/provider/auth_provider.dart';
import 'package:first_aid_app/src/features/core/controllers/widgets/navbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseAppCheck.instance.activate(
    androidProvider: AndroidProvider.playIntegrity,
    webProvider: ReCaptchaV3Provider(
      '6Lc7jmQrAAAAAGjhheIZB01-eIDIjWEO1Vu8ypsR',
    ),
  );

  final prefs = await SharedPreferences.getInstance();
  final savedLangCode = prefs.getString('selected_language') ?? 'en';

  Get.put(TopicController());

  runApp(MyApp(locale: Locale(savedLangCode)));
}

class MyApp extends StatelessWidget {
  final Locale locale;
  const MyApp({super.key, required this.locale}); // ✅ add required

  Future<bool> _isLanguageSelected() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('selected_language') != null;
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AuthProvider1())],
      child: GetMaterialApp(
        locale: locale, // ✅ THIS is where you use it!
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        debugShowCheckedModeBanner: false,
        home: Consumer<AuthProvider1>(
          builder: (context, auth, _) {
            if (auth.isLoading) {
              return const Scaffold(
                body: Center(child: CircularProgressIndicator()),
              );
            }

            return FutureBuilder<bool>(
              future: _isLanguageSelected(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Scaffold(
                    body: Center(child: CircularProgressIndicator()),
                  );
                }

                final languageSelected = snapshot.data ?? false;

                if (auth.isSignedIn) {
                  return const NavBar();
                } else {
                  return languageSelected
                      ? const WelcomeScreen()
                      : const LanguageSelectionScreen();
                }
              },
            );
          },
        ),
      ),
    );
  }
}

