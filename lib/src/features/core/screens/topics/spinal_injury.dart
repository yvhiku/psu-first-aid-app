import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SpinalInjury extends StatelessWidget {
  const SpinalInjury({super.key});

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': 'Spinal Injury',
      'image': tSpinalInjuryimg,
      'screen': const SpinalInjury(),
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Spinal Injury'),
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
            Image.asset(tSpinalInjuryimg, fit: BoxFit.cover),
            const SizedBox(height: 16),
            const Text(
              'Spinal Injury',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text(
              'A spinal injury involves damage to the spinal cord or bones of the spine, potentially leading to paralysis or loss of sensation.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Signs of Spinal Injury:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildBullet('Severe pain or pressure in neck or back'),
            _buildBullet('Weakness, paralysis, or loss of sensation in limbs'),
            _buildBullet('Loss of bladder or bowel control'),
            _buildBullet('Unusual positioning of head or neck'),
            _buildBullet('Difficulty breathing'),
            const SizedBox(height: 20),
            const Text(
              'First Aid for Spinal Injury:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildStep('1', 'Call emergency services immediately.'),
            _buildStep(
              '2',
              'Do not move the injured person unless absolutely necessary.',
            ),
            _buildStep(
              '3',
              'If movement is necessary, stabilize the head and neck to prevent further injury.',
            ),
            _buildStep('4', 'Keep the person lying flat and still.'),
            _buildStep(
              '5',
              'Monitor breathing and be prepared to perform CPR if necessary.',
            ),
            _buildStep('6', 'Reassure the injured person and keep them calm.'),
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
            child: Text(
              number,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(description, style: const TextStyle(fontSize: 16)),
          ),
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
