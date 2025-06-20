import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PoisonScreen extends StatelessWidget {
  const PoisonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': 'Poisons',
      'image': tPoisonimg,
      'screen': const PoisonScreen(),
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Poisons'),
        actions: [
          Obx(() => IconButton(
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
                            ? 'Added to saved topics'
                            : 'Removed from saved topics',
                      ),
                    ),
                  );
                },
              )),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(tPoisonimg, fit: BoxFit.cover),
            const SizedBox(height: 20),
            const Text(
              'Poisoning First Aid',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(height: 10),
            const Text(
              'Immediate actions to take in case of poisoning.',
              style: TextStyle(fontSize: 16),
            ),
            const Divider(height: 30),
            const Text(
              'First Aid Steps:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildStep(
              '1',
              'Remove the person from the source of poison if safe to do so.',
            ),
            _buildStep(
              '2',
              'Call emergency services immediately or a poison control center.',
            ),
            _buildStep(
              '3',
              'Check the person’s airway, breathing, and circulation.',
            ),
            _buildStep(
              '4',
              'If the person is unconscious and not breathing, begin CPR.',
            ),
            _buildStep(
              '5',
              'Do not induce vomiting unless instructed by a medical professional.',
            ),
            const Divider(height: 30),
            const Text(
              'Important Notes:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildBullet('Try to identify the poison and keep the container or sample for medical staff.'),
            _buildBullet('Avoid giving food, drinks, or medications without medical advice.'),
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
