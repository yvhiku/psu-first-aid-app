import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeadInjury extends StatelessWidget {
  const HeadInjury({super.key});

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': 'Head Injury',
      'image': tHeadimg,
      'screen': const HeadInjury(),
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Head Injury'),
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
            Image.asset(tHeadimg, fit: BoxFit.cover),
            const SizedBox(height: 20),
            const Text(
              'Head Injury First Aid',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(height: 10),
            const Text(
              'Providing first aid for head injuries is crucial to prevent further damage and complications.',
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
              'Keep the person still and calm.',
              'Avoid moving the head or neck to prevent spinal injury.',
            ),
            _buildStep(
              '2',
              'Check for any bleeding or wounds on the head.',
              'Apply gentle pressure with a clean cloth if bleeding is present.',
            ),
            _buildStep(
              '3',
              'If the person is unconscious, ensure the airway is clear.',
            ),
            _buildStep(
              '4',
              'If vomiting occurs, turn the person onto their side to prevent choking.',
            ),
            _buildStep(
              '5',
              'Call emergency services immediately.',
            ),
            const Divider(height: 30),
            const Text(
              'Important Notes:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildBullet('Do not give the person food or drink.'),
            _buildBullet('Avoid applying ice or cold packs without medical advice.'),
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
