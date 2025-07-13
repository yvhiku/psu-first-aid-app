// lib/src/features/core/widgets/guarded_save_button.dart

import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A reusable widget that shows a bookmark icon button.
/// It requires the user to be signed in before saving.
/// It toggles saved status in Firestore and local store via TopicController.
class GuardedSaveButton extends StatelessWidget {
  /// The topic data (usually with keys: title, image, type) passed to controller.
  final Map<String, dynamic> topic;

  const GuardedSaveButton({
    Key? key,
    required this.topic,
  }) : super(key: key);

  /// Shows a dialog prompting the user to sign in.
  void _promptSignIn(BuildContext context, S s) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(s.signInRequiredTitle),
        content: Text(s.signInRequiredMessage),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(s.tcancel),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              Get.toNamed('/login'); // redirects to login route
            },
            child: Text(s.tSignInWithGoogle),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find(); // retrieve TopicController instance
    final s = S.of(context); // localizations shortcut

    return Obx(() {
      final saved = topicController.isTopicSaved(topic); // reactive check if topic is saved
      return IconButton(
        icon: Icon(
          saved ? Icons.bookmark : Icons.bookmark_border,
          color: saved ? Colors.red : null,
        ),
        onPressed: () {
          final user = FirebaseAuth.instance.currentUser;

          // If user is not signed in or anonymous, prompt login
          if (user == null || user.isAnonymous) {
            _promptSignIn(context, s);
          } else {
            // Otherwise toggle save/unsave
            topicController.toggleTopicSave(topic);

            // Show feedback snackbar
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  topicController.isTopicSaved(topic)
                      ? s.addedToSavedTopicsText
                      : s.tremovedTopic,
                ),
              ),
            );
          }
        },
      );
    });
  }
}
