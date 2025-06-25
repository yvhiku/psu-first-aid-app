import 'package:first_aid_app/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/features/core/controllers/widgets/navbar.dart';

class LanguageSelectionScreen1 extends StatefulWidget {
  const LanguageSelectionScreen1({super.key});

  @override
  _LanguageSelectionScreenState1 createState() =>
      _LanguageSelectionScreenState1();
}

class _LanguageSelectionScreenState1 extends State<LanguageSelectionScreen1> {
  String? _selectedLanguage;
  late Future<void> _initLanguage;

  final List<Map<String, dynamic>> languages = [
    {'code': 'en', 'name': 'English', 'flag': '🇬🇧', 'nativeName': 'English'},
    {'code': 'ar', 'name': 'Arabic', 'flag': '🇸🇦', 'nativeName': 'العربية'},
    {'code': 'ru', 'name': 'Russian', 'flag': '🇷🇺', 'nativeName': 'Русский'},
  ];

  @override
  void initState() {
    super.initState();
    _initLanguage = _loadSelectedLanguage();
  }

  Future<void> _loadSelectedLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _selectedLanguage = prefs.getString('language');
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initLanguage,
      builder: (context, snapshot) {
        return Scaffold(
          appBar: AppBar(
            title: Text(S.of(context).selectLanguage),
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
          body: _buildContent(),
          backgroundColor: Colors.white,
        );
      },
    );
  }

  Widget _buildContent() {
    // ignore: unused_local_variable
    final isRTL = _selectedLanguage == 'ar';

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 24),
          Text(
            S.of(context).chooseYourLanguage,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: _getTextAlignment(),
          ),
          const SizedBox(height: 8),
          Text(
            S.of(context).languageSelectionDescription,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
            textAlign: _getTextAlignment(),
          ),
          const SizedBox(height: 32),
          Expanded(
            child: ListView.builder(
              itemCount: languages.length,
              itemBuilder: (context, index) {
                final language = languages[index];
                return _buildLanguageTile(language);
              },
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: _selectedLanguage == null
                ? null
                : () => _saveLanguageAndNavigate(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFD32F2F),
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 2,
            ),
            child: Text(
              S.of(context).continueText,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextAlign _getTextAlignment() {
    return _selectedLanguage == 'ar' ? TextAlign.right : TextAlign.left;
  }

  Widget _buildLanguageTile(Map<String, dynamic> language) {
    final isSelected = _selectedLanguage == language['code'];
    final isRTL = _selectedLanguage == 'ar';

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFFFEEEEE) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isSelected ? const Color(0xFFD32F2F) : Colors.grey.shade300,
          width: isSelected ? 2 : 1,
        ),
      ),
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        leading: Text(
          language['flag'],
          style: const TextStyle(fontSize: 26),
        ),
        title: Text(
          language['nativeName'],
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          textAlign: isRTL ? TextAlign.right : TextAlign.left,
        ),
        trailing: Radio<String>(
          value: language['code'],
          groupValue: _selectedLanguage,
          activeColor: const Color(0xFFD32F2F),
          onChanged: (String? value) async {
            await _changeLanguage(value);
          },
        ),
        onTap: () async {
          await _changeLanguage(language['code']);
        },
      ),
    );
  }

  Future<void> _changeLanguage(String? code) async {
    if (code == null || code == _selectedLanguage) return;

    final newLocale = Locale(code);

    appStateKey.currentState?.updateLocale(newLocale);
    setState(() {
      _selectedLanguage = code;
    });

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('language', code);

    await Get.updateLocale(newLocale);
  }

  Future<void> _saveLanguageAndNavigate(BuildContext context) async {
    if (_selectedLanguage == null) return;

    final newLocale = Locale(_selectedLanguage!);
    appStateKey.currentState?.updateLocale(newLocale);

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('language', _selectedLanguage!);

    await Get.updateLocale(newLocale);

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const NavBar()),
      (route) => false,
    );
  }
}
