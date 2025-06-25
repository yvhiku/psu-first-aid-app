import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:first_aid_app/src/features/core/models/auto_quiz_data.dart';
import 'package:first_aid_app/src/features/core/screens/quizes/quiz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EyeInjuryScreen extends StatelessWidget {
  const EyeInjuryScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final quizData = generateLocalizedQuizData(S.of(context));
    final s = S.of(context);
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': s.eyeInjuryTitle,
      'image': tSoreEyesimg,
      'screen': const EyeInjuryScreen(),
    };

    return Scaffold(
      appBar: AppBar(
        title:  Text(s.eyeInjuryTitle),
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
            Image.asset(tSoreEyesimg, fit: BoxFit.cover),
            const SizedBox(height: 20),
             Text(
              s.eyeInjuryHeading,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 10),
             Text(s.eyeInjuryIntro, style: TextStyle(fontSize: 16)),
            const Divider(height: 30),
             Text(
              s.eyeInjuryTypesHeading,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
             Text(s.eyeInjuryType1),
             Text(s.eyeInjuryType2),
             Text(s.eyeInjuryType3),
            const Divider(height: 30),
             Text(
              s.eyeInjuryStepsHeading,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildStep(number: '1', title: s.eyeInjuryStep1Title, description: s.eyeInjuryStep1Desc),
            _buildStep(number: '2', title: s.eyeInjuryStep2Title, description: s.eyeInjuryStep2Desc),
            _buildStep(number: '3', title: s.eyeInjuryStep3Title, description: s.eyeInjuryStep3Desc),
            _buildStep(number: '4', title: s.eyeInjuryStep4Title, description: s.eyeInjuryStep4Desc),
            const Divider(height: 30),
             Text(
              s.eyeInjuryNotesHeading,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildBulletPoint(s.eyeInjuryNote1),
            _buildBulletPoint(s.eyeInjuryNote2),
            const SizedBox(height: 20),

if (quizData['Eye Injury'] != null &&
    quizData['Eye Injury']!.isNotEmpty)
  ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => QuizScreen(
            topicTitle: s.tEyeInjury,
            questions: quizData['Eye Injury']!,
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

  static Widget _buildStep({
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

  static Widget _buildBulletPoint(String text) {
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
