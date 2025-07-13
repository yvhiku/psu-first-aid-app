import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/features/authentication/screens/welcome/welcom_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Screen to allow user to pick their preferred language on first launch
class LanguageSelectionScreen extends StatefulWidget {
  const LanguageSelectionScreen({super.key});

  @override
  _LanguageSelectionScreenState createState() =>
      _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  String? _selectedLanguage; // Holds selected language code (e.g. 'en', 'ar', 'ru')

  // List of supported languages, each with its code, name, and flag emoji
  final List<Map<String, String>> languages = [
    {'code': 'en', 'name': 'English', 'flag': '🇬🇧'},
    {'code': 'ar', 'name': 'العربية', 'flag': '🇸🇦'},
    {'code': 'ru', 'name': 'Русский', 'flag': '🇷🇺'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Screen title
              const Text(
                'Select Your Language',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),

              // Map each language option to a ListTile with radio button
              ...languages.map((language) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    title: Row(
                      children: [
                        Text(language['flag']!), // Show flag
                        const SizedBox(width: 10),
                        Text(language['name']!), // Show language name
                      ],
                    ),
                    leading: Radio<String>(
                      value: language['code']!,
                      groupValue: _selectedLanguage,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedLanguage = value;
                        });
                      },
                    ),
                    onTap: () {
                      setState(() {
                        _selectedLanguage = language['code'];
                      });
                    },
                  ),
                );
              }),
              const SizedBox(height: 30),

              // Continue button
              ElevatedButton(
                onPressed: _selectedLanguage == null
                    ? null // Disable if no language is selected
                    : () async {
                        // Save selected language in SharedPreferences
                        final prefs = await SharedPreferences.getInstance();
                        await prefs.setString(
                          S.of(context).selectLanguage, // usually would be 'language'
                          _selectedLanguage!,
                        );

                        // Tell GetX to update the locale immediately
                        Get.updateLocale(Locale(_selectedLanguage!));

                        // Navigate to welcome screen replacing this screen
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WelcomeScreen(),
                          ),
                        );
                      },

                child: Text(S.of(context).continueText),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
