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
    final Uri phoneUri = Uri(scheme: 'tel', path: phoneNumber);

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
    const subject = 'App Support Request';
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: email,
      queryParameters: {'subject': subject},
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
        title: const Text('Cannot Make Call'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Please call this number directly:'),
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
            child: const Text('OK'),
          ),
          TextButton(
            onPressed: () {
              Clipboard.setData(ClipboardData(text: phoneNumber));
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Phone number copied')),
              );
              Navigator.pop(context);
            },
            child: const Text('COPY'),
          ),
        ],
      ),
    );
  }

  Future<void> _showNoEmailAppDialog(BuildContext context, String email) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Cannot Send Email'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Please contact us at:'),
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
            child: const Text('OK'),
          ),
          TextButton(
            onPressed: () {
              Clipboard.setData(ClipboardData(text: email));
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text('Email copied')));
              Navigator.pop(context);
            },
            child: const Text('COPY'),
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
              "We're here to help!",
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              "Contact our support team through any of the following methods:",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: tDefaultSize),
            _buildContactCard(
              context,
              icon: Icons.email,
              title: "Email Support",
              subtitle: "Get help via email",
              actionText: "Send Email",
              onTap: () => _launchEmail(context),
            ),
            _buildContactCard(
              context,
              icon: Icons.phone,
              title: "Phone Support",
              subtitle: "Call our support team",
              actionText: "Call Now",
              onTap: () => _launchPhone(context),
            ),
            _buildContactCard(
              context,
              icon: Icons.chat_bubble,
              title: "Live Chat",
              subtitle: "Chat with an agent",
              actionText: "Start Chat",
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Live chat coming soon!")),
                );
              },
            ),
            const SizedBox(height: tDefaultSize),
            Text(
              "Frequently Asked Questions",
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
        "question": "How do I reset my password?",
        "answer":
            "You don't need to reset password cause you automatically login to your account using Google Account.",
      },
      {
        "question": "How do I contact customer service?",
        "answer":
            "Use any of the contact methods above or visit our website for more options.",
      },
    ];

    return faqs.map((faq) {
      return ExpansionTile(
        title: Text(faq["question"]!),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Text(faq["answer"]!),
          ),
        ],
      );
    }).toList();
  }
}
