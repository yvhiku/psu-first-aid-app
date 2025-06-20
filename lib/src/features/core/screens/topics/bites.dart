import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Bites extends StatelessWidget {
  const Bites({super.key});

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': 'Bites',
      'image': tBitinigimg,
      'screen': const Bites(),
      'type': 'Bites',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bites'),
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
            Image.asset(tBitinigimg, fit: BoxFit.cover),
            const SizedBox(height: 20),
            const Text(
              'Bite Wound First Aid',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(height: 10),
            const Text(
              'Animal or insect bites can transmit diseases and lead to infections if untreated.',
              style: TextStyle(fontSize: 16),
            ),
            const Divider(height: 30),
            const Text(
              'Steps to Treat Bites:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildStep('1', 'Move to Safety',
                'Ensure the area is safe and the biting animal is no longer a threat.'),
            _buildStep('2', 'Clean the Wound',
                'Wash with soap and running water for several minutes.'),
            _buildStep('3', 'Stop the Bleeding',
                'Apply gentle pressure with a clean cloth or bandage.'),
            _buildStep('4', 'Apply Antiseptic',
                'Use an antiseptic solution to prevent infection.'),
            _buildStep('5', 'Cover the Wound',
                'Use a sterile bandage to protect the bite.'),
            _buildStep('6', 'Seek Medical Help',
                'Especially important for deep bites or suspected rabies exposure.'),
            const Divider(height: 30),
            const Text(
              'Important Notes:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildBulletPoint('Tetanus shot may be needed.'),
            _buildBulletPoint('Watch for signs of infection (redness, swelling, pus).'),
            _buildBulletPoint('If bitten by a wild animal, report to authorities.'),
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
