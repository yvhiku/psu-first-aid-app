import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/constants/colors.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:first_aid_app/src/features/core/models/auto_quiz_data.dart';
import 'package:first_aid_app/src/features/core/screens/quizes/quiz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CprScreen extends StatelessWidget {
  const CprScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final quizData = generateLocalizedQuizData(S.of(context));
    final s = S.of(context);
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': s.cprTitle,
      'image': tCprimg,
      'screen': const CprScreen(),
      'type': 's.cpr',
    };

    return Scaffold(
      appBar: AppBar(
        title:  Text(s.cprTitle),
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
              onPressed: () async {
                await topicController.toggleTopicSave(currentTopic);
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
            Image.asset(tCprimg, fit: BoxFit.cover),
            const SizedBox(height: 20),
             Text(
              s.cprHeading,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 10),
             Text(s.cprIntro, style: TextStyle(fontSize: 16)),
            const Divider(height: 30),
             Text(
              s.cprStepsHeading,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildStep('1', s.cprStep1Title, s.cprStep1Description),
            _buildStep('2', s.cprStep2Title, s.cprStep2Description),
            _buildStep('3', s.cprStep3Title, s.cprStep3Description),
            _buildStep('4', s.cprStep4Title, s.cprStep4Description),
            _buildStep('5', s.cprStep5Title, s.cprStep5Description),
            _buildStep('6', s.cprStep6Title, s.cprStep6Description),
            _buildStep('7', s.cprStep7Title, s.cprStep7Description),
            const Divider(height: 30),
             Text(
              s.cprNotesHeading,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildBulletPoint(s.cprNote1),
            _buildBulletPoint(s.cprNote2),
            _buildBulletPoint(s.cprNote3),
            const SizedBox(height: 20),

if (quizData['CPR'] != null &&
    quizData['CPR']!.isNotEmpty)
  ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => QuizScreen(
            topicTitle: s.tCpr,
            questions: quizData['CPR']!,
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
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Link to s.cpr video or action
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
                s.cprWatchDemoButton,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildStep(String number, String title, String description) {
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
