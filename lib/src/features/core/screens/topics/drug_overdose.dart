import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/constants/text_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrugOverdoseScreen extends StatelessWidget {
  const DrugOverdoseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': drugOverdoseTitle,
      'image': tDrugOverDoseimg,
      'screen': const DrugOverdoseScreen(),
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text(drugOverdoseTitle),
        actions: [
          Obx(() => IconButton(
                icon: Icon(
                  topicController.isTopicSaved(currentTopic)
                      ? Icons.bookmark
                      : Icons.bookmark_border,
                  color:
                      topicController.isTopicSaved(currentTopic) ? Colors.red : null,
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
              )),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.asset(tDrugOverDoseimg, fit: BoxFit.cover),
          const SizedBox(height: 20),
          const Text(
            drugOverdoseMainHeading,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          const SizedBox(height: 10),
          const Text(drugOverdoseIntro, style: TextStyle(fontSize: 16)),
          const Divider(height: 30),
          const Text(drugOverdoseSignsHeading,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          const Text(drugOverdoseSigns1),
          const Text(drugOverdoseSigns2),
          const Text(drugOverdoseSigns3),
          const Text(drugOverdoseSigns4),
          const Divider(height: 30),
          const Text(drugOverdoseStepsHeading,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          _buildStep(
            number: '1',
            title: drugOverdoseStep1Title,
            description: drugOverdoseStep1Desc,
          ),
          _buildStep(
            number: '2',
            title: drugOverdoseStep2Title,
            description: drugOverdoseStep2Desc,
          ),
          _buildStep(
            number: '3',
            title: drugOverdoseStep3Title,
            description: drugOverdoseStep3Desc,
          ),
          _buildStep(
            number: '4',
            title: drugOverdoseStep4Title,
            description: drugOverdoseStep4Desc,
          ),
          _buildStep(
            number: '5',
            title: drugOverdoseStep5Title,
            description: drugOverdoseStep5Desc,
          ),
          const Divider(height: 30),
          const Text(drugOverdoseImportantNotes,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          _buildBulletPoint(drugOverdoseNote1),
          _buildBulletPoint(drugOverdoseNote2),
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
          decoration: const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
          child: Center(
            child: Text(number,
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
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
