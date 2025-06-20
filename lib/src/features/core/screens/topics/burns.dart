import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/constants/text_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BurnScreen extends StatelessWidget {
  const BurnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': tBurns,
      'image': tBurnimg,
      'screen': const BurnScreen(),
      'type': 'Burns',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text(tBurns),
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
                            ? taddedtosaved
                            : tremovedtopic,
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
            Image.asset(tBurnimg, fit: BoxFit.cover),
            const SizedBox(height: 20),
            const Text(
              tBurnsTitle,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(height: 10),
            const Text(
              tBurns1,
              style: TextStyle(fontSize: 16),
            ),
            const Divider(height: 30),
            const Text(
              tBurns2,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            _buildStep('1', tBurns3, tBurns4),
            _buildStep('2', tBurns5, tBurns6),
            _buildStep('3', tBurns7, tBurns8),
            _buildStep('4', tBurns9, tBurns10),
            _buildStep('5', tBurns11, tBurns12),
            const Divider(height: 30),
            const Text(
              tBurns13,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            _buildBulletPoint(tBurns14),
            _buildBulletPoint(tBurns15),
            _buildBulletPoint(tBurns16),
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
