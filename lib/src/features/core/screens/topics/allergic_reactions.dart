import 'package:first_aid_app/src/constants/colors.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/constants/text_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllergicReactions extends StatelessWidget {
  const AllergicReactions({super.key});

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find();

    final currentTopic = {
      'title': tAllergicReaction,
      'image': tDustimg,
      'screen': const AllergicReactions(),
      'type': 'AllergicReactions',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text(tAllergicReaction),
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
                          ? taddedtosaved
                          : tremovedtopic,
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
              tAllergicReactionFirstaid,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              tAllergicReactioncontent1,
              style: TextStyle(fontSize: 16),
            ),
            const Divider(height: 30),
            const Text(
              tAllergicReactioncontent2,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildStep(
              number: '1',
              title: tAllergicReactioncontent3,
              description:
                  tAllergicReactioncontent4,
            ),
            _buildStep(
              number: '2',
              title: tAllergicReactioncontent5,
              description:
                  tAllergicReactioncontent6,
            ),
            _buildStep(
              number: '3',
              title: tAllergicReactioncontent7,
              description:
                  tAllergicReactioncontent8,
            ),
            _buildStep(
              number: '4',
              title: tAllergicReactioncontent9,
              description:
                  tAllergicReactioncontent10,
            ),
            _buildStep(
              number: '5',
              title: tAllergicReactioncontent11,
              description:
                  tAllergicReactioncontent12,
            ),
            _buildStep(
              number: '6',
              title: tAllergicReactioncontent13,
              description:
                  tAllergicReactioncontent14,
            ),
            const Divider(height: 30),
            const Text(
              tAllergicReactioncontent15,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildBulletPoint(tAllergicReactioncontent16),
            _buildBulletPoint(tAllergicReactioncontent17),
            _buildBulletPoint(tAllergicReactioncontent18),
            _buildBulletPoint(
                tAllergicReactioncontent19),
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
                tAllergicReactioncontent20,
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
