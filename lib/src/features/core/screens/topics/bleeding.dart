import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Bleeding extends StatelessWidget {
  const Bleeding({super.key});

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': 'Bleeding',
      'image': tWoundimg,
      'screen': const Bleeding(),
      'type': 'Bleeding',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bleeding'),
        actions: [
          Obx(() => IconButton(
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
              )),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(tWoundimg, fit: BoxFit.cover),
            const SizedBox(height: 20),
            const Text(
              'First Aid for Bleeding',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(height: 10),
            const Text(
              'Quick action is critical in stopping bleeding to prevent shock or more serious injury.',
              style: TextStyle(fontSize: 16),
            ),
            const Divider(height: 30),
            const Text(
              'Steps to Stop Bleeding:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            _buildStep('1', 'Protect Yourself',
                'Wear gloves if available to avoid contact with blood.'),
            _buildStep('2', 'Apply Pressure',
                'Use a clean cloth or gauze to press firmly on the wound.'),
            _buildStep('3', 'Elevate the Area',
                'Raise the injured limb above heart level if possible.'),
            _buildStep('4', 'Use a Bandage',
                'Wrap the wound tightly, but not so tight as to cut off circulation.'),
            _buildStep('5', 'Seek Emergency Help',
                'If bleeding is severe or doesn’t stop after 10 minutes.'),
            const Divider(height: 30),
            const Text(
              'Warnings:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            _buildBulletPoint('Do not remove objects embedded in the wound.'),
            _buildBulletPoint('Do not use tourniquets unless trained.'),
            _buildBulletPoint('Watch for signs of shock (pale skin, weakness).'),
          ],
        ),
      ),
    );
  }

  Widget _buildStep(String number, String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.red,
            child: Text(number, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
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
