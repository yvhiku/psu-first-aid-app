import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:first_aid_app/src/features/core/models/auto_quiz_data.dart';
import 'package:first_aid_app/src/features/core/screens/quizes/quiz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StrokeScreen extends StatelessWidget {
  const StrokeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final quizData = generateLocalizedQuizData(S.of(context));
    final s = S.of(context);
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': s.strokeTitle,
      'image': tStrotkeimg,
      'screen': const StrokeScreen(),
    };

    return Scaffold(
      appBar: AppBar(
        title:  Text(s.strokeTitle),
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
            Image.asset(tStrotkeimg, fit: BoxFit.cover),
            const SizedBox(height: 16),
             Text(
              s.strokeTitle,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
             Text(s.strokeIntro, style: TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
             Text(
              s.strokeSignsHeading,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildBullet(s.strokeSign1),
            _buildBullet(s.strokeSign2),
            _buildBullet(s.strokeSign3),
            _buildBullet(s.strokeSign4),
            _buildBullet(s.strokeSign5),
            const SizedBox(height: 20),
             Text(
              s.strokeFirstAidHeading,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildStep('1', s.strokeStep1),
            _buildStep('2', s.strokeStep2),
            _buildStep('3', s.strokeStep3),
            _buildStep('4', s.strokeStep4),
            _buildStep('5', s.strokeStep5),
            const SizedBox(height: 20),

if (quizData['Stroke'] != null &&
    quizData['Stroke']!.isNotEmpty)
  ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => QuizScreen(
            topicTitle: s.tStroke,
            questions: quizData['Stroke']!,
          ),
        ),
      );
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.deepPurple,
      foregroundColor: Colors.white,
      minimumSize: const Size(double.infinity, 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    child:  Text(
      s.takeQuiz,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ),
  ),
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
