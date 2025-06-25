import 'package:first_aid_app/src/features/core/screens/topics/allergic_reactions.dart';
import 'package:first_aid_app/src/features/core/screens/topics/assessing_injured_person.dart';
import 'package:first_aid_app/src/features/core/screens/topics/asthma.dart';
import 'package:first_aid_app/src/features/core/screens/topics/bites.dart';
import 'package:first_aid_app/src/features/core/screens/topics/bleeding.dart';
import 'package:first_aid_app/src/features/core/screens/topics/burns.dart';
import 'package:first_aid_app/src/features/core/screens/topics/choking.dart';
import 'package:first_aid_app/src/features/core/screens/topics/cpr.dart';
import 'package:first_aid_app/src/features/core/screens/topics/diabetics.dart';
import 'package:first_aid_app/src/features/core/screens/topics/drug_overdose.dart';
import 'package:first_aid_app/src/features/core/screens/topics/eye_injury.dart';
import 'package:first_aid_app/src/features/core/screens/topics/fractures.dart';
import 'package:first_aid_app/src/features/core/screens/topics/head_injury.dart';
import 'package:first_aid_app/src/features/core/screens/topics/heart_condition.dart';
import 'package:first_aid_app/src/features/core/screens/topics/poisons.dart';
import 'package:first_aid_app/src/features/core/screens/topics/recovery_pos.dart';
import 'package:first_aid_app/src/features/core/screens/topics/seizures.dart';
import 'package:first_aid_app/src/features/core/screens/topics/shock.dart';
import 'package:first_aid_app/src/features/core/screens/topics/spinal_injury.dart';
import 'package:first_aid_app/src/features/core/screens/topics/sprainsstrains.dart';
import 'package:first_aid_app/src/features/core/screens/topics/stroke.dart';
import 'package:first_aid_app/src/features/core/screens/topics/wound_care.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TopicController extends GetxController {
  final savedTopics = <Map<String, dynamic>>[].obs;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  void onInit() {
    super.onInit();

    // Load saved topics locally first
    loadSavedTopics();

    // Listen for auth changes to sync with Firestore
    _auth.authStateChanges().listen((user) {
      if (user != null) {
        // Load topics from Firestore, then overwrite local savedTopics
        loadSavedTopicsFromFirestore();
      } else {
        // If user logs out, just keep local saved topics (or clear if you want)
      }
    });
  }

  // Local: Load saved topics from SharedPreferences
  Future<void> loadSavedTopics() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final savedData = prefs.getString('savedTopics');
      if (savedData != null) {
        final List<dynamic> decodedData = json.decode(savedData);
        savedTopics.assignAll(
          decodedData.map((item) => Map<String, dynamic>.from(item)),
        );
      }
    } catch (e) {
      print('Error loading saved topics locally: $e');
    }
  }

  // Local: Save savedTopics to SharedPreferences
  Future<void> _saveTopicsToStorage() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('savedTopics', json.encode(savedTopics));
    } catch (e) {
      print('Error saving topics locally: $e');
    }
  }

  // Firestore: Load saved topics from Firestore for the current user
  Future<void> loadSavedTopicsFromFirestore() async {
    try {
      final user = _auth.currentUser;
      if (user == null) return;

      final snapshot = await _firestore
          .collection('users')
          .doc(user.uid)
          .collection('savedTopics')
          .get();

      final topicsFromFirestore = snapshot.docs
          .map((doc) => doc.data())
          .cast<Map<String, dynamic>>()
          .toList();

      // Update the observable list and save locally too
      savedTopics.assignAll(topicsFromFirestore);
      await _saveTopicsToStorage();
    } catch (e) {
      print('Error loading saved topics from Firestore: $e');
    }
  }

  // Add a topic to saved list both locally and Firestore
  Future<void> addTopic(Map<String, dynamic> topic) async {
    if (!isTopicSaved(topic)) {
      final savedTopic = {
        'title': topic['title'],
        'image': topic['image'],
        'type': topic['type'],
      };

      savedTopics.add(savedTopic);

      // Save locally
      await _saveTopicsToStorage();

      // Save remotely if logged in
      final user = _auth.currentUser;
      if (user != null) {
        try {
          await _firestore
              .collection('users')
              .doc(user.uid)
              .collection('savedTopics')
              .doc(savedTopic['title']) // Use title as doc id
              .set(savedTopic);
        } catch (e) {
          print('Error saving topic to Firestore: $e');
        }
      }
    }
  }

  // Remove a topic both locally and remotely
  Future<void> removeTopic(Map<String, dynamic> topic) async {
    savedTopics.removeWhere((t) => t['title'] == topic['title']);

    // Save locally
    await _saveTopicsToStorage();

    // Remove from Firestore if logged in
    final user = _auth.currentUser;
    if (user != null) {
      try {
        await _firestore
            .collection('users')
            .doc(user.uid)
            .collection('savedTopics')
            .doc(topic['title'])
            .delete();
      } catch (e) {
        print('Error removing topic from Firestore: $e');
      }
    }
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

  // Clear all saved topics locally and remotely
  Future<void> clearAllTopics() async {
    savedTopics.clear();
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('savedTopics');

    final user = _auth.currentUser;
    if (user != null) {
      try {
        final batch = _firestore.batch();
        final docs = await _firestore
            .collection('users')
            .doc(user.uid)
            .collection('savedTopics')
            .get();

        for (var doc in docs.docs) {
          batch.delete(doc.reference);
        }

        await batch.commit();
      } catch (e) {
        print('Error clearing topics from Firestore: $e');
      }
    }
  }

 Widget getScreenForTopic(Map<String, dynamic> topic) {
  // Debug: Print the topic data to check its structure
  print("Topic Data: $topic");

  // Use topic['title'] if 'type' is missing (fallback)
  final topicType = (topic['type'] ?? topic['title'])
      .toString()
      .toLowerCase();

  switch (topicType) {
    case 'cpr':
      return CprScreen();

    case 'bleeding':
    case 'bleed':
      return Bleeding();

    case 'burns':
    case 'burn':
      return BurnScreen();

    case 'choking':
      return ChokingScreen();

    case 'poisons':
    case 'poison':
      return PoisonScreen();

    case 'fractures':
      return FracturesScreen();

    case 'allergic_reactions':
    case 'allergic reaction':
    case 'allergicreactions':
      return AllergicReactions();

    case 'assessing_injured_person':
    case 'assessing':
      return AssessingInjuredPerson();

    case 'asthma':
      return Asthma();

    case 'bites':
    case 'bite':
      return Bites();

    case 'diabetics':
    case 'diabetic':
      return DiabeticsScreen();

    case 'drug_overdose':
    case 'drug overdose':
    case 'drugoverdose':
      return DrugOverdoseScreen();

    case 'eye_injury':
    case 'eye injury':
    case 'eyeinjury':
      return EyeInjuryScreen();

    case 'head_injury':
    case 'headinjury':
      return HeadInjury();

    case 'heart_condition':
    case 'heartcondition':
      return HeartCondition();

    case 'seizures':
    case 'seizure':
      return Seizures();

    case 'shock':
      return Shock();

    case 'spinal_injury':
    case 'spinalinjury':
      return SpinalInjury();

    case 'sprainsstrains':
    case 'sprains strains':
    case 'sprain':
    case 'strain':
      return SprainsStrains();

    case 'stroke':
      return StrokeScreen();

    case 'wound_care':
    case 'woundcare':
      return WoundCare();

    case 'recovery_pos':
    case 'recoverypos':
      return RecoveryPos();

    default:
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text("Topic not found: $topicType")),
      );
  }
}

}
