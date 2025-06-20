import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SprainsStrains extends StatelessWidget {
  const SprainsStrains({super.key});

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': 'Sprains and Strains',
      'image': tSprainimg,
      'screen': const SprainsStrains(),
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sprains and Strains'),
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
            Image.asset(
              tSprainimg,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            const Text(
              'Sprains and Strains',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text(
              'Sprains are injuries to ligaments (tissue connecting bones), and strains are injuries to muscles or tendons.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Signs:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildBullet('Pain and swelling'),
            _buildBullet('Bruising or discoloration'),
            _buildBullet('Limited ability to move the affected joint or muscle'),
            _buildBullet('Muscle spasms or weakness'),
            const SizedBox(height: 20),
            const Text(
              'First Aid for Sprains and Strains:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildStep('1', 'Rest the injured area and avoid putting weight on it.'),
            _buildStep('2', 'Apply ice packs for 15-20 minutes every 2-3 hours to reduce swelling.'),
            _buildStep('3', 'Compress the area with an elastic bandage, but not too tightly.'),
            _buildStep('4', 'Elevate the injured limb above heart level to reduce swelling.'),
            _buildStep('5', 'Take over-the-counter pain relief if needed.'),
            _buildStep('6', 'Seek medical help if severe pain, swelling, or inability to move persists.'),
          ],
        ),
      ),
    );
  }

  Widget _buildStep(String number, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 14,
            backgroundColor: Colors.red,
            child: Text(number, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(width: 12),
          Expanded(child: Text(description, style: const TextStyle(fontSize: 16))),
        ],
      ),
    );
  }

  Widget _buildBullet(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ', style: TextStyle(fontSize: 20)),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 16))),
        ],
      ),
    );
  }
}
