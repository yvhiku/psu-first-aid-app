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

class AllergicReactions extends StatelessWidget {
  const AllergicReactions({super.key});

  /// Show dialog prompting user to sign in
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
    final TopicController topicController = Get.find();
    final s = S.of(context);

    // Current topic object to use for saved toggle
    final currentTopic = {
      'title': s.tAllergicReaction,
      'image': tDustimg,
      'screen': const AllergicReactions(),
      'type': 'allergicreactions',
    };

    return Scaffold(
      appBar: AppBar(
        title: Text(s.tAllergicReaction),
        actions: [
          /// The bookmark toggle (uses Obx to update automatically)
          Obx(() {
            final saved = topicController.isTopicSaved(currentTopic);

            // Check sign-in state from Provider
            final isSignedIn = Provider.of<AuthProvider1>(
              context,
              listen: false,
            ).isFullySignedIn;

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
                            saved ? s.tremovedTopic : s.addedToSavedTopicsText,
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(tDustimg, fit: BoxFit.cover),
            const SizedBox(height: 20),
            Text(
              s.tallergicReactionFirstAid,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              s.tallergicReactionContent1,
              style: const TextStyle(fontSize: 16),
            ),
            const Divider(height: 30),

            Text(
              s.tallergicReactionContent2,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            // numbered steps
            _buildStep(
              number: '1',
              title: s.tallergicReactionContent3,
              description: s.tallergicReactionContent4,
            ),
            _buildStep(
              number: '2',
              title: s.tallergicReactionContent5,
              description: s.tallergicReactionContent6,
            ),
            _buildStep(
              number: '3',
              title: s.tallergicReactionContent7,
              description: s.tallergicReactionContent8,
            ),
            _buildStep(
              number: '4',
              title: s.tallergicReactionContent9,
              description: s.tallergicReactionContent10,
            ),
            _buildStep(
              number: '5',
              title: s.tallergicReactionContent11,
              description: s.tallergicReactionContent12,
            ),
            _buildStep(
              number: '6',
              title: s.tallergicReactionContent13,
              description: s.tallergicReactionContent14,
            ),
            const Divider(height: 30),

            Text(
              s.tallergicReactionContent15,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            // bullet points
            _buildBulletPoint(s.tallergicReactionContent16),
            _buildBulletPoint(s.tallergicReactionContent17),
            _buildBulletPoint(s.tallergicReactionContent18),
            _buildBulletPoint(s.tallergicReactionContent19),
            const SizedBox(height: 20),

            // optional quiz button
            if (quizData['Allergic Reactions'] != null &&
                quizData['Allergic Reactions']!.isNotEmpty)
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => QuizScreen(
                        topicTitle: s.tAllergicReaction,
                        questions: quizData['Allergic Reactions']!,
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
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  /// numbered step builder
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

  /// bullet point builder
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
