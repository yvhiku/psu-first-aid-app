import 'package:first_aid_app/src/features/core/screens/topics/all_topic.dart';
import 'package:first_aid_app/src/features/core/screens/topics/bleeding.dart';
import 'package:first_aid_app/src/features/core/screens/topics/burns.dart';
import 'package:first_aid_app/src/features/core/screens/topics/choking.dart';
import 'package:first_aid_app/src/features/core/screens/topics/cpr.dart';
import 'package:first_aid_app/src/features/core/screens/topics/poisons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class TopicController extends GetxController {
  final savedTopics = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadSavedTopics();
  }

  // Load saved topics from local storage
  Future<void> loadSavedTopics() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final savedData = prefs.getString('savedTopics');
      
      if (savedData != null) {
        final List<dynamic> decodedData = json.decode(savedData);
        savedTopics.assignAll(
          decodedData.map((item) => Map<String, dynamic>.from(item))
        );
      }
    } catch (e) {
      print('Error loading saved topics: $e');
    }
  }

  // Save topics to local storage
  Future<void> _saveTopicsToStorage() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('savedTopics', json.encode(savedTopics));
    } catch (e) {
      print('Error saving topics: $e');
    }
  }

  // Add a topic to saved list with proper screen reference
  Future<void> addTopic(Map<String, dynamic> topic) async {
    if (!isTopicSaved(topic)) {
      final savedTopic = {
        'title': topic['title'],
        'image': topic['image'],
        'type': topic['type'], // Required for screen mapping
      };
      savedTopics.add(savedTopic);
      await _saveTopicsToStorage();
    }
  }

  Future<void> removeTopic(Map<String, dynamic> topic) async {
    savedTopics.removeWhere((t) => t['title'] == topic['title']);
    await _saveTopicsToStorage();
  }

  bool isTopicSaved(Map<String, dynamic> topic) {
    return savedTopics.any((t) => t['title'] == topic['title']);
  }

  Future<void> toggleTopicSave(Map<String, dynamic> topic) async {
    if (isTopicSaved(topic)) {
      await removeTopic(topic);
    } else {
      await addTopic(topic);
    }
  }

  // Clear all saved topics
  Future<void> clearAllTopics() async {
    savedTopics.clear();
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('savedTopics');
  }

  // Helper method to get the appropriate screen based on topic type
  Widget getScreenForTopic(Map<String, dynamic> topic) {
    switch (topic['type']) {
      case 'cpr':
        return CprScreen();
      case 'bleeding':
        return Bleeding();
      case 'burns':
        return BurnScreen();
      case 'choking':
        return ChokingScreen();
      case 'poisons':
        return PoisonScreen();
      default:
        return AllTopicsScreen();
    }
  }
}