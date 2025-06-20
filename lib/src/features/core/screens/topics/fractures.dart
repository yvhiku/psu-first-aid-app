import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FracturesScreen extends StatelessWidget {
  const FracturesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': 'Fractures',
      'image': tInjuryimg,
      'screen': const FracturesScreen(),
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Fractures'),
        actions: [
          Obx(
            () => IconButton(
              icon: Icon(
                topicController.isTopicSaved(currentTopic)
                    ? Icons.bookmark
                    : Icons.bookmark_border,
                color: topicController.isTopicSaved(currentTopic) ? Colors.red : null,
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.asset(tInjuryimg, fit: BoxFit.cover),
          const SizedBox(height: 20),
          const Text(
            'Fractures First Aid',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          const SizedBox(height: 10),
          const Text(
            'A fracture is a broken bone. Proper first aid can prevent complications.',
            style: TextStyle(fontSize: 16),
          ),
          const Divider(height: 30),
          const Text(
            'Signs of a Fracture:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text('- Pain and tenderness'),
          const Text('- Swelling or bruising'),
          const Text('- Deformity or unnatural positioning'),
          const Text('- Difficulty moving the limb'),
          const Divider(height: 30),
          const Text(
            'First Aid Steps:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          _buildStep(
            number: '1',
            title: 'Immobilize the Area',
            description: 'Keep the injured area still and avoid movement.',
          ),
          _buildStep(
            number: '2',
            title: 'Apply a Splint',
            description: 'Use a padded splint to support the injury without forcing it into place.',
          ),
          _buildStep(
            number: '3',
            title: 'Apply Cold Compress',
            description: 'Reduce swelling with ice wrapped in cloth (avoid direct contact with skin).',
          ),
          _buildStep(
            number: '4',
            title: 'Seek Medical Help',
            description: 'Call emergency services or take the person to hospital promptly.',
          ),
          const Divider(height: 30),
          const Text(
            'Important Notes:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          _buildBulletPoint('Do NOT try to realign the bone or push it back in place.'),
          _buildBulletPoint('If bleeding, apply pressure around the wound (not directly on the bone).'),
        ]),
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
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
          child: Center(
            child: Text(number, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text(description),
          ]),
        ),
      ]),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text('• ', style: TextStyle(fontSize: 16)),
        Expanded(child: Text(text)),
      ]),
    );
  }
}
