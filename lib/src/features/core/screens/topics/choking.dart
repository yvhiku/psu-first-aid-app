import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChokingScreen extends StatelessWidget {
  const ChokingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': 'Choking',
      'image': tChokingimg,
      'screen': const ChokingScreen(),
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Choking'),
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
            Image.asset(tChokingimg, fit: BoxFit.cover),
            const SizedBox(height: 20),
            const Text(
              'Choking First Aid',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Choking occurs when an object blocks the airway, preventing normal breathing.',
              style: TextStyle(fontSize: 16),
            ),
            const Divider(height: 30),
            const Text(
              'Signs of Choking:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text('- Difficulty breathing or noisy breathing'),
            const Text('- Inability to speak or cough effectively'),
            const Text('- Clutching the throat (universal choking sign)'),
            const Divider(height: 30),
            const Text(
              'First Aid Steps:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            _buildStep(
              number: '1',
              title: 'Encourage Coughing',
              description:
                  'If the person can cough, encourage them to keep coughing to try to dislodge the object.',
            ),
            _buildStep(
              number: '2',
              title: 'Perform Back Blows',
              description:
                  'If coughing is ineffective, lean the person forward and deliver 5 firm back blows between the shoulder blades with the heel of your hand.',
            ),
            _buildStep(
              number: '3',
              title: 'Perform Abdominal Thrusts',
              description:
                  'If back blows do not clear the airway, perform 5 abdominal thrusts (Heimlich maneuver): stand behind, place a fist above the navel, grasp it with the other hand, and pull sharply inward and upward.',
            ),
            _buildStep(
              number: '4',
              title: 'Repeat as Necessary',
              description:
                  'Alternate between 5 back blows and 5 abdominal thrusts until the object is expelled or the person becomes unconscious.',
            ),
            _buildStep(
              number: '5',
              title: 'Call Emergency Services',
              description:
                  'If the person becomes unconscious or choking persists, call emergency services immediately and begin CPR if trained.',
            ),
            const Divider(height: 30),
            const Text(
              'Important Notes:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            _buildBulletPoint(
                'Do not perform abdominal thrusts on infants under 1 year old—use appropriate infant choking techniques.'),
            _buildBulletPoint(
                'If you are alone and choking, try to perform abdominal thrusts on yourself or call for help.'),
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
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 28,
            height: 28,
            decoration:
                const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
            child: Center(
              child: Text(
                number,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
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
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ', style: TextStyle(fontSize: 18)),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}
