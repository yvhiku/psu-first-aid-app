import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:first_aid_app/src/features/core/models/auto_quiz_data.dart';
import 'package:first_aid_app/src/features/core/screens/quizes/quiz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Shock extends StatelessWidget {
  const Shock({super.key});

  @override
  Widget build(BuildContext context) {
    final quizData = generateLocalizedQuizData(S.of(context));
    final s = S.of(context);
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': s.shockTitle,
      'image': tEpilepsyimg,
      'screen': const Shock(),
    };

    return Scaffold(
      appBar: AppBar(
        title:  Text(s.shockTitle),
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
            Image.asset(tEpilepsyimg, fit: BoxFit.cover),
            const SizedBox(height: 16),
             Text(
              s.shockHeading,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
             Text(s.shockIntro, style: TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
             Text(
              s.shockSignsHeading,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildBullet(s.shockSign1),
            _buildBullet(s.shockSign2),
            _buildBullet(s.shockSign3),
            _buildBullet(s.shockSign4),
            _buildBullet(s.shockSign5),
            const SizedBox(height: 20),
             Text(
              s.shockFirstAidHeading,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildStep('1', s.shockStep1),
            _buildStep('2', s.shockStep2),
            _buildStep('3', s.shockStep3),
            _buildStep('4', s.shockStep4),
            _buildStep('5', s.shockStep5),
            _buildStep('6', s.shockStep6),
            const SizedBox(height: 20),

if (quizData['Shock'] != null &&
    quizData['Shock']!.isNotEmpty)
  ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => QuizScreen(
            topicTitle: s.tShock,
            questions: quizData['Shock']!,
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
