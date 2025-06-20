import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/constants/text_strings.dart'; // Your constants file for all strings
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeadInjury extends StatelessWidget {
  const HeadInjury({super.key});

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': headInjuryTitle,
      'image': tHeadimg,
      'screen': const HeadInjury(),
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text(headInjuryTitle),
        actions: [
          Obx(
            () => IconButton(
              icon: Icon(
                topicController.isTopicSaved(currentTopic)
                    ? Icons.bookmark
                    : Icons.bookmark_border,
                color: topicController.isTopicSaved(currentTopic) ? Colors.red : null,
              ),
              onPressed: () {
                topicController.toggleTopicSave(currentTopic);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      topicController.isTopicSaved(currentTopic)
                          ? taddedtosaved
                          : tremovedtopic,
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
            Image.asset(tHeadimg, fit: BoxFit.cover),
            const SizedBox(height: 20),
            const Text(
              headInjuryHeading,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(height: 10),
            const Text(
              headInjuryIntro,
              style: TextStyle(fontSize: 16),
            ),
            const Divider(height: 30),
            const Text(
              headInjuryStepsHeading,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildStep(
              '1',
              headInjuryStep1Title,
              headInjuryStep1Desc,
            ),
            _buildStep(
              '2',
              headInjuryStep2Title,
              headInjuryStep2Desc,
            ),
            _buildStep(
              '3',
              headInjuryStep3Title,
            ),
            _buildStep(
              '4',
              headInjuryStep4Title,
            ),
            _buildStep(
              '5',
              headInjuryStep5Title,
            ),
            const Divider(height: 30),
            const Text(
              headInjuryNotesHeading,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildBullet(headInjuryNote1),
            _buildBullet(headInjuryNote2),
          ],
        ),
      ),
    );
  }

  Widget _buildStep(String number, String title, [String? description]) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 28,
            height: 28,
            decoration: const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
            child: Center(
              child: Text(
                number,
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                if (description != null) Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBullet(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ', style: TextStyle(fontSize: 18)),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}
