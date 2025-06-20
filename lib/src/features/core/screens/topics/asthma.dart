import 'package:first_aid_app/src/constants/colors.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Asthma extends StatelessWidget {
  const Asthma({super.key});

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find();

    final currentTopic = {
      'title': 'Asthma',
      'image': tAsthmaimg,
      'screen': const Asthma(),
      'type': 'asthma',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Asthma'),
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(tAsthmaimg, fit: BoxFit.cover),
            const SizedBox(height: 20),
            const Text(
              'Asthma Attack First Aid',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Asthma attacks can be life-threatening. Quick and correct action is crucial to help someone who is having difficulty breathing.',
              style: TextStyle(fontSize: 16),
            ),
            const Divider(height: 30),
            const Text(
              'Steps to Help During an Asthma Attack:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildStep(
              number: '1',
              title: 'Stay Calm and Reassure',
              description:
                  'Help the person stay calm and encourage them to sit upright and breathe slowly.',
            ),
            _buildStep(
              number: '2',
              title: 'Use Inhaler (Reliever)',
              description:
                  'Help them take their quick-relief inhaler (usually blue). They may take 1–2 puffs every 30–60 seconds, up to 10 puffs.',
            ),
            _buildStep(
              number: '3',
              title: 'Loosen Tight Clothing',
              description:
                  'Loosen any tight clothing around the neck or chest to help with breathing.',
            ),
            _buildStep(
              number: '4',
              title: 'Call Emergency Services',
              description:
                  'If breathing doesn’t improve after 10 puffs or worsens, call 112 immediately.',
            ),
            _buildStep(
              number: '5',
              title: 'Repeat if Needed',
              description:
                  'Continue giving 1 puff every 30–60 seconds up to another 10 puffs while waiting for help.',
            ),
            const Divider(height: 30),
            const Text(
              'Important Notes:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildBulletPoint(
                'Do not leave the person alone during an attack.'),
            _buildBulletPoint(
                'Do not lie the person down—keep them sitting upright.'),
            _buildBulletPoint(
                'Avoid triggers like smoke, cold air, or allergens.'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Link to a demo or educational asthma video
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: tPrimaryColor,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                elevation: 4,
              ),
              child: const Text(
                'Watch Asthma Demo',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStep({
    required String number,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                number,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style:
                      const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
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
      padding: const EdgeInsets.symmetric(vertical: 4.0),
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
