import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/constants/colors.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:first_aid_app/src/features/core/models/auto_quiz_data.dart';
import 'package:first_aid_app/src/features/core/screens/quizes/quiz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Asthma extends StatelessWidget {
  const Asthma({super.key});

  @override
  Widget build(BuildContext context) {
    final quizData = generateLocalizedQuizData(S.of(context));
    final s = S.of(context);
    final TopicController topicController = Get.find();

    final currentTopic = {
      'title': s.asthma,
      'image': tAsthmaimg,
      'screen': const Asthma(),
      'type': 'asthma',
    };

    return Scaffold(
      appBar: AppBar(
        title: Text(s.asthma),
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(tAsthmaimg, fit: BoxFit.cover),
            const SizedBox(height: 20),
            Text(
              s.asthmaTitle,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 10),
            Text(s.asthma1, style: TextStyle(fontSize: 16)),
            const Divider(height: 30),
            Text(
              s.asthma2,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildStep(number: '1', title: s.asthma3, description: s.asthma4),
            _buildStep(number: '2', title: s.asthma5, description: s.asthma6),
            _buildStep(number: '3', title: s.asthma7, description: s.asthma8),
            _buildStep(number: '4', title: s.asthma9, description: s.asthma10),
            _buildStep(number: '5', title: s.asthma11, description: s.asthma12),
            const Divider(height: 30),
            Text(
              s.asthma13,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildBulletPoint(s.asthma14),
            _buildBulletPoint(s.asthma15),
            _buildBulletPoint(s.asthma16),
            const SizedBox(height: 20),

            if (quizData['Asthma'] != null && quizData['Asthma']!.isNotEmpty)
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => QuizScreen(
                        topicTitle: s.asthma,
                        questions: quizData['Asthma']!,
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
                child: Text(
                  s.takeQuiz,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            // const SizedBox(height: 20),
            // ElevatedButton(
            //   onPressed: () {
            //     // Link to a demo or educational asthma video
            //   },
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: tPrimaryColor,
            //     foregroundColor: Colors.white,
            //     minimumSize: const Size(double.infinity, 50),
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(8.0),
            //     ),
            //     elevation: 4,
            //   ),
            //   child: Text(
            //     s.asthma17,
            //     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            //   ),
            // ),
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
