import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrugOverdoseScreen extends StatelessWidget {
  const DrugOverdoseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': 'Drug Overdose',
      'image': tDrugOverDoseimg,
      'screen': const DrugOverdoseScreen(),
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Drug Overdose'),
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
          Image.asset(tDrugOverDoseimg, fit: BoxFit.cover),
          const SizedBox(height: 20),
          const Text(
            'Drug Overdose First Aid',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          const SizedBox(height: 10),
          const Text(
            'Recognize the signs of overdose and provide immediate help.',
            style: TextStyle(fontSize: 16),
          ),
          const Divider(height: 30),
          const Text(
            'Signs of Drug Overdose:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text('- Unresponsiveness or unconsciousness'),
          const Text('- Difficulty breathing or slow breathing'),
          const Text('- Seizures or convulsions'),
          const Text('- Vomiting, pale or clammy skin'),
          const Divider(height: 30),
          const Text(
            'First Aid Steps:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          _buildStep(
            number: '1',
            title: 'Call Emergency Services',
            description: 'Immediately call for professional medical help.',
          ),
          _buildStep(
            number: '2',
            title: 'Ensure Safety',
            description: 'Make sure the person and yourself are safe from harm.',
          ),
          _buildStep(
            number: '3',
            title: 'Check Responsiveness and Breathing',
            description: 'If unresponsive, check if they are breathing.',
          ),
          _buildStep(
            number: '4',
            title: 'Perform CPR if Needed',
            description: 'If no breathing or pulse, start CPR until help arrives.',
          ),
          _buildStep(
            number: '5',
            title: 'Place in Recovery Position',
            description: 'If breathing but unconscious, place on their side to keep airway clear.',
          ),
          const Divider(height: 30),
          const Text(
            'Important Notes:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          _buildBulletPoint('Do NOT induce vomiting unless instructed by a medical professional.'),
          _buildBulletPoint('Try to identify the substance involved to inform emergency responders.'),
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
