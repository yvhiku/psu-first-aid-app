import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/constants/colors.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/constants/sizes.dart';
import 'package:first_aid_app/src/features/authentication/provider/auth_provider.dart';
import 'package:first_aid_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class UniversalFirstAidAlgorithmScreen extends StatelessWidget {
  const UniversalFirstAidAlgorithmScreen({super.key});

  void _promptSignIn(BuildContext context, S s) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(s.signInRequiredTitle),
        content: Text(s.signInRequiredMessage),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: tWhiteColor,
              backgroundColor: tPrimaryColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              padding: EdgeInsets.symmetric(vertical: tButtonHeight),
            ),
            onPressed: () => Navigator.of(context).pop(),
            child: Text(s.tcancel),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: tWhiteColor,
              backgroundColor: tPrimaryColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              padding: EdgeInsets.symmetric(vertical: tButtonHeight),
            ),
            onPressed: () {
              Get.offAll(() => const LoginScreen());
            },
            child: Text(s.tLogin),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final TopicController topicController = Get.find();

    // You can swap the image with any suitable asset (e.g., a first-aid icon).
    // Example uses the same style assets you already have:
    final String headerImage = tHelpingPersonimg;

    final currentTopic = {
      'title': s.ufaa_title,
      'image': headerImage,
      'screen': const UniversalFirstAidAlgorithmScreen(),
      'type': 'universal_first_aid_algorithm',
    };

    return Scaffold(
      appBar: AppBar(
        title: Text(s.ufaa_title),
        actions: [
          Obx(() {
            final saved = topicController.isTopicSaved(currentTopic);
            final isSignedIn = Provider.of<AuthProvider1>(
              context,
              listen: false,
            ).isFullySignedIn;

            return IconButton(
              icon: Icon(
                saved ? Icons.bookmark : Icons.bookmark_border,
                color: saved ? Colors.red : null,
              ),
              onPressed: isSignedIn
                  ? () {
                      topicController.toggleTopicSave(currentTopic);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            saved ? s.tremovedTopic : s.addedToSavedTopicsText,
                          ),
                        ),
                      );
                    }
                  : () => _promptSignIn(context, s),
            );
          }),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(headerImage, fit: BoxFit.cover),
            const SizedBox(height: 20),

            // Red section title (same look & feel)
            Text(
              '${s.ufaa_title} ${s.ufaa_law}',
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 10),

            // Numbered steps
            _buildStep(number: '1', text: s.ufaa_step1),
            _buildStep(number: '2', text: s.ufaa_step2),
            _buildStep(number: '3', text: s.ufaa_step3),

            const Divider(height: 30),

            // Step 4 block: title + sub-steps (4.1, 4.2, 4.3)
            _buildStep(number: '4', text: s.ufaa_step4_title),
            const SizedBox(height: 8),
            _buildSubStep(label: '4.1', text: s.ufaa_step4_1),
            _buildSubStep(label: '4.2', text: s.ufaa_step4_2),
            _buildSubStep(label: '4.3', text: s.ufaa_step4_3),

            const Divider(height: 30),

            _buildStep(number: '5', text: s.ufaa_step5),
            _buildStep(number: '6', text: s.ufaa_step6),
            _buildStep(number: '7', text: s.ufaa_step7),
            _buildStep(number: '8', text: s.ufaa_step8),
            _buildStep(number: '9', text: s.ufaa_step9),
          ],
        ),
      ),
    );
  }

  /// Reusable numbered step (same visual language as your sample)
  Widget _buildStep({required String number, required String text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                number,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 15))),
        ],
      ),
    );
  }

  /// Sub-steps for the special Step 4 section
  Widget _buildSubStep({required String label, required String text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: tPrimaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: tSecondaryColor),
            ),
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 15))),
        ],
      ),
    );
  }
}
