import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/constants/sizes.dart';
import 'package:first_aid_app/src/constants/text_strings.dart';

class ContactSupportScreen extends StatelessWidget {
  const ContactSupportScreen({super.key});

  Future<void> _launchPhone(BuildContext context) async {
    const phoneNumber = '+79960808085';
    final Uri phoneUri = Uri(scheme: tTel, path: phoneNumber);

    try {
      if (await canLaunchUrl(phoneUri)) {
        await launchUrl(phoneUri);
      } else {
        await _showNoPhoneAppDialog(context, phoneNumber);
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to launch phone: ${e.toString()}')),
      );
    }
  }

  Future<void> _launchEmail(BuildContext context) async {
    const email = 'yvhiku@yandex.ru';
    const subject = tsubject;
    final Uri emailUri = Uri(
      scheme: tMailto,
      path: email,
      queryParameters: {tSubject1 : subject},
    );

    try {
      if (await canLaunchUrl(emailUri)) {
        await launchUrl(emailUri);
      } else {
        await _showNoEmailAppDialog(context, email);
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to launch email: ${e.toString()}')),
      );
    }
  }

  Future<void> _showNoPhoneAppDialog(
    BuildContext context,
    String phoneNumber,
  ) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(tCannotmakecall),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(tcallthisnum),
            const SizedBox(height: 10),
            SelectableText(
              phoneNumber,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(tOK),
          ),
          TextButton(
            onPressed: () {
              Clipboard.setData(ClipboardData(text: phoneNumber));
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text(tcopyphone)),
              );
              Navigator.pop(context);
            },
            child: const Text(tCopy),
          ),
        ],
      ),
    );
  }

  Future<void> _showNoEmailAppDialog(BuildContext context, String email) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(tCannotsendemail),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(tPleasecontactusat),
            const SizedBox(height: 10),
            SelectableText(
              email,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(tOK),
          ),
          TextButton(
            onPressed: () {
              Clipboard.setData(ClipboardData(text: email));
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text(tEmailcopied)));
              Navigator.pop(context);
            },
            child: const Text(tCopy),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tContactSupport),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                tSupportImage,
                height: MediaQuery.of(context).size.height * 0.2,
              ),
            ),
            const SizedBox(height: tDefaultSize),
            Text(
              theretohelp,
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              tcontactoursupport,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: tDefaultSize),
            _buildContactCard(
              context,
              icon: Icons.email,
              title: tEmailsupport,
              subtitle: tGetHelpviaemail,
              actionText: tSendemail,
              onTap: () => _launchEmail(context),
            ),
            _buildContactCard(
              context,
              icon: Icons.phone,
              title: tPhonesupport,
              subtitle: tCalloursupport,
              actionText: tCallNow,
              onTap: () => _launchPhone(context),
            ),
            _buildContactCard(
              context,
              icon: Icons.chat_bubble,
              title: tLivechat,
              subtitle: tchatwithagent,
              actionText: tStartchat,
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text(tchatagentcomingsoon)),
                );
              },
            ),
            const SizedBox(height: tDefaultSize),
            Text(
              tFAQ,
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ..._buildFAQItems(context),
          ],
        ),
      ),
    );
  }

  Widget _buildContactCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required String actionText,
    required VoidCallback onTap,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: tDefaultSize - 10),
      child: Padding(
        padding: const EdgeInsets.all(tDefaultSize - 5),
        child: Row(
          children: [
            Icon(
              icon,
              size: 40,
              color: const Color.fromARGB(255, 125, 132, 197),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: Theme.of(context).textTheme.titleMedium),
                  Text(subtitle, style: Theme.of(context).textTheme.bodySmall),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: onTap,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 125, 132, 197),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                actionText,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildFAQItems(BuildContext context) {
    final faqs = [
      {
        tQuestion: tQuestion1,
        tAnswer:
            tAnswer1,
      },
      {
        tQuestion: tQuestion2,
        tAnswer:
            tAnswer2,
      },
    ];

    return faqs.map((faq) {
      return ExpansionTile(
        title: Text(faq[tQuestion]!),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Text(faq[tAnswer]!),
          ),
        ],
      );
    }).toList();
  }
}
