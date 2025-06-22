import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/features/core/controllers/widgets/navbar.dart';
import 'package:first_aid_app/src/features/core/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageSelectionScreen1 extends StatefulWidget {
  const LanguageSelectionScreen1({super.key});

  @override
  _LanguageSelectionScreenState1 createState() =>
      _LanguageSelectionScreenState1();
}

class _LanguageSelectionScreenState1 extends State<LanguageSelectionScreen1> {
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
                            builder: (context) => const NavBar(),
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
