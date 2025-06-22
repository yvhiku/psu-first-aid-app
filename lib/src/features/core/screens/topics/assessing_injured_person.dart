import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/constants/colors.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AssessingInjuredPerson extends StatelessWidget {
  const AssessingInjuredPerson({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final TopicController topicController = Get.find();

    final currentTopic = {
      'title': s.tAssessing,
      'image': tHelpingPersonimg,
      'screen': const AssessingInjuredPerson(),
      'type': 'assessingInjuredPerson',
    };

    return Scaffold(
      appBar: AppBar(
        title:  Text(s.tAssessing),
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
                          ? s.addedToSavedTopicsText
                          : s.tremovedTopic
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
             Text(
              s.tassessingInjured,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 10),
             Text(s.tassessing1, style: TextStyle(fontSize: 16)),
            const Divider(height: 30),
             Text(
              s.tassessing2,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildStep(
              number: '1',
              title: s.tassessing3,
              description: s.tassessing4,
            ),
            _buildStep(
              number: '2',
              title: s.tassessing5,
              description: s.tassessing6,
            ),
            _buildStep(
              number: '3',
              title: s.tassessing7,
              description: s.tassessing8,
            ),
            _buildStep(
              number: '4',
              title: s.tassessing9,
              description: s.tassessing10,
            ),
            _buildStep(
              number: '5',
              title: s.tassessing11,
              description: s.tassessing12,
            ),
            _buildStep(
              number: '6',
              title: s.tassessing13,
              description: s.tassessing14,
            ),
            _buildStep(
              number: '7',
              title: s.tassessing15,
              description: s.tassessing16,
            ),
            const Divider(height: 30),
             Text(
              s.tassessing17,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildBulletPoint(s.tassessing18),
            _buildBulletPoint(s.tassessing19),
            _buildBulletPoint(s.tassessing20),
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
              child:  Text(
                s.tassessing21,
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
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
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
