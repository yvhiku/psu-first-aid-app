import 'package:first_aid_app/src/constants/colors.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AssessingInjuredPerson extends StatelessWidget {
  const AssessingInjuredPerson({super.key});

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find();

    final currentTopic = {
      'title': 'Assessing Injured Person',
      'image': tHelpingPersonimg,
      'screen': const AssessingInjuredPerson(),
      'type': 'assessingInjuredPerson',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Assessing Injured Person'),
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
            Image.asset(tHelpingPersonimg, fit: BoxFit.cover),
            const SizedBox(height: 20),
            const Text(
              'Assessing an Injured Person',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Before providing first aid, assess the situation and the injured person. This ensures your own safety and allows effective help.',
              style: TextStyle(fontSize: 16),
            ),
            const Divider(height: 30),
            const Text(
              'Initial Assessment Steps:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildStep(
              number: '1',
              title: 'Ensure Scene Safety',
              description:
                  'Check for immediate dangers like fire, traffic, or electrical hazards. Do not enter an unsafe scene.',
            ),
            _buildStep(
              number: '2',
              title: 'Check Responsiveness',
              description:
                  'Gently shake the person and ask loudly, "Can you hear me?" If no response, proceed to call for help.',
            ),
            _buildStep(
              number: '3',
              title: 'Call Emergency Services',
              description:
                  'Call 112 or ask a bystander to do so. Provide your location and details of the situation.',
            ),
            _buildStep(
              number: '4',
              title: 'Open the Airway',
              description:
                  'Tilt the head back and lift the chin to open the airway if the person is unconscious.',
            ),
            _buildStep(
              number: '5',
              title: 'Check for Breathing',
              description:
                  'Look, listen, and feel for breathing. If not breathing, begin CPR immediately.',
            ),
            _buildStep(
              number: '6',
              title: 'Check for Bleeding',
              description:
                  'Quickly scan for major bleeding. Apply direct pressure to wounds using a cloth or bandage.',
            ),
            _buildStep(
              number: '7',
              title: 'Treat for Shock',
              description:
                  'Keep the person warm and reassure them. Do not give food or drink.',
            ),
            const Divider(height: 30),
            const Text(
              'Important Notes:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildBulletPoint(
                'Never put yourself in danger to help someone.'),
            _buildBulletPoint(
                'Only move the injured person if there is an immediate threat.'),
            _buildBulletPoint(
                'Always check response, breathing, and bleeding in that order.'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Link to educational video or external resource
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
                'Watch Assessment Demo',
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
