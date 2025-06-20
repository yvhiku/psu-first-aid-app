import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BurnScreen extends StatelessWidget {
  const BurnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': 'Burns',
      'image': tBurnimg,
      'screen': const BurnScreen(),
      'type': 'Burns',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Burns'),
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
            Image.asset(tBurnimg, fit: BoxFit.cover),
            const SizedBox(height: 20),
            const Text(
              'First Aid for Burns',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(height: 10),
            const Text(
              'Burns can range from mild to life-threatening. First aid helps reduce damage and pain.',
              style: TextStyle(fontSize: 16),
            ),
            const Divider(height: 30),
            const Text(
              'Steps to Treat Burns:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            _buildStep('1', 'Stop the Burning Process',
                'Remove the person from the heat source and extinguish flames.'),
            _buildStep('2', 'Cool the Burn',
                'Use cool (not cold) running water for 10–20 minutes.'),
            _buildStep('3', 'Protect the Area',
                'Cover loosely with a clean, non-stick cloth or dressing.'),
            _buildStep('4', 'Avoid Creams or Ice',
                'Do not apply butter, ointments, or ice directly.'),
            _buildStep('5', 'Seek Help',
                'Call emergency services for severe or large burns.'),
            const Divider(height: 30),
            const Text(
              'Burn Severity:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            _buildBulletPoint('First-degree: Red, painful (like sunburn).'),
            _buildBulletPoint('Second-degree: Blisters, intense pain.'),
            _buildBulletPoint('Third-degree: Charred, white, painless — call 911.'),
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
