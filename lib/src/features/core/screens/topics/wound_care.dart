import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WoundCare extends StatelessWidget {
  const WoundCare({super.key});

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': 'Wound Care',
      'image': tBandAidimg,
      'screen': const WoundCare(),
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Wound Care'),
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
            Image.asset(tBandAidimg, fit: BoxFit.cover),
            const SizedBox(height: 16),
            const Text(
              'Wound Care',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text(
              'Proper wound care helps prevent infection and promotes faster healing.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Steps for Basic Wound Care:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildStep(
              '1',
              'Wash your hands thoroughly before touching the wound.',
            ),
            _buildStep(
              '2',
              'Stop the bleeding by applying gentle pressure with a clean cloth.',
            ),
            _buildStep(
              '3',
              'Clean the wound with clean water. Avoid using hydrogen peroxide or iodine directly as they may damage tissue.',
            ),
            _buildStep(
              '4',
              'Apply an antibiotic ointment to prevent infection.',
            ),
            _buildStep(
              '5',
              'Cover the wound with a sterile bandage or dressing.',
            ),
            _buildStep(
              '6',
              'Change the dressing daily or whenever it becomes wet or dirty.',
            ),
            _buildStep(
              '7',
              'Watch for signs of infection: increased redness, swelling, warmth, pain, or pus.',
            ),
            const SizedBox(height: 20),
            const Text(
              'When to Seek Medical Help:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildBullet('The wound is deep, large, or won’t stop bleeding.'),
            _buildBullet('You see signs of infection.'),
            _buildBullet(
              'The wound was caused by a dirty or rusty object, or an animal bite.',
            ),
            _buildBullet(
              'You have not had a tetanus shot in the last 5 years.',
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
