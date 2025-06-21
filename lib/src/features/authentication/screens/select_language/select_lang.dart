import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/features/authentication/screens/welcome/welcom_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageSelectionScreen extends StatefulWidget {
  const LanguageSelectionScreen({super.key});

  @override
  _LanguageSelectionScreenState createState() =>
      _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  String? _selectedLanguage;

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
              const Text(
                'Select Your Language',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              ...languages.map((language) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    title: Row(
                      children: [
                        Text(language['flag']!),
                        const SizedBox(width: 10),
                        Text(language['name']!),
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
              ElevatedButton(
                onPressed: _selectedLanguage == null
                    ? null
                    : () async {
                        final prefs = await SharedPreferences.getInstance();
                        await prefs.setString(
                          S.of(context).selectLanguage,
                          _selectedLanguage!,
                        );

                        // Restart app with new locale
                        Get.updateLocale(Locale(_selectedLanguage!));

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
