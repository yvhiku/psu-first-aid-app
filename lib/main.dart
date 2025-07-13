import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:first_aid_app/generated/l10n.dart';
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

// Fetches the saved language locale from SharedPreferences.
// This is unused because you handle it inside main(), 
// but left here if you want to reuse it.
// ignore: unused_element
Future<Locale?> _getSavedLocale() async {
  final prefs = await SharedPreferences.getInstance();
  final languageCode = prefs.getString('language');
  if (languageCode != null) {
    return Locale(languageCode);
  }
  return null;
}

// GlobalKey to allow changing app language at runtime from anywhere
final GlobalKey<MyAppState> appStateKey = GlobalKey();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp();

  // Enable Firebase App Check for improved security
  await FirebaseAppCheck.instance.activate(
    androidProvider: AndroidProvider.playIntegrity,
    webProvider: ReCaptchaV3Provider(
      '6Lc7jmQrAAAAAGjhheIZB01-eIDIjWEO1Vu8ypsR', // your public site key
    ),
  );

  // Register TopicController globally using GetX
  Get.put(TopicController());
  
  // Load saved language from SharedPreferences
  final prefs = await SharedPreferences.getInstance();
  final savedLanguage = prefs.getString('language');

  runApp(MyApp(
    key: appStateKey,
    initialLocale: savedLanguage != null ? Locale(savedLanguage) : null,
  ));
}

// Root StatefulWidget that controls locale
class MyApp extends StatefulWidget {
  final Locale? initialLocale;

  const MyApp({super.key, this.initialLocale});

  @override
  MyAppState createState() => MyAppState();
}

// Public State class (to allow appStateKey access)
class MyAppState extends State<MyApp> {
  Locale? _currentLocale;

  @override
  void initState() {
    super.initState();
    _currentLocale = widget.initialLocale;
  }

  // Called from anywhere via appStateKey to change app language
  void updateLocale(Locale newLocale) async {
    setState(() {
      _currentLocale = newLocale;
    });
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('language', newLocale.languageCode);
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider1()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,

        // Setup localizations
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,

        locale: _currentLocale,

        // Fallback if _currentLocale is null
        localeResolutionCallback: (deviceLocale, supportedLocales) {
          if (_currentLocale != null) {
            return _currentLocale!;
          }
          for (var locale in supportedLocales) {
            if (locale.languageCode == deviceLocale?.languageCode) {
              return locale;
            }
          }
          return supportedLocales.first;
        },

        // Shows loading, NavBar if signed in, or Welcome otherwise
        home: Consumer<AuthProvider1>(
          builder: (context, auth, _) {
            if (auth.isLoading) {
              return const Scaffold(
                body: Center(child: CircularProgressIndicator()),
              );
            }
            return auth.isSignedIn ? const NavBar() : const WelcomeScreen();
          },
        ),
      ),
    );
  }
}
