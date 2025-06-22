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
          ),
          body: _buildContent(),
        );
      },
    );
  }

  Widget _buildContent() {
    final isRTL = _selectedLanguage == 'ar';

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 40),
          Text(
            S.of(context).chooseYourLanguage,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
            textAlign: _getTextAlignment(),
          ),
          const SizedBox(height: 8),
          Text(
            S.of(context).languageSelectionDescription,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
            textAlign: _getTextAlignment(),
          ),
          const SizedBox(height: 40),
          Expanded(
            child: ListView.separated(
              itemCount: languages.length,
              separatorBuilder: (context, index) => const Divider(height: 1),
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
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 0,
            ),
            child: Text(
              S.of(context).continueText,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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
    final isRTL = _selectedLanguage == 'ar';

    return Card(
      margin: EdgeInsets.zero,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        leading: Text(language['flag'], style: const TextStyle(fontSize: 28)),
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
    if (code == null) return;

    final newLocale = Locale(code);
    await Get.updateLocale(newLocale);

    setState(() {
      _selectedLanguage = code;
    });
  }

  Future<void> _saveLanguageAndNavigate(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('language', _selectedLanguage!);

    // Locale already updated, now navigate to main screen
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const NavBar()),
      (route) => false,
    );
  }
}
