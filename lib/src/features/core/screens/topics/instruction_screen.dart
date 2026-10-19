import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/features/authentication/provider/auth_provider.dart';
import 'package:first_aid_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:first_aid_app/src/features/core/models/auto_quiz_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../home/hospital_actions.dart';
import '../quizes/quiz.dart';
import '../saved/saved_topic_item.dart';
import 'instruction_models.dart';
import 'topic_catalog.dart';
import 'instruction_view.dart';

/// Connects guide presentation to the existing saved-topic and quiz flows.
class InstructionScreen extends StatelessWidget {
  const InstructionScreen({super.key, required this.guide});
  final InstructionGuide guide;

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final controller = Get.find<TopicController>();
    final signedIn = context.watch<AuthProvider1>().isFullySignedIn;
    return Obx(() {
      // Resolve saved metadata by stable type across language changes. Use the
      // original stored title when removing its existing Firestore document.
      Map<String, dynamic>? existing;
      final catalog = buildTopicCatalog(s);
      for (final raw in controller.savedTopics) {
        final item = SavedTopicItem(raw, catalog);
        if (item.entry?.id == guide.id) {
          existing = raw;
          break;
        }
      }
      final topic =
          existing ??
          <String, dynamic>{
            'title': guide.title,
            'type': guide.id,
            'image': guide.image,
          };
      final questions = generateLocalizedQuizData(s)[guide.quizKey] ?? [];
      return InstructionView(
        guide: guide,
        saved: existing != null,
        onSave: () {
          if (!signedIn) {
            _promptSignIn(context, s);
            return;
          }
          final wasSaved = existing != null;
          controller.toggleTopicSave(topic);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                wasSaved ? s.tremovedTopic : s.addedToSavedTopicsText,
              ),
            ),
          );
        },
        onCall: () =>
            openHospitalAction(context, Uri(scheme: 'tel', path: '112')),
        onQuiz: questions.isEmpty
            ? null
            : () => Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (_) =>
                      QuizScreen(topicTitle: guide.title, questions: questions),
                ),
              ),
      );
    });
  }

  void _promptSignIn(BuildContext context, S s) {
    showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(s.signInRequiredTitle),
        content: Text(s.signInRequiredMessage),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text(s.tcancel),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(dialogContext);
              Get.offAll(() => const LoginScreen());
            },
            child: Text(s.tLogin),
          ),
        ],
      ),
    );
  }
}
