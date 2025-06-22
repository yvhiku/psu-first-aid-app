import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecoveryPos extends StatelessWidget {
  const RecoveryPos({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': s.recoveryPositionTitle,
      'image': tRecoveryPosimg,
      'screen': const RecoveryPos(),
    };

    return Scaffold(
      appBar: AppBar(
        title:  Text(s.recoveryPositionTitle),
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
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(tRecoveryPosimg, fit: BoxFit.cover),
            const SizedBox(height: 16),
             Text(
              s.recoveryPositionHeading,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
             Text(s.recoveryPositionIntro, style: TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
             Text(
              s.recoveryPositionStepsHeading,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildStep('1', s.recoveryPositionStep1),
            _buildStep('2', s.recoveryPositionStep2),
            _buildStep('3', s.recoveryPositionStep3),
            _buildStep('4', s.recoveryPositionStep4),
            _buildStep('5', s.recoveryPositionStep5),
            _buildStep('6', s.recoveryPositionStep6),
            _buildStep('7', s.recoveryPositionStep7),
            _buildStep('8', s.recoveryPositionStep8),
            const SizedBox(height: 20),
             Text(
              s.recoveryPositionImportantHeading,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            _buildBullet(s.recoveryPositionNote1),
            _buildBullet(s.recoveryPositionNote2),
            _buildBullet(s.recoveryPositionNote3),
          ],
        ),
      ),
    );
  }

  Widget _buildStep(String number, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 14,
            backgroundColor: Colors.red,
            child: Text(
              number,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(description, style: const TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }

  Widget _buildBullet(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ', style: TextStyle(fontSize: 20)),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 16))),
        ],
      ),
    );
  }
}
