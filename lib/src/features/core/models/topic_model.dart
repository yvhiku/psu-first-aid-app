import 'package:first_aid_app/src/features/core/models/question_model.dart';
import 'package:flutter/material.dart';

// Model to represent a Topic (like CPR, Bleeding, etc)
// Can include an associated screen widget and an optional quiz.
class Topic {
  final String id;          // Unique identifier for the topic
  final String title;       // Display title
  final String image;       // Image asset path
  final Widget screen;      // The widget screen to navigate to
  final List<Question>? quiz; // Optional list of quiz questions

  Topic({
    required this.id,
    required this.title,
    required this.image,
    required this.screen,
    this.quiz,
  });

  // Equality override so topics can be compared by their ID
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Topic && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}
