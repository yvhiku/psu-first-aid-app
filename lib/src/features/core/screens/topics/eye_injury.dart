import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EyeInjuryScreen extends StatelessWidget {
  const EyeInjuryScreen({super.key});

  // Text constants
  static const String title = 'Eye Injury';
  static const String heading = 'Eye Injury First Aid';
  static const String intro =
      'Proper first aid for eye injuries can prevent further damage.';
  static const String typesHeading = 'Types of Eye Injuries:';
  static const String type1 = '- Foreign objects in the eye';
  static const String type2 = '- Chemical splashes';
  static const String type3 = '- Cuts or punctures';

  static const String stepsHeading = 'First Aid Steps:';
  static const String step1Title = 'Do NOT Rub the Eye';
  static const String step1Desc = 'Rubbing can cause further damage.';
  static const String step2Title = 'Flush with Clean Water';
  static const String step2Desc =
      'If chemicals or foreign particles are present, rinse eye gently with water for at least 15 minutes.';
  static const String step3Title = 'Cover the Eye';
  static const String step3Desc =
      'Use a clean cloth or eye shield to protect the injured eye without applying pressure.';
  static const String step4Title = 'Seek Medical Attention';
  static const String step4Desc =
      'For serious injuries or if pain persists, go to emergency care immediately.';

  static const String notesHeading = 'Important Notes:';
  static const String note1 = 'Do not try to remove embedded objects.';
  static const String note2 =
      'Avoid using any medication or ointment unless prescribed.';

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': title,
      'image': tSoreEyesimg,
      'screen': const EyeInjuryScreen(),
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
        actions: [
          Obx(
            () => IconButton(
              icon: Icon(
                topicController.isTopicSaved(currentTopic)
                    ? Icons.bookmark
                    : Icons.bookmark_border,
                color: topicController.isTopicSaved(currentTopic)
                    ? Colors.red
                    : null,
              ),
              onPressed: () {
                topicController.toggleTopicSave(currentTopic);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      topicController.isTopicSaved(currentTopic)
                          ? 'Added to saved topics'
                          : 'Removed from saved topics',
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(tSoreEyesimg, fit: BoxFit.cover),
            const SizedBox(height: 20),
            const Text(
              heading,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 10),
            const Text(intro, style: TextStyle(fontSize: 16)),
            const Divider(height: 30),
            const Text(
              typesHeading,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(type1),
            const Text(type2),
            const Text(type3),
            const Divider(height: 30),
            const Text(
              stepsHeading,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildStep(number: '1', title: step1Title, description: step1Desc),
            _buildStep(number: '2', title: step2Title, description: step2Desc),
            _buildStep(number: '3', title: step3Title, description: step3Desc),
            _buildStep(number: '4', title: step4Title, description: step4Desc),
            const Divider(height: 30),
            const Text(
              notesHeading,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildBulletPoint(note1),
            _buildBulletPoint(note2),
          ],
        ),
      ),
    );
  }

  static Widget _buildStep({
    required String number,
    required String title,
    required String description,
  }) {
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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ', style: TextStyle(fontSize: 16)),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}
