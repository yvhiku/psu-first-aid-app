import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:first_aid_app/src/features/core/models/auto_quiz_data.dart';
import 'package:first_aid_app/src/features/core/screens/quizes/quiz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FracturesScreen extends StatelessWidget {
  const FracturesScreen({super.key});

  // Using strings as constants inside the class for clarity
  static const String title = 'Fractures';
  static const String heading = 'Fractures First Aid';
  static const String intro =
      'A fracture is a broken bone. Proper first aid can prevent complications.';

  static const String signsHeading = 'Signs of a Fracture:';
  static const String sign1 = '- Pain and tenderness';
  static const String sign2 = '- Swelling or bruising';
  static const String sign3 = '- Deformity or unnatural positioning';
  static const String sign4 = '- Difficulty moving the limb';

  static const String stepsHeading = 'First Aid Steps:';
  static const String step1Title = 'Immobilize the Area';
  static const String step1Desc =
      'Keep the injured area still and avoid movement.';
  static const String step2Title = 'Apply a Splint';
  static const String step2Desc =
      'Use a padded splint to support the injury without forcing it into place.';
  static const String step3Title = 'Apply Cold Compress';
  static const String step3Desc =
      'Reduce swelling with ice wrapped in cloth (avoid direct contact with skin).';
  static const String step4Title = 'Seek Medical Help';
  static const String step4Desc =
      'Call emergency services or take the person to hospital promptly.';

  static const String notesHeading = 'Important Notes:';
  static const String note1 =
      'Do NOT try to realign the bone or push it back in place.';
  static const String note2 =
      'If bleeding, apply pressure around the wound (not directly on the bone).';

  @override
  Widget build(BuildContext context) {
    final quizData = generateLocalizedQuizData(S.of(context));
    final s = S.of(context);
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': s.title,
      'image': tInjuryimg,
      'screen': const FracturesScreen(),
    };

    return Scaffold(
      appBar: AppBar(
        title: Text(s.title),
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
            Image.asset(tInjuryimg, fit: BoxFit.cover),
            const SizedBox(height: 20),
            Text(
              s.heading,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 10),
            Text(s.intro, style: TextStyle(fontSize: 16)),
            const Divider(height: 30),
            Text(
              s.signsHeading,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(s.sign1),
            Text(s.sign2),
            Text(s.sign3),
            Text(s.sign4),
            const Divider(height: 30),
            Text(
              s.stepsHeading,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildStep(
              number: '1',
              title: s.step1Title,
              description: s.step1Desc,
            ),
            _buildStep(
              number: '2',
              title: s.step2Title,
              description: s.step2Desc,
            ),
            _buildStep(
              number: '3',
              title: s.step3Title,
              description: s.step3Desc,
            ),
            _buildStep(
              number: '4',
              title: s.step4Title,
              description: s.step4Desc,
            ),
            const Divider(height: 30),
            Text(
              s.notesHeading,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildBulletPoint(s.note1),
            _buildBulletPoint(s.note2),
            const SizedBox(height: 20),

if (quizData['Fractures'] != null &&
    quizData['Fractures']!.isNotEmpty)
  ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => QuizScreen(
            topicTitle: s.tFractures,
            questions: quizData['Fractures']!,
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
            decoration: BoxDecoration(
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
