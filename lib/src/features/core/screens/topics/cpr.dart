import 'package:first_aid_app/src/constants/colors.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CprScreen extends StatelessWidget {
  const CprScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': 'CPR Instructions',
      'image': tCprimg,
      'screen': const CprScreen(),
      'type': 'cpr',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('CPR Instructions'),
        actions: [
          Obx(
            () => // In your topic screens (e.g., CprScreen)
            IconButton(
              icon: Icon(
                topicController.isTopicSaved(currentTopic)
                    ? Icons.bookmark
                    : Icons.bookmark_border,
                color: topicController.isTopicSaved(currentTopic)
                    ? Colors.red
                    : null,
              ),
              onPressed: () async {
                await topicController.toggleTopicSave(currentTopic);
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
            Image.asset(tCprimg, fit: BoxFit.cover),
            const SizedBox(height: 20),
            const Text(
              'Cardiopulmonary Resuscitation (CPR)',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Performing CPR can save a life when someone’s breathing or heartbeat has stopped.',
              style: TextStyle(fontSize: 16),
            ),
            const Divider(height: 30),
            const Text(
              'Steps to Perform CPR:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildStep(
              number: '1',
              title: 'Check Responsiveness',
              description:
                  'Tap the person’s shoulder and shout, "Are you okay?"',
            ),
            _buildStep(
              number: '2',
              title: 'Call for Help',
              description:
                  'If unresponsive, call emergency services (e.g., 911) or ask someone to call.',
            ),
            _buildStep(
              number: '3',
              title: 'Open the Airway',
              description:
                  'Tilt the head back slightly and lift the chin to open the airway.',
            ),
            _buildStep(
              number: '4',
              title: 'Check for Breathing',
              description:
                  'Look, listen, and feel for breathing (no more than 10 seconds).',
            ),
            _buildStep(
              number: '5',
              title: 'Start Chest Compressions',
              description:
                  'Place hands on the center of the chest. Push hard and fast (2 inches deep at 100-120 compressions per minute).',
            ),
            _buildStep(
              number: '6',
              title: 'Give Rescue Breaths',
              description:
                  'After 30 compressions, give 2 breaths (pinch the nose, cover the mouth with yours, and blow until the chest rises).',
            ),
            _buildStep(
              number: '7',
              title: 'Continue CPR',
              description:
                  'Repeat cycles of 30 compressions and 2 breaths until help arrives or the person revives.',
            ),
            const Divider(height: 30),
            const Text(
              'Important Notes:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildBulletPoint('Use an AED if available.'),
            _buildBulletPoint('For infants, use 2 fingers for compressions.'),
            _buildBulletPoint(
              'Do not stop unless the person starts breathing or help arrives.',
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Link to a CPR demo video or emergency call
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: tPrimaryColor, // Use your app's primary color
                foregroundColor: Colors.white, // Text color
                minimumSize: const Size(
                  double.infinity,
                  50,
                ), // Full width + height
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0), // Rounded corners
                ),
                elevation: 4, // Shadow
              ),
              child: const Text(
                'Watch CPR Demonstration',
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
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                number,
                style: TextStyle(
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
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
          Text('• ', style: TextStyle(fontSize: 16)),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}
