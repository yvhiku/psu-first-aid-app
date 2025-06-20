import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeartCondition extends StatelessWidget {
  const HeartCondition({super.key});

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': 'Heart Conditions',
      'image': tHeartAttackimg,
      'screen': const HeartCondition(),
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Heart Conditions'),
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
            Image.asset(tHeartAttackimg, fit: BoxFit.cover),
            const SizedBox(height: 20),
            const Text(
              'Heart Conditions First Aid',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(height: 10),
            const Text(
              'Immediate aid for heart attacks and other acute heart-related conditions.',
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
              'Help the person to sit down and remain calm.',
            ),
            _buildStep(
              '2',
              'Loosen any tight clothing around the chest.',
            ),
            _buildStep(
              '3',
              'If prescribed, assist the person to take their heart medication (e.g., nitroglycerin).',
            ),
            _buildStep(
              '4',
              'Call emergency services immediately.',
            ),
            _buildStep(
              '5',
              'If the person becomes unconscious and stops breathing, start CPR immediately.',
            ),
            const Divider(height: 30),
            const Text(
              'Important Notes:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildBullet('Do not give the person food or drinks except prescribed medicine.'),
            _buildBullet('Never leave the person alone.'),
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
