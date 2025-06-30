// lib/src/features/core/widgets/guarded_save_button.dart

import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GuardedSaveButton extends StatelessWidget {
  /// The topic object you pass around in your controllers.
  final Map<String, dynamic> topic;

  const GuardedSaveButton({
    Key? key,
    required this.topic,
  }) : super(key: key);

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
              Get.toNamed('/login');
            },
            child: Text(s.tSignInWithGoogle),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find();
    final s = S.of(context);

    return Obx(() {
      final saved = topicController.isTopicSaved(topic);
      return IconButton(
        icon: Icon(
          saved ? Icons.bookmark : Icons.bookmark_border,
          color: saved ? Colors.red : null,
        ),
        onPressed: () {
          final user = FirebaseAuth.instance.currentUser;
          if (user == null || user.isAnonymous) {
            _promptSignIn(context, s);
          } else {
            topicController.toggleTopicSave(topic);
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
