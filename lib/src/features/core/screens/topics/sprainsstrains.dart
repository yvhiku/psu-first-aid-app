import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/constants/colors.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/constants/sizes.dart';
import 'package:first_aid_app/src/features/authentication/provider/auth_provider.dart';
import 'package:first_aid_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:first_aid_app/src/features/core/models/auto_quiz_data.dart';
import 'package:first_aid_app/src/features/core/screens/quizes/quiz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class SprainsStrains extends StatelessWidget {
  const SprainsStrains({super.key});
  void _promptSignIn(BuildContext context, S s) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(s.signInRequiredTitle),
        content: Text(s.signInRequiredMessage),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
    foregroundColor: tWhiteColor,
    backgroundColor: tPrimaryColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    padding: EdgeInsets.symmetric(vertical: tButtonHeight),
  ),
            onPressed: () => Navigator.of(context).pop(),

            child: Text(s.tcancel),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
    foregroundColor: tWhiteColor,
    backgroundColor: tPrimaryColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    padding: EdgeInsets.symmetric(vertical: tButtonHeight),
  ),
            onPressed: () {
              Get.offAll(() => const LoginScreen());
            },

            child: Text(s.tLogin),
          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    final quizData = generateLocalizedQuizData(S.of(context));
    final s = S.of(context);
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': s.sprainsStrainsTitle,
      'image': tSprainimg,
      'screen': const SprainsStrains(),
      'type': 'sprainsstrains',
    };

    return Scaffold(
      appBar: AppBar(
        title:  Text(s.sprainsStrainsTitle),
        actions: [
    /// This Obx will rebuild whenever topicController.isTopicSaved(...) changes
    Obx(() {
      final topicController = Get.find<TopicController>();
      final saved = topicController.isTopicSaved(currentTopic);

      // Grab the auth state; listen: false so Consumer won't rebuild here
      final isSignedIn = Provider.of<AuthProvider1>(context, listen: false)
          .isFullySignedIn;

      return IconButton(
        icon: Icon(
          saved ? Icons.bookmark : Icons.bookmark_border,
          color: saved ? Colors.red : null,
        ),
        onPressed: isSignedIn
          ? () {
              topicController.toggleTopicSave(currentTopic);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    saved
                      ? s.tremovedTopic
                      : s.addedToSavedTopicsText,
                  ),
                ),
              );
            }
          : () => _promptSignIn(context, s),
      );
    }),
  ],
),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(tSprainimg, fit: BoxFit.cover),
            const SizedBox(height: 16),
             Text(
              s.sprainsStrainsTitle,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
             Text(s.sprainsStrainsIntro, style: TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
             Text(
              s.sprainsStrainsSignsHeading,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildBullet(s.sprainsStrainsSign1),
            _buildBullet(s.sprainsStrainsSign2),
            _buildBullet(s.sprainsStrainsSign3),
            _buildBullet(s.sprainsStrainsSign4),
            const SizedBox(height: 20),
             Text(
              s.sprainsStrainsFirstAidHeading,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildStep('1', s.sprainsStrainsStep1),
            _buildStep('2', s.sprainsStrainsStep2),
            _buildStep('3', s.sprainsStrainsStep3),
            _buildStep('4', s.sprainsStrainsStep4),
            _buildStep('5', s.sprainsStrainsStep5),
            _buildStep('6', s.sprainsStrainsStep6),
            const SizedBox(height: 20),

if (quizData['Sprainstrains'] != null &&
    quizData['Sprainstrains']!.isNotEmpty)
  ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => QuizScreen(
            topicTitle: s.tSprainsStrains,
            questions: quizData['Sprainstrains']!,
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
