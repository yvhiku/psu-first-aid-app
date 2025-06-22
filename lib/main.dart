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

// Add this function before main()
Future<Locale?> _getSavedLocale() async {
  final prefs = await SharedPreferences.getInstance();
  final languageCode = prefs.getString('language');
  if (languageCode != null) {
    return Locale(languageCode);
  }
  return null;
}

final GlobalKey<MyAppState> appStateKey = GlobalKey();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseAppCheck.instance.activate(
    androidProvider: AndroidProvider.playIntegrity,
    webProvider: ReCaptchaV3Provider(
      '6Lc7jmQrAAAAAGjhheIZB01-eIDIjWEO1Vu8ypsR',
    ),
  );

  Get.put(TopicController());
  
  // Initialize SharedPreferences and get saved language
  final prefs = await SharedPreferences.getInstance();
  final savedLanguage = prefs.getString('language');
  
  runApp(MyApp(
    key: appStateKey,
    initialLocale: savedLanguage != null ? Locale(savedLanguage) : null,
  ));
}

class MyApp extends StatefulWidget {
  final Locale? initialLocale;
  
  const MyApp({super.key, this.initialLocale});

  @override
  MyAppState createState() => MyAppState();
}

// Changed from _MyAppState to MyAppState (public)
class MyAppState extends State<MyApp> {
  Locale? _currentLocale;

  @override
  void initState() {
    super.initState();
    _currentLocale = widget.initialLocale;
  }

  void updateLocale(Locale newLocale) async {
    setState(() {
      _currentLocale = newLocale;
    });
    
    // Save to SharedPreferences
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('language', newLocale.languageCode);
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AuthProvider1())],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        locale: _currentLocale,
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