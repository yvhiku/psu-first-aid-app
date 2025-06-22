import 'package:first_aid_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final baseStyle = TextStyle(fontFamily: 'Poppins', fontSize: 16);
    final boldStyle = TextStyle(
      fontFamily: 'Poppins',
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).tprivacyPolicy,
          style: TextStyle(fontFamily: 'Poppins'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              S.of(context).tprivacyPolicy,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(S.of(context).tprivacyPolicyHeader, style: baseStyle),
            const SizedBox(height: 24),
            Text(S.of(context).tprivacyQ1, style: boldStyle),
            const SizedBox(height: 8),
            Text(S.of(context).tprivacyA1, style: baseStyle),
            const SizedBox(height: 24),
            Text(S.of(context).tprivacyQ2, style: boldStyle),
            const SizedBox(height: 8),
            Text(S.of(context).tprivacyA2, style: baseStyle),
            const SizedBox(height: 24),
            Text(S.of(context).tprivacyQ3, style: boldStyle),
            const SizedBox(height: 8),
            Text(S.of(context).tprivacyA3, style: baseStyle),
            const SizedBox(height: 24),
            Text(S.of(context).tprivacyQ4, style: boldStyle),
            const SizedBox(height: 8),
            Text(S.of(context).tprivacyA4, style: baseStyle),
            const SizedBox(height: 24),
            Text(S.of(context).tprivacyQ5, style: boldStyle),
            const SizedBox(height: 8),
            Text(S.of(context).tprivacyA5, style: baseStyle),
            const SizedBox(height: 24),
            Text(S.of(context).tcontactUsIn, style: baseStyle),
          ],
        ),
      ),
    );
  }
}