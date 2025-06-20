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
              'About PGU First Aid App',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'The PGU First Aid App is designed to provide essential first aid information to users in emergency situations. Developed with students and the public in mind, this app offers easy-to-follow guides on handling common injuries and health emergencies.',
              style: baseStyle,
            ),
            SizedBox(height: 24),
            Text('Features:', style: boldStyle),
            SizedBox(height: 8),
            Text(
              '- Step-by-step instructions for first aid procedures.\n'
              '- Topics include CPR, burns, choking, fractures, bleeding, and more.\n'
              '- Offline access to vital information.\n'
              '- Clean and simple interface for quick navigation.',
              style: baseStyle,
            ),
            SizedBox(height: 24),
            Text('Who Developed This App?', style: boldStyle),
            SizedBox(height: 8),
            Text(
              'This app was developed as part of a student project at PGU (Penza State University), with the goal of enhancing public safety awareness and response skills.',
              style: baseStyle,
            ),
            SizedBox(height: 24),
            Text('Disclaimer:', style: boldStyle),
            SizedBox(height: 8),
            Text(
              'This app is intended for educational purposes and general guidance only. It is not a substitute for professional medical advice or training. In a medical emergency, always contact emergency services or a healthcare professional.',
              style: baseStyle,
            ),
            SizedBox(height: 24),
            Text('Contact Us:', style: boldStyle),
            SizedBox(height: 8),
            Text(
              'For feedback or inquiries, please contact:\nyvhiku@yandex.ru',
              style: baseStyle,
            ),
          ],
        ),
      ),
    );
  }
}
