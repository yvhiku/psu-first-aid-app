import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WoundCare extends StatelessWidget {
  const WoundCare({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': s.woundCareTitle,
      'image': tBandAidimg,
      'screen': const WoundCare(),
    };

    return Scaffold(
      appBar: AppBar(
        title:  Text(s.woundCareTitle),
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
            Image.asset(tBandAidimg, fit: BoxFit.cover),
            const SizedBox(height: 16),
             Text(
              s.woundCareTitle,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
             Text(s.woundCareIntro, style: TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
             Text(
              s.woundCareStepsHeading,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildStep('1', s.woundCareStep1),
            _buildStep('2', s.woundCareStep2),
            _buildStep('3', s.woundCareStep3),
            _buildStep('4', s.woundCareStep4),
            _buildStep('5', s.woundCareStep5),
            _buildStep('6', s.woundCareStep6),
            _buildStep('7', s.woundCareStep7),
            const SizedBox(height: 20),
             Text(
              s.woundCareMedicalHelpHeading,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildBullet(s.woundCareMedicalHelp1),
            _buildBullet(s.woundCareMedicalHelp2),
            _buildBullet(s.woundCareMedicalHelp3),
            _buildBullet(s.woundCareMedicalHelp4),
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
