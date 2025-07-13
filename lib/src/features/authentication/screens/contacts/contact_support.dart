import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/constants/sizes.dart';
import 'package:first_aid_app/generated/l10n.dart';

// Stateless widget for the Contact Support page
class ContactSupportScreen extends StatelessWidget {
  const ContactSupportScreen({super.key});

  // Function to launch phone dialer
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
        SnackBar(content: Text(S.of(context).tCannotsendemail)),
      );
    }
  }

  // Function to launch email app
  Future<void> _launchEmail(BuildContext context) async {
    const email = 'yvhiku@yandex.ru';
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: email,
      queryParameters: {'subject': S.of(context).tsubject},
    );

    try {
      if (await canLaunchUrl(emailUri)) {
        await launchUrl(emailUri);
      } else {
        await _showNoEmailAppDialog(context, email);
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(S.of(context).tCannotsendemail)),
      );
    }
  }

  // Show dialog if no phone app is available
  Future<void> _showNoPhoneAppDialog(
    BuildContext context,
    String phoneNumber,
  ) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(S.of(context).tCannotmakecall),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(S.of(context).tcallthisnum),
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
            child: Text(S.of(context).tOK),
          ),
          TextButton(
            onPressed: () {
              Clipboard.setData(ClipboardData(text: phoneNumber));
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(S.of(context).tcopyphone)),
              );
              Navigator.pop(context);
            },
            child: Text(S.of(context).tCopy),
          ),
        ],
      ),
    );
  }

  // Show dialog if no email app is available
  Future<void> _showNoEmailAppDialog(BuildContext context, String email) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(S.of(context).tCannotsendemail),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(S.of(context).tpleaseContactUsAt),
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
            child: Text(S.of(context).tOK),
          ),
          TextButton(
            onPressed: () {
              Clipboard.setData(ClipboardData(text: email));
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(S.of(context).temailCopied)),
              );
              Navigator.pop(context);
            },
            child: Text(S.of(context).tCopy),
          ),
        ],
      ),
    );
  }

  // Main build method for UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).tContactSupport),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Support illustration
            Center(
              child: Image.asset(
                tSupportImage,
                height: MediaQuery.of(context).size.height * 0.2,
              ),
            ),
            const SizedBox(height: tDefaultSize),
            // Title
            Text(
              S.of(context).tweAreHereToHelp,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 10),
            // Subtitle
            Text(
              S.of(context).tcontactOurSupportTeam,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: tDefaultSize),
            // Email card
            _buildContactCard(
              context,
              icon: Icons.email,
              title: S.of(context).temailSupport,
              subtitle: S.of(context).tgetHelpViaEmail,
              actionText: S.of(context).tsendEmail,
              onTap: () => _launchEmail(context),
            ),
            // Phone card
            _buildContactCard(
              context,
              icon: Icons.phone,
              title: S.of(context).tphoneSupport,
              subtitle: S.of(context).tcallOurSupportTeam,
              actionText: S.of(context).tcallNow,
              onTap: () => _launchPhone(context),
            ),
            // Live chat placeholder
            _buildContactCard(
              context,
              icon: Icons.chat_bubble,
              title: S.of(context).tliveChat,
              subtitle: S.of(context).tchatWithAgent,
              actionText: S.of(context).tstartChat,
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(S.of(context).tliveChatComingSoon)),
                );
              },
            ),
            const SizedBox(height: tDefaultSize),
            // FAQ Section
            Text(
              S.of(context).tfaq,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 10),
            ..._buildFAQItems(context),
          ],
        ),
      ),
    );
  }

  // Builds reusable contact cards
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

  // Builds FAQ expansion tiles
  List<Widget> _buildFAQItems(BuildContext context) {
    final faqs = [
      {
        'question': S.of(context).tquestion1,
        'answer': S.of(context).tanswer1
      },
      {
        'question': S.of(context).tquestion2,
        'answer': S.of(context).tanswer2
      },
    ];

    return faqs.map((faq) {
      return ExpansionTile(
        title: Text(faq['question']!),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Text(faq['answer']!),
          ),
        ],
      );
    }).toList();
  }
}
