import 'package:first_aid_app/src/constants/colors.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const baseStyle = TextStyle(fontFamily: 'Poppins', fontSize: 16);
    const boldStyle = TextStyle(
      fontFamily: 'Poppins',
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Privacy Policy',
          style: TextStyle(fontFamily: 'Poppins'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            Text(
              'Privacy Policy',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Your privacy is important to us. This Privacy Policy explains how we collect, use, and protect your information when you use the First Aid App.',
              style: baseStyle,
            ),
            SizedBox(height: 24),
            Text('1. Information We Collect', style: boldStyle),
            SizedBox(height: 8),
            Text(
              '- Personal information you provide, such as your name and email when signing up.\n'
              '- Data related to app usage, saved topics, and preferences.',
              style: baseStyle,
            ),
            SizedBox(height: 24),
            Text('2. How We Use Your Information', style: boldStyle),
            SizedBox(height: 8),
            Text(
              '- To provide personalized features like saving topics.\n'
              '- To improve the app and user experience.\n'
              '- We do NOT share or sell your personal data to third parties.',
              style: baseStyle,
            ),
            SizedBox(height: 24),
            Text('3. Data Security', style: boldStyle),
            SizedBox(height: 8),
            Text(
              'We use secure authentication (Firebase Auth) and encrypted cloud storage (Firebase Storage & Firestore) to keep your data safe.',
              style: baseStyle,
            ),
            SizedBox(height: 24),
            Text('4. Your Choices', style: boldStyle),
            SizedBox(height: 8),
            Text(
              '- You can delete your account and all data at any time.\n'
              '- Contact us for any questions or data requests.',
              style: baseStyle,
            ),
            SizedBox(height: 24),
            Text('5. Changes to This Policy', style: boldStyle),
            SizedBox(height: 8),
            Text(
              'We may update this policy from time to time. We will notify you of any major changes.',
              style: baseStyle,
            ),
            SizedBox(height: 24),
            Text('Contact Us:\nyvhiku@yandex.ru', style: baseStyle),
          ],
        ),
      ),
    );
  }
}
