import 'package:first_aid_app/src/constants/colors.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllergicReactions extends StatelessWidget {
  const AllergicReactions({super.key});

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find();

    final currentTopic = {
      'title': 'Allergic Reactions',
      'image': tDustimg,
      'screen': const AllergicReactions(),
      'type': 'AllergicReactions',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Allergic Reactions'),
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
            Image.asset(tDustimg, fit: BoxFit.cover),
            const SizedBox(height: 20),
            const Text(
              'Allergic Reactions (First Aid)',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'An allergic reaction is a rapid response of the immune system to allergens such as insect stings, foods, or medications. Some reactions can be life-threatening and require urgent action.',
              style: TextStyle(fontSize: 16),
            ),
            const Divider(height: 30),
            const Text(
              'Steps to Provide First Aid:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildStep(
              number: '1',
              title: 'Assess the Situation',
              description:
                  'Look for symptoms like rash, swelling (especially of the face or throat), shortness of breath, dizziness, or unconsciousness.',
            ),
            _buildStep(
              number: '2',
              title: 'Remove the Allergen',
              description:
                  'If possible, eliminate contact with the suspected allergen (e.g., food, insect sting, medication).',
            ),
            _buildStep(
              number: '3',
              title: 'Call Emergency Services',
              description:
                  'Call 112 immediately. Anaphylaxis can escalate quickly and requires professional help.',
            ),
            _buildStep(
              number: '4',
              title: 'Help Use an Epinephrine Auto-Injector',
              description:
                  'If the person has an epinephrine pen (e.g., EpiPen), help them use it by injecting into the outer thigh. Hold for 5–10 seconds.',
            ),
            _buildStep(
              number: '5',
              title: 'Lay the Person Down',
              description:
                  'If there is no difficulty breathing, lay the person flat and raise their legs. If breathing is difficult, allow them to sit up.',
            ),
            _buildStep(
              number: '6',
              title: 'Monitor Breathing and Consciousness',
              description:
                  'Watch the person closely. If breathing stops or the person becomes unresponsive, start CPR immediately.',
            ),
            const Divider(height: 30),
            const Text(
              'Important Notes:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildBulletPoint('Epinephrine is the only effective treatment for anaphylaxis.'),
            _buildBulletPoint('Do not give anything to eat or drink during the reaction.'),
            _buildBulletPoint('A second epinephrine dose may be needed after 5–15 minutes.'),
            _buildBulletPoint(
                'Antihistamines may help mild symptoms but are not enough for severe reactions.'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Link to a demonstration video or informational page
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
                'Watch Allergy First Aid Demo',
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
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
