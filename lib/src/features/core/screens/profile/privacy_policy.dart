import 'package:first_aid_app/src/constants/text_strings.dart';
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
          tPrivacyPolicy,
          style: TextStyle(fontFamily: 'Poppins'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            Text(
              tPrivacyPolicy,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              tPrivacyPolicyHeader,
              style: baseStyle,
            ),
            SizedBox(height: 24),
            Text(tPrivacyQ1, style: boldStyle),
            SizedBox(height: 8),
            Text(
              tPrivacyA1,
              style: baseStyle,
            ),
            SizedBox(height: 24),
            Text(tPrivacyQ2, style: boldStyle),
            SizedBox(height: 8),
            Text(
              tPrivacyA2,
              style: baseStyle,
            ),
            SizedBox(height: 24),
            Text(tPrivacyQ3, style: boldStyle),
            SizedBox(height: 8),
            Text(
              tPrivacyA3,
              style: baseStyle,
            ),
            SizedBox(height: 24),
            Text(tPrivacyQ4, style: boldStyle),
            SizedBox(height: 8),
            Text(
              tPrivacyA4,
              style: baseStyle,
            ),
            SizedBox(height: 24),
            Text(tPrivacyQ5, style: boldStyle),
            SizedBox(height: 8),
            Text(
              tPrivacyA5,
              style: baseStyle,
            ),
            SizedBox(height: 24),
            Text(tcontactUsIn, style: baseStyle),
          ],
        ),
      ),
    );
  }
}
