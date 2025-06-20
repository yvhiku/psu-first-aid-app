import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiabeticsScreen extends StatelessWidget {
  const DiabeticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': 'Diabetics',
      'image': tDiabeticsimg,
      'screen': const DiabeticsScreen(),
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Diabetics'),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(tDiabeticsimg, fit: BoxFit.cover),
            const SizedBox(height: 20),
            const Text(
              'Diabetic Emergency First Aid',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(height: 10),
            const Text(
              'Recognizing and managing diabetic emergencies such as hypoglycemia (low blood sugar) is critical.',
              style: TextStyle(fontSize: 16),
            ),
            const Divider(height: 30),
            const Text(
              'Signs of Low Blood Sugar (Hypoglycemia):',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('- Shakiness, sweating, confusion, dizziness, irritability, headache'),
            const Divider(height: 30),
            const Text(
              'First Aid Steps:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildStep(
              number: '1',
              title: 'Check Responsiveness',
              description: 'If the person is conscious, ask if they have diabetes.',
            ),
            _buildStep(
              number: '2',
              title: 'Give Sugar',
              description: 'Give 15-20 grams of fast-acting sugar (fruit juice, glucose tablets, candy).',
            ),
            _buildStep(
              number: '3',
              title: 'Wait and Monitor',
              description: 'Wait 15 minutes, then recheck symptoms. Repeat sugar intake if needed.',
            ),
            _buildStep(
              number: '4',
              title: 'Call Emergency Services',
              description: 'If the person loses consciousness, becomes confused, or symptoms worsen, call for help immediately.',
            ),
            const Divider(height: 30),
            const Text(
              'Important Notes:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildBulletPoint('Do NOT give food or drink if the person is unconscious.'),
            _buildBulletPoint('If unconscious, place in recovery position and call emergency services.'),
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
            decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
            child: Center(
              child: Text(number, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text(description),
          ])),
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
