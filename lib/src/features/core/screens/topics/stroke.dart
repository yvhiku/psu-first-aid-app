import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StrokeScreen extends StatelessWidget {
  const StrokeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': 'Stroke',
      'image': tStrotkeimg,
      'screen': const StrokeScreen(),
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Stroke'),
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
            Image.asset(tStrotkeimg, fit: BoxFit.cover),
            const SizedBox(height: 16),
            const Text(
              'Stroke',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text(
              'A stroke occurs when blood flow to part of the brain is interrupted or reduced, depriving brain tissue of oxygen and nutrients.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Signs and Symptoms:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildBullet(
              'Sudden numbness or weakness of face, arm, or leg, especially on one side of the body',
            ),
            _buildBullet('Confusion, trouble speaking or understanding speech'),
            _buildBullet('Trouble seeing in one or both eyes'),
            _buildBullet(
              'Difficulty walking, dizziness, loss of balance or coordination',
            ),
            _buildBullet('Severe headache with no known cause'),
            const SizedBox(height: 20),
            const Text(
              'First Aid for Stroke:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildStep(
              '1',
              'Call emergency services immediately. Time is critical.',
            ),
            _buildStep(
              '2',
              'Keep the person safe and comfortable; help them sit or lie down.',
            ),
            _buildStep(
              '3',
              'If unconscious but breathing, place in the recovery position.',
            ),
            _buildStep('4', 'Do not give food, drink, or medication.'),
            _buildStep(
              '5',
              'Monitor their breathing and responsiveness until help arrives.',
            ),
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
