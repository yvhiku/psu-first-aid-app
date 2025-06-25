
import 'package:first_aid_app/src/features/core/models/question_model.dart';
import 'package:flutter/material.dart';

class Topic {
  final String id;
  final String title;
  final String image;
  final Widget screen;
  final List<Question>? quiz;

  Topic({
    required this.id,
    required this.title,
    required this.image,
    required this.screen,
    this.quiz,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Topic && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
  
}
