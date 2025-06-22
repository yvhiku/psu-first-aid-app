import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrugOverdoseScreen extends StatelessWidget {
  const DrugOverdoseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': s.drugOverdoseTitle,
      'image': tDrugOverDoseimg,
      'screen': const DrugOverdoseScreen(),
    };

    return Scaffold(
      appBar: AppBar(
        title: Text(s.drugOverdoseTitle),
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
            Image.asset(tDrugOverDoseimg, fit: BoxFit.cover),
            const SizedBox(height: 20),
             Text(
              s.drugOverdoseMainHeading,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 10),
             Text(s.drugOverdoseIntro, style: TextStyle(fontSize: 16)),
            const Divider(height: 30),
             Text(
              s.drugOverdoseSignsHeading,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
             Text(s.drugOverdoseSigns1),
             Text(s.drugOverdoseSigns2),
             Text(s.drugOverdoseSigns3),
             Text(s.drugOverdoseSigns4),
            const Divider(height: 30),
             Text(
              s.drugOverdoseStepsHeading,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildStep(
              number: '1',
              title: s.drugOverdoseStep1Title,
              description: s.drugOverdoseStep1Desc,
            ),
            _buildStep(
              number: '2',
              title: s.drugOverdoseStep2Title,
              description: s.drugOverdoseStep2Desc,
            ),
            _buildStep(
              number: '3',
              title: s.drugOverdoseStep3Title,
              description: s.drugOverdoseStep3Desc,
            ),
            _buildStep(
              number: '4',
              title: s.drugOverdoseStep4Title,
              description: s.drugOverdoseStep4Desc,
            ),
            _buildStep(
              number: '5',
              title: s.drugOverdoseStep5Title,
              description: s.drugOverdoseStep5Desc,
            ),
            const Divider(height: 30),
             Text(
              s.drugOverdoseImportantNotes,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildBulletPoint(s.drugOverdoseNote1),
            _buildBulletPoint(s.drugOverdoseNote2),
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
