import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Seizures extends StatelessWidget {
  const Seizures({super.key});

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': 'Seizures',
      'image': tSeizureimg,
      'screen': const Seizures(),
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Seizures'),
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
              tSeizureimg, fit: BoxFit.cover
            ),
            const SizedBox(height: 16),
            const Text(
              'Seizures',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text(
              'A seizure is a sudden, uncontrolled electrical disturbance in the brain. It can cause changes in behavior, movements, or consciousness.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'First Aid for Seizures:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildStep(
              '1',
              'Stay calm and keep others away from the person to avoid injury.',
            ),
            _buildStep(
              '2',
              'Protect their head by placing something soft underneath.',
            ),
            _buildStep(
              '3',
              'Turn the person onto their side to keep the airway clear.',
            ),
            _buildStep(
              '4',
              'Do not restrain their movements or put anything in their mouth.',
            ),
            _buildStep(
              '5',
              'Time the seizure. If it lasts longer than 5 minutes, call emergency services.',
            ),
            _buildStep(
              '6',
              'After the seizure, comfort and reassure the person as they regain consciousness.',
            ),
            const SizedBox(height: 20),
            const Text(
              'Important:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            _buildBullet(
              'Call emergency services if this is the person’s first seizure.',
            ),
            _buildBullet(
              'Seek medical help if the person has trouble breathing or does not wake up after the seizure.',
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
