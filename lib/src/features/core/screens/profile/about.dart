import 'package:first_aid_app/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const baseStyle = TextStyle(fontFamily: 'Poppins', fontSize: 16);
    const boldStyle = TextStyle(fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.bold);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About',
          style: TextStyle(fontFamily: 'Poppins'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            Text(
              tAboutPGUFA,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              taboutHeader,
              style: baseStyle,
            ),
            SizedBox(height: 24),
            Text(taboutHeader1, style: boldStyle),
            SizedBox(height: 8),
            Text(
              taboutparagraph,
              style: baseStyle,
            ),
            SizedBox(height: 24),
            Text(taboutHeader2, style: boldStyle),
            SizedBox(height: 8),
            Text(
              taboutparagraph2,
              style: baseStyle,
            ),
            SizedBox(height: 24),
            Text(taboutHeader3, style: boldStyle),
            SizedBox(height: 8),
            Text(
              taboutparagraph3,
              style: baseStyle,
            ),
            SizedBox(height: 24),
            Text(taboutHeader4, style: boldStyle),
            SizedBox(height: 8),
            Text(
              taboutparagraph4,
              style: baseStyle,
            ),
          ],
        ),
      ),
    );
  }
}
