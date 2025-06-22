import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChokingScreen extends StatelessWidget {
  const ChokingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': s.tChoking,
      'image': tChokingimg,
      'screen': const ChokingScreen(),
    };

    return Scaffold(
      appBar: AppBar(
        title: Text(s.tChoking),
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
                          : s.tremovedTopic,
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
            Text(
              s.ChokingTitle,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 10),
            Text(s.Choking1, style: TextStyle(fontSize: 16)),
            const Divider(height: 30),
            Text(
              s.tChoking2,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(s.tChoking3),
            Text(s.tChoking4),
            Text(s.tChoking5),
            const Divider(height: 30),
            Text(
              s.tChoking6,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildStep('1', s.tChoking7, s.tChoking8),
            _buildStep('2', s.tChoking9, s.tChoking10),
            _buildStep('3', s.tChoking11, s.tChoking12),
            _buildStep('4', s.tChoking13, s.tChoking14),
            _buildStep('5', s.tChoking15, s.tChoking16),
            const Divider(height: 30),
            Text(
              s.tChoking17,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildBulletPoint(s.tChoking18),
            _buildBulletPoint(s.tChoking19),
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
          Container(
            width: 28,
            height: 28,
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
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ', style: TextStyle(fontSize: 18)),
          Expanded(child: Text(text)), // no const here!
        ],
      ),
    );
  }
}
