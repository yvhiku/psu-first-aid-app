// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Quiz Completed!`
  String get quizcompleted {
    return Intl.message(
      'Quiz Completed!',
      name: 'quizcompleted',
      desc: '',
      args: [],
    );
  }

  /// `Your score:`
  String get yourscore {
    return Intl.message('Your score:', name: 'yourscore', desc: '', args: []);
  }

  /// `Take Quiz`
  String get takeQuiz {
    return Intl.message('Take Quiz', name: 'takeQuiz', desc: '', args: []);
  }

  /// `Question`
  String get questionCount {
    return Intl.message('Question', name: 'questionCount', desc: '', args: []);
  }

  /// `What is the first step when handling allergic reactions?`
  String get allergic_reactions_q1 {
    return Intl.message(
      'What is the first step when handling allergic reactions?',
      name: 'allergic_reactions_q1',
      desc: '',
      args: [],
    );
  }

  /// `Stay calm`
  String get allergic_reactions_q1_opt1 {
    return Intl.message(
      'Stay calm',
      name: 'allergic_reactions_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency`
  String get allergic_reactions_q1_opt2 {
    return Intl.message(
      'Call emergency',
      name: 'allergic_reactions_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Provide water`
  String get allergic_reactions_q1_opt3 {
    return Intl.message(
      'Provide water',
      name: 'allergic_reactions_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ignore symptoms`
  String get allergic_reactions_q1_opt4 {
    return Intl.message(
      'Ignore symptoms',
      name: 'allergic_reactions_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which of the following is a symptom of allergic reactions?`
  String get allergic_reactions_q2 {
    return Intl.message(
      'Which of the following is a symptom of allergic reactions?',
      name: 'allergic_reactions_q2',
      desc: '',
      args: [],
    );
  }

  /// `Dizziness`
  String get allergic_reactions_q2_opt1 {
    return Intl.message(
      'Dizziness',
      name: 'allergic_reactions_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Itching`
  String get allergic_reactions_q2_opt2 {
    return Intl.message(
      'Itching',
      name: 'allergic_reactions_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Blurred vision`
  String get allergic_reactions_q2_opt3 {
    return Intl.message(
      'Blurred vision',
      name: 'allergic_reactions_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `All of the above`
  String get allergic_reactions_q2_opt4 {
    return Intl.message(
      'All of the above',
      name: 'allergic_reactions_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When should you call emergency services during a allergic reactions incident?`
  String get allergic_reactions_q3 {
    return Intl.message(
      'When should you call emergency services during a allergic reactions incident?',
      name: 'allergic_reactions_q3',
      desc: '',
      args: [],
    );
  }

  /// `If symptoms are mild`
  String get allergic_reactions_q3_opt1 {
    return Intl.message(
      'If symptoms are mild',
      name: 'allergic_reactions_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `If the person faints`
  String get allergic_reactions_q3_opt2 {
    return Intl.message(
      'If the person faints',
      name: 'allergic_reactions_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `If they ask for help`
  String get allergic_reactions_q3_opt3 {
    return Intl.message(
      'If they ask for help',
      name: 'allergic_reactions_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Always`
  String get allergic_reactions_q3_opt4 {
    return Intl.message(
      'Always',
      name: 'allergic_reactions_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you avoid doing during allergic reactions care?`
  String get allergic_reactions_q4 {
    return Intl.message(
      'What should you avoid doing during allergic reactions care?',
      name: 'allergic_reactions_q4',
      desc: '',
      args: [],
    );
  }

  /// `Using outdated methods`
  String get allergic_reactions_q4_opt1 {
    return Intl.message(
      'Using outdated methods',
      name: 'allergic_reactions_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Keeping them comfortable`
  String get allergic_reactions_q4_opt2 {
    return Intl.message(
      'Keeping them comfortable',
      name: 'allergic_reactions_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Monitoring breathing`
  String get allergic_reactions_q4_opt3 {
    return Intl.message(
      'Monitoring breathing',
      name: 'allergic_reactions_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Staying with them`
  String get allergic_reactions_q4_opt4 {
    return Intl.message(
      'Staying with them',
      name: 'allergic_reactions_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a key goal of first aid for allergic reactions?`
  String get allergic_reactions_q5 {
    return Intl.message(
      'What is a key goal of first aid for allergic reactions?',
      name: 'allergic_reactions_q5',
      desc: '',
      args: [],
    );
  }

  /// `Complete treatment`
  String get allergic_reactions_q5_opt1 {
    return Intl.message(
      'Complete treatment',
      name: 'allergic_reactions_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Prevent worsening`
  String get allergic_reactions_q5_opt2 {
    return Intl.message(
      'Prevent worsening',
      name: 'allergic_reactions_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Diagnose accurately`
  String get allergic_reactions_q5_opt3 {
    return Intl.message(
      'Diagnose accurately',
      name: 'allergic_reactions_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Avoid hospital visit`
  String get allergic_reactions_q5_opt4 {
    return Intl.message(
      'Avoid hospital visit',
      name: 'allergic_reactions_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which tool is commonly used for handling allergic reactions situations?`
  String get allergic_reactions_q6 {
    return Intl.message(
      'Which tool is commonly used for handling allergic reactions situations?',
      name: 'allergic_reactions_q6',
      desc: '',
      args: [],
    );
  }

  /// `Bandage`
  String get allergic_reactions_q6_opt1 {
    return Intl.message(
      'Bandage',
      name: 'allergic_reactions_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Epinephrine pen`
  String get allergic_reactions_q6_opt2 {
    return Intl.message(
      'Epinephrine pen',
      name: 'allergic_reactions_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Gloves`
  String get allergic_reactions_q6_opt3 {
    return Intl.message(
      'Gloves',
      name: 'allergic_reactions_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `It depends on the situation`
  String get allergic_reactions_q6_opt4 {
    return Intl.message(
      'It depends on the situation',
      name: 'allergic_reactions_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is the first step when handling assessing injured person?`
  String get assess_q1 {
    return Intl.message(
      'What is the first step when handling assessing injured person?',
      name: 'assess_q1',
      desc: '',
      args: [],
    );
  }

  /// `Stay calm`
  String get assess_q1_opt1 {
    return Intl.message(
      'Stay calm',
      name: 'assess_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency`
  String get assess_q1_opt2 {
    return Intl.message(
      'Call emergency',
      name: 'assess_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Provide water`
  String get assess_q1_opt3 {
    return Intl.message(
      'Provide water',
      name: 'assess_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ignore symptoms`
  String get assess_q1_opt4 {
    return Intl.message(
      'Ignore symptoms',
      name: 'assess_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which of the following is a symptom of assessing injured person?`
  String get assess_q2 {
    return Intl.message(
      'Which of the following is a symptom of assessing injured person?',
      name: 'assess_q2',
      desc: '',
      args: [],
    );
  }

  /// `Dizziness`
  String get assess_q2_opt1 {
    return Intl.message(
      'Dizziness',
      name: 'assess_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Itching`
  String get assess_q2_opt2 {
    return Intl.message('Itching', name: 'assess_q2_opt2', desc: '', args: []);
  }

  /// `Blurred vision`
  String get assess_q2_opt3 {
    return Intl.message(
      'Blurred vision',
      name: 'assess_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `All of the above`
  String get assess_q2_opt4 {
    return Intl.message(
      'All of the above',
      name: 'assess_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When should you call emergency services during a assessing injured person incident?`
  String get assess_q3 {
    return Intl.message(
      'When should you call emergency services during a assessing injured person incident?',
      name: 'assess_q3',
      desc: '',
      args: [],
    );
  }

  /// `If symptoms are mild`
  String get assess_q3_opt1 {
    return Intl.message(
      'If symptoms are mild',
      name: 'assess_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `If the person faints`
  String get assess_q3_opt2 {
    return Intl.message(
      'If the person faints',
      name: 'assess_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `If they ask for help`
  String get assess_q3_opt3 {
    return Intl.message(
      'If they ask for help',
      name: 'assess_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Always`
  String get assess_q3_opt4 {
    return Intl.message('Always', name: 'assess_q3_opt4', desc: '', args: []);
  }

  /// `What should you avoid doing during assessing injured person care?`
  String get assess_q4 {
    return Intl.message(
      'What should you avoid doing during assessing injured person care?',
      name: 'assess_q4',
      desc: '',
      args: [],
    );
  }

  /// `Using outdated methods`
  String get assess_q4_opt1 {
    return Intl.message(
      'Using outdated methods',
      name: 'assess_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Keeping them comfortable`
  String get assess_q4_opt2 {
    return Intl.message(
      'Keeping them comfortable',
      name: 'assess_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Monitoring breathing`
  String get assess_q4_opt3 {
    return Intl.message(
      'Monitoring breathing',
      name: 'assess_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Staying with them`
  String get assess_q4_opt4 {
    return Intl.message(
      'Staying with them',
      name: 'assess_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a key goal of first aid for assessing injured person?`
  String get assess_q5 {
    return Intl.message(
      'What is a key goal of first aid for assessing injured person?',
      name: 'assess_q5',
      desc: '',
      args: [],
    );
  }

  /// `Complete treatment`
  String get assess_q5_opt1 {
    return Intl.message(
      'Complete treatment',
      name: 'assess_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Prevent worsening`
  String get assess_q5_opt2 {
    return Intl.message(
      'Prevent worsening',
      name: 'assess_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Diagnose accurately`
  String get assess_q5_opt3 {
    return Intl.message(
      'Diagnose accurately',
      name: 'assess_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Avoid hospital visit`
  String get assess_q5_opt4 {
    return Intl.message(
      'Avoid hospital visit',
      name: 'assess_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which tool is commonly used for handling assessing injured person situations?`
  String get assess_q6 {
    return Intl.message(
      'Which tool is commonly used for handling assessing injured person situations?',
      name: 'assess_q6',
      desc: '',
      args: [],
    );
  }

  /// `Bandage`
  String get assess_q6_opt1 {
    return Intl.message('Bandage', name: 'assess_q6_opt1', desc: '', args: []);
  }

  /// `Epinephrine pen`
  String get assess_q6_opt2 {
    return Intl.message(
      'Epinephrine pen',
      name: 'assess_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Gloves`
  String get assess_q6_opt3 {
    return Intl.message('Gloves', name: 'assess_q6_opt3', desc: '', args: []);
  }

  /// `It depends on the situation`
  String get assess_q6_opt4 {
    return Intl.message(
      'It depends on the situation',
      name: 'assess_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is the first step when handling asthma?`
  String get asthma_q1 {
    return Intl.message(
      'What is the first step when handling asthma?',
      name: 'asthma_q1',
      desc: '',
      args: [],
    );
  }

  /// `Stay calm`
  String get asthma_q1_opt1 {
    return Intl.message(
      'Stay calm',
      name: 'asthma_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency`
  String get asthma_q1_opt2 {
    return Intl.message(
      'Call emergency',
      name: 'asthma_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Provide water`
  String get asthma_q1_opt3 {
    return Intl.message(
      'Provide water',
      name: 'asthma_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ignore symptoms`
  String get asthma_q1_opt4 {
    return Intl.message(
      'Ignore symptoms',
      name: 'asthma_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which of the following is a symptom of asthma?`
  String get asthma_q2 {
    return Intl.message(
      'Which of the following is a symptom of asthma?',
      name: 'asthma_q2',
      desc: '',
      args: [],
    );
  }

  /// `Dizziness`
  String get asthma_q2_opt1 {
    return Intl.message(
      'Dizziness',
      name: 'asthma_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Itching`
  String get asthma_q2_opt2 {
    return Intl.message('Itching', name: 'asthma_q2_opt2', desc: '', args: []);
  }

  /// `Blurred vision`
  String get asthma_q2_opt3 {
    return Intl.message(
      'Blurred vision',
      name: 'asthma_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `All of the above`
  String get asthma_q2_opt4 {
    return Intl.message(
      'All of the above',
      name: 'asthma_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When should you call emergency services during a asthma incident?`
  String get asthma_q3 {
    return Intl.message(
      'When should you call emergency services during a asthma incident?',
      name: 'asthma_q3',
      desc: '',
      args: [],
    );
  }

  /// `If symptoms are mild`
  String get asthma_q3_opt1 {
    return Intl.message(
      'If symptoms are mild',
      name: 'asthma_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `If the person faints`
  String get asthma_q3_opt2 {
    return Intl.message(
      'If the person faints',
      name: 'asthma_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `If they ask for help`
  String get asthma_q3_opt3 {
    return Intl.message(
      'If they ask for help',
      name: 'asthma_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Always`
  String get asthma_q3_opt4 {
    return Intl.message('Always', name: 'asthma_q3_opt4', desc: '', args: []);
  }

  /// `What should you avoid doing during asthma care?`
  String get asthma_q4 {
    return Intl.message(
      'What should you avoid doing during asthma care?',
      name: 'asthma_q4',
      desc: '',
      args: [],
    );
  }

  /// `Using outdated methods`
  String get asthma_q4_opt1 {
    return Intl.message(
      'Using outdated methods',
      name: 'asthma_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Keeping them comfortable`
  String get asthma_q4_opt2 {
    return Intl.message(
      'Keeping them comfortable',
      name: 'asthma_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Monitoring breathing`
  String get asthma_q4_opt3 {
    return Intl.message(
      'Monitoring breathing',
      name: 'asthma_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Staying with them`
  String get asthma_q4_opt4 {
    return Intl.message(
      'Staying with them',
      name: 'asthma_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a key goal of first aid for asthma?`
  String get asthma_q5 {
    return Intl.message(
      'What is a key goal of first aid for asthma?',
      name: 'asthma_q5',
      desc: '',
      args: [],
    );
  }

  /// `Complete treatment`
  String get asthma_q5_opt1 {
    return Intl.message(
      'Complete treatment',
      name: 'asthma_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Prevent worsening`
  String get asthma_q5_opt2 {
    return Intl.message(
      'Prevent worsening',
      name: 'asthma_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Diagnose accurately`
  String get asthma_q5_opt3 {
    return Intl.message(
      'Diagnose accurately',
      name: 'asthma_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Avoid hospital visit`
  String get asthma_q5_opt4 {
    return Intl.message(
      'Avoid hospital visit',
      name: 'asthma_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which tool is commonly used for handling asthma situations?`
  String get asthma_q6 {
    return Intl.message(
      'Which tool is commonly used for handling asthma situations?',
      name: 'asthma_q6',
      desc: '',
      args: [],
    );
  }

  /// `Bandage`
  String get asthma_q6_opt1 {
    return Intl.message('Bandage', name: 'asthma_q6_opt1', desc: '', args: []);
  }

  /// `Epinephrine pen`
  String get asthma_q6_opt2 {
    return Intl.message(
      'Epinephrine pen',
      name: 'asthma_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Gloves`
  String get asthma_q6_opt3 {
    return Intl.message('Gloves', name: 'asthma_q6_opt3', desc: '', args: []);
  }

  /// `It depends on the situation`
  String get asthma_q6_opt4 {
    return Intl.message(
      'It depends on the situation',
      name: 'asthma_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is the first step when handling bites?`
  String get bites_q1 {
    return Intl.message(
      'What is the first step when handling bites?',
      name: 'bites_q1',
      desc: '',
      args: [],
    );
  }

  /// `Stay calm`
  String get bites_q1_opt1 {
    return Intl.message('Stay calm', name: 'bites_q1_opt1', desc: '', args: []);
  }

  /// `Call emergency`
  String get bites_q1_opt2 {
    return Intl.message(
      'Call emergency',
      name: 'bites_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Provide water`
  String get bites_q1_opt3 {
    return Intl.message(
      'Provide water',
      name: 'bites_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ignore symptoms`
  String get bites_q1_opt4 {
    return Intl.message(
      'Ignore symptoms',
      name: 'bites_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which of the following is a symptom of bites?`
  String get bites_q2 {
    return Intl.message(
      'Which of the following is a symptom of bites?',
      name: 'bites_q2',
      desc: '',
      args: [],
    );
  }

  /// `Dizziness`
  String get bites_q2_opt1 {
    return Intl.message('Dizziness', name: 'bites_q2_opt1', desc: '', args: []);
  }

  /// `Itching`
  String get bites_q2_opt2 {
    return Intl.message('Itching', name: 'bites_q2_opt2', desc: '', args: []);
  }

  /// `Blurred vision`
  String get bites_q2_opt3 {
    return Intl.message(
      'Blurred vision',
      name: 'bites_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `All of the above`
  String get bites_q2_opt4 {
    return Intl.message(
      'All of the above',
      name: 'bites_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When should you call emergency services during a bites incident?`
  String get bites_q3 {
    return Intl.message(
      'When should you call emergency services during a bites incident?',
      name: 'bites_q3',
      desc: '',
      args: [],
    );
  }

  /// `If symptoms are mild`
  String get bites_q3_opt1 {
    return Intl.message(
      'If symptoms are mild',
      name: 'bites_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `If the person faints`
  String get bites_q3_opt2 {
    return Intl.message(
      'If the person faints',
      name: 'bites_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `If they ask for help`
  String get bites_q3_opt3 {
    return Intl.message(
      'If they ask for help',
      name: 'bites_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Always`
  String get bites_q3_opt4 {
    return Intl.message('Always', name: 'bites_q3_opt4', desc: '', args: []);
  }

  /// `What should you avoid doing during bites care?`
  String get bites_q4 {
    return Intl.message(
      'What should you avoid doing during bites care?',
      name: 'bites_q4',
      desc: '',
      args: [],
    );
  }

  /// `Using outdated methods`
  String get bites_q4_opt1 {
    return Intl.message(
      'Using outdated methods',
      name: 'bites_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Keeping them comfortable`
  String get bites_q4_opt2 {
    return Intl.message(
      'Keeping them comfortable',
      name: 'bites_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Monitoring breathing`
  String get bites_q4_opt3 {
    return Intl.message(
      'Monitoring breathing',
      name: 'bites_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Staying with them`
  String get bites_q4_opt4 {
    return Intl.message(
      'Staying with them',
      name: 'bites_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a key goal of first aid for bites?`
  String get bites_q5 {
    return Intl.message(
      'What is a key goal of first aid for bites?',
      name: 'bites_q5',
      desc: '',
      args: [],
    );
  }

  /// `Complete treatment`
  String get bites_q5_opt1 {
    return Intl.message(
      'Complete treatment',
      name: 'bites_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Prevent worsening`
  String get bites_q5_opt2 {
    return Intl.message(
      'Prevent worsening',
      name: 'bites_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Diagnose accurately`
  String get bites_q5_opt3 {
    return Intl.message(
      'Diagnose accurately',
      name: 'bites_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Avoid hospital visit`
  String get bites_q5_opt4 {
    return Intl.message(
      'Avoid hospital visit',
      name: 'bites_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which tool is commonly used for handling bites situations?`
  String get bites_q6 {
    return Intl.message(
      'Which tool is commonly used for handling bites situations?',
      name: 'bites_q6',
      desc: '',
      args: [],
    );
  }

  /// `Bandage`
  String get bites_q6_opt1 {
    return Intl.message('Bandage', name: 'bites_q6_opt1', desc: '', args: []);
  }

  /// `Epinephrine pen`
  String get bites_q6_opt2 {
    return Intl.message(
      'Epinephrine pen',
      name: 'bites_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Gloves`
  String get bites_q6_opt3 {
    return Intl.message('Gloves', name: 'bites_q6_opt3', desc: '', args: []);
  }

  /// `It depends on the situation`
  String get bites_q6_opt4 {
    return Intl.message(
      'It depends on the situation',
      name: 'bites_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is the first step when handling bleeding?`
  String get bleeding_q1 {
    return Intl.message(
      'What is the first step when handling bleeding?',
      name: 'bleeding_q1',
      desc: '',
      args: [],
    );
  }

  /// `Stay calm`
  String get bleeding_q1_opt1 {
    return Intl.message(
      'Stay calm',
      name: 'bleeding_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency`
  String get bleeding_q1_opt2 {
    return Intl.message(
      'Call emergency',
      name: 'bleeding_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Provide water`
  String get bleeding_q1_opt3 {
    return Intl.message(
      'Provide water',
      name: 'bleeding_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ignore symptoms`
  String get bleeding_q1_opt4 {
    return Intl.message(
      'Ignore symptoms',
      name: 'bleeding_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which of the following is a symptom of bleeding?`
  String get bleeding_q2 {
    return Intl.message(
      'Which of the following is a symptom of bleeding?',
      name: 'bleeding_q2',
      desc: '',
      args: [],
    );
  }

  /// `Dizziness`
  String get bleeding_q2_opt1 {
    return Intl.message(
      'Dizziness',
      name: 'bleeding_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Itching`
  String get bleeding_q2_opt2 {
    return Intl.message(
      'Itching',
      name: 'bleeding_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Blurred vision`
  String get bleeding_q2_opt3 {
    return Intl.message(
      'Blurred vision',
      name: 'bleeding_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `All of the above`
  String get bleeding_q2_opt4 {
    return Intl.message(
      'All of the above',
      name: 'bleeding_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When should you call emergency services during a bleeding incident?`
  String get bleeding_q3 {
    return Intl.message(
      'When should you call emergency services during a bleeding incident?',
      name: 'bleeding_q3',
      desc: '',
      args: [],
    );
  }

  /// `If symptoms are mild`
  String get bleeding_q3_opt1 {
    return Intl.message(
      'If symptoms are mild',
      name: 'bleeding_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `If the person faints`
  String get bleeding_q3_opt2 {
    return Intl.message(
      'If the person faints',
      name: 'bleeding_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `If they ask for help`
  String get bleeding_q3_opt3 {
    return Intl.message(
      'If they ask for help',
      name: 'bleeding_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Always`
  String get bleeding_q3_opt4 {
    return Intl.message('Always', name: 'bleeding_q3_opt4', desc: '', args: []);
  }

  /// `What should you avoid doing during bleeding care?`
  String get bleeding_q4 {
    return Intl.message(
      'What should you avoid doing during bleeding care?',
      name: 'bleeding_q4',
      desc: '',
      args: [],
    );
  }

  /// `Using outdated methods`
  String get bleeding_q4_opt1 {
    return Intl.message(
      'Using outdated methods',
      name: 'bleeding_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Keeping them comfortable`
  String get bleeding_q4_opt2 {
    return Intl.message(
      'Keeping them comfortable',
      name: 'bleeding_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Monitoring breathing`
  String get bleeding_q4_opt3 {
    return Intl.message(
      'Monitoring breathing',
      name: 'bleeding_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Staying with them`
  String get bleeding_q4_opt4 {
    return Intl.message(
      'Staying with them',
      name: 'bleeding_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a key goal of first aid for bleeding?`
  String get bleeding_q5 {
    return Intl.message(
      'What is a key goal of first aid for bleeding?',
      name: 'bleeding_q5',
      desc: '',
      args: [],
    );
  }

  /// `Complete treatment`
  String get bleeding_q5_opt1 {
    return Intl.message(
      'Complete treatment',
      name: 'bleeding_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Prevent worsening`
  String get bleeding_q5_opt2 {
    return Intl.message(
      'Prevent worsening',
      name: 'bleeding_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Diagnose accurately`
  String get bleeding_q5_opt3 {
    return Intl.message(
      'Diagnose accurately',
      name: 'bleeding_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Avoid hospital visit`
  String get bleeding_q5_opt4 {
    return Intl.message(
      'Avoid hospital visit',
      name: 'bleeding_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which tool is commonly used for handling bleeding situations?`
  String get bleeding_q6 {
    return Intl.message(
      'Which tool is commonly used for handling bleeding situations?',
      name: 'bleeding_q6',
      desc: '',
      args: [],
    );
  }

  /// `Bandage`
  String get bleeding_q6_opt1 {
    return Intl.message(
      'Bandage',
      name: 'bleeding_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Epinephrine pen`
  String get bleeding_q6_opt2 {
    return Intl.message(
      'Epinephrine pen',
      name: 'bleeding_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Gloves`
  String get bleeding_q6_opt3 {
    return Intl.message('Gloves', name: 'bleeding_q6_opt3', desc: '', args: []);
  }

  /// `It depends on the situation`
  String get bleeding_q6_opt4 {
    return Intl.message(
      'It depends on the situation',
      name: 'bleeding_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is the first step when handling burns?`
  String get burns_q1 {
    return Intl.message(
      'What is the first step when handling burns?',
      name: 'burns_q1',
      desc: '',
      args: [],
    );
  }

  /// `Stay calm`
  String get burns_q1_opt1 {
    return Intl.message('Stay calm', name: 'burns_q1_opt1', desc: '', args: []);
  }

  /// `Call emergency`
  String get burns_q1_opt2 {
    return Intl.message(
      'Call emergency',
      name: 'burns_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Provide water`
  String get burns_q1_opt3 {
    return Intl.message(
      'Provide water',
      name: 'burns_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ignore symptoms`
  String get burns_q1_opt4 {
    return Intl.message(
      'Ignore symptoms',
      name: 'burns_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which of the following is a symptom of burns?`
  String get burns_q2 {
    return Intl.message(
      'Which of the following is a symptom of burns?',
      name: 'burns_q2',
      desc: '',
      args: [],
    );
  }

  /// `Dizziness`
  String get burns_q2_opt1 {
    return Intl.message('Dizziness', name: 'burns_q2_opt1', desc: '', args: []);
  }

  /// `Itching`
  String get burns_q2_opt2 {
    return Intl.message('Itching', name: 'burns_q2_opt2', desc: '', args: []);
  }

  /// `Blurred vision`
  String get burns_q2_opt3 {
    return Intl.message(
      'Blurred vision',
      name: 'burns_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `All of the above`
  String get burns_q2_opt4 {
    return Intl.message(
      'All of the above',
      name: 'burns_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When should you call emergency services during a burns incident?`
  String get burns_q3 {
    return Intl.message(
      'When should you call emergency services during a burns incident?',
      name: 'burns_q3',
      desc: '',
      args: [],
    );
  }

  /// `If symptoms are mild`
  String get burns_q3_opt1 {
    return Intl.message(
      'If symptoms are mild',
      name: 'burns_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `If the person faints`
  String get burns_q3_opt2 {
    return Intl.message(
      'If the person faints',
      name: 'burns_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `If they ask for help`
  String get burns_q3_opt3 {
    return Intl.message(
      'If they ask for help',
      name: 'burns_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Always`
  String get burns_q3_opt4 {
    return Intl.message('Always', name: 'burns_q3_opt4', desc: '', args: []);
  }

  /// `What should you avoid doing during burns care?`
  String get burns_q4 {
    return Intl.message(
      'What should you avoid doing during burns care?',
      name: 'burns_q4',
      desc: '',
      args: [],
    );
  }

  /// `Using outdated methods`
  String get burns_q4_opt1 {
    return Intl.message(
      'Using outdated methods',
      name: 'burns_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Keeping them comfortable`
  String get burns_q4_opt2 {
    return Intl.message(
      'Keeping them comfortable',
      name: 'burns_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Monitoring breathing`
  String get burns_q4_opt3 {
    return Intl.message(
      'Monitoring breathing',
      name: 'burns_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Staying with them`
  String get burns_q4_opt4 {
    return Intl.message(
      'Staying with them',
      name: 'burns_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a key goal of first aid for burns?`
  String get burns_q5 {
    return Intl.message(
      'What is a key goal of first aid for burns?',
      name: 'burns_q5',
      desc: '',
      args: [],
    );
  }

  /// `Complete treatment`
  String get burns_q5_opt1 {
    return Intl.message(
      'Complete treatment',
      name: 'burns_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Prevent worsening`
  String get burns_q5_opt2 {
    return Intl.message(
      'Prevent worsening',
      name: 'burns_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Diagnose accurately`
  String get burns_q5_opt3 {
    return Intl.message(
      'Diagnose accurately',
      name: 'burns_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Avoid hospital visit`
  String get burns_q5_opt4 {
    return Intl.message(
      'Avoid hospital visit',
      name: 'burns_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which tool is commonly used for handling burns situations?`
  String get burns_q6 {
    return Intl.message(
      'Which tool is commonly used for handling burns situations?',
      name: 'burns_q6',
      desc: '',
      args: [],
    );
  }

  /// `Bandage`
  String get burns_q6_opt1 {
    return Intl.message('Bandage', name: 'burns_q6_opt1', desc: '', args: []);
  }

  /// `Epinephrine pen`
  String get burns_q6_opt2 {
    return Intl.message(
      'Epinephrine pen',
      name: 'burns_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Gloves`
  String get burns_q6_opt3 {
    return Intl.message('Gloves', name: 'burns_q6_opt3', desc: '', args: []);
  }

  /// `It depends on the situation`
  String get burns_q6_opt4 {
    return Intl.message(
      'It depends on the situation',
      name: 'burns_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is the first step when handling choking?`
  String get choking_q1 {
    return Intl.message(
      'What is the first step when handling choking?',
      name: 'choking_q1',
      desc: '',
      args: [],
    );
  }

  /// `Stay calm`
  String get choking_q1_opt1 {
    return Intl.message(
      'Stay calm',
      name: 'choking_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency`
  String get choking_q1_opt2 {
    return Intl.message(
      'Call emergency',
      name: 'choking_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Provide water`
  String get choking_q1_opt3 {
    return Intl.message(
      'Provide water',
      name: 'choking_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ignore symptoms`
  String get choking_q1_opt4 {
    return Intl.message(
      'Ignore symptoms',
      name: 'choking_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which of the following is a symptom of choking?`
  String get choking_q2 {
    return Intl.message(
      'Which of the following is a symptom of choking?',
      name: 'choking_q2',
      desc: '',
      args: [],
    );
  }

  /// `Dizziness`
  String get choking_q2_opt1 {
    return Intl.message(
      'Dizziness',
      name: 'choking_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Itching`
  String get choking_q2_opt2 {
    return Intl.message('Itching', name: 'choking_q2_opt2', desc: '', args: []);
  }

  /// `Blurred vision`
  String get choking_q2_opt3 {
    return Intl.message(
      'Blurred vision',
      name: 'choking_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `All of the above`
  String get choking_q2_opt4 {
    return Intl.message(
      'All of the above',
      name: 'choking_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When should you call emergency services during a choking incident?`
  String get choking_q3 {
    return Intl.message(
      'When should you call emergency services during a choking incident?',
      name: 'choking_q3',
      desc: '',
      args: [],
    );
  }

  /// `If symptoms are mild`
  String get choking_q3_opt1 {
    return Intl.message(
      'If symptoms are mild',
      name: 'choking_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `If the person faints`
  String get choking_q3_opt2 {
    return Intl.message(
      'If the person faints',
      name: 'choking_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `If they ask for help`
  String get choking_q3_opt3 {
    return Intl.message(
      'If they ask for help',
      name: 'choking_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Always`
  String get choking_q3_opt4 {
    return Intl.message('Always', name: 'choking_q3_opt4', desc: '', args: []);
  }

  /// `What should you avoid doing during choking care?`
  String get choking_q4 {
    return Intl.message(
      'What should you avoid doing during choking care?',
      name: 'choking_q4',
      desc: '',
      args: [],
    );
  }

  /// `Using outdated methods`
  String get choking_q4_opt1 {
    return Intl.message(
      'Using outdated methods',
      name: 'choking_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Keeping them comfortable`
  String get choking_q4_opt2 {
    return Intl.message(
      'Keeping them comfortable',
      name: 'choking_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Monitoring breathing`
  String get choking_q4_opt3 {
    return Intl.message(
      'Monitoring breathing',
      name: 'choking_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Staying with them`
  String get choking_q4_opt4 {
    return Intl.message(
      'Staying with them',
      name: 'choking_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a key goal of first aid for choking?`
  String get choking_q5 {
    return Intl.message(
      'What is a key goal of first aid for choking?',
      name: 'choking_q5',
      desc: '',
      args: [],
    );
  }

  /// `Complete treatment`
  String get choking_q5_opt1 {
    return Intl.message(
      'Complete treatment',
      name: 'choking_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Prevent worsening`
  String get choking_q5_opt2 {
    return Intl.message(
      'Prevent worsening',
      name: 'choking_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Diagnose accurately`
  String get choking_q5_opt3 {
    return Intl.message(
      'Diagnose accurately',
      name: 'choking_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Avoid hospital visit`
  String get choking_q5_opt4 {
    return Intl.message(
      'Avoid hospital visit',
      name: 'choking_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which tool is commonly used for handling choking situations?`
  String get choking_q6 {
    return Intl.message(
      'Which tool is commonly used for handling choking situations?',
      name: 'choking_q6',
      desc: '',
      args: [],
    );
  }

  /// `Bandage`
  String get choking_q6_opt1 {
    return Intl.message('Bandage', name: 'choking_q6_opt1', desc: '', args: []);
  }

  /// `Epinephrine pen`
  String get choking_q6_opt2 {
    return Intl.message(
      'Epinephrine pen',
      name: 'choking_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Gloves`
  String get choking_q6_opt3 {
    return Intl.message('Gloves', name: 'choking_q6_opt3', desc: '', args: []);
  }

  /// `It depends on the situation`
  String get choking_q6_opt4 {
    return Intl.message(
      'It depends on the situation',
      name: 'choking_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is the first step when handling cpr?`
  String get cpr_q1 {
    return Intl.message(
      'What is the first step when handling cpr?',
      name: 'cpr_q1',
      desc: '',
      args: [],
    );
  }

  /// `Stay calm`
  String get cpr_q1_opt1 {
    return Intl.message('Stay calm', name: 'cpr_q1_opt1', desc: '', args: []);
  }

  /// `Call emergency`
  String get cpr_q1_opt2 {
    return Intl.message(
      'Call emergency',
      name: 'cpr_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Provide water`
  String get cpr_q1_opt3 {
    return Intl.message(
      'Provide water',
      name: 'cpr_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ignore symptoms`
  String get cpr_q1_opt4 {
    return Intl.message(
      'Ignore symptoms',
      name: 'cpr_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which of the following is a symptom of cpr?`
  String get cpr_q2 {
    return Intl.message(
      'Which of the following is a symptom of cpr?',
      name: 'cpr_q2',
      desc: '',
      args: [],
    );
  }

  /// `Dizziness`
  String get cpr_q2_opt1 {
    return Intl.message('Dizziness', name: 'cpr_q2_opt1', desc: '', args: []);
  }

  /// `Itching`
  String get cpr_q2_opt2 {
    return Intl.message('Itching', name: 'cpr_q2_opt2', desc: '', args: []);
  }

  /// `Blurred vision`
  String get cpr_q2_opt3 {
    return Intl.message(
      'Blurred vision',
      name: 'cpr_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `All of the above`
  String get cpr_q2_opt4 {
    return Intl.message(
      'All of the above',
      name: 'cpr_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When should you call emergency services during a cpr incident?`
  String get cpr_q3 {
    return Intl.message(
      'When should you call emergency services during a cpr incident?',
      name: 'cpr_q3',
      desc: '',
      args: [],
    );
  }

  /// `If symptoms are mild`
  String get cpr_q3_opt1 {
    return Intl.message(
      'If symptoms are mild',
      name: 'cpr_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `If the person faints`
  String get cpr_q3_opt2 {
    return Intl.message(
      'If the person faints',
      name: 'cpr_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `If they ask for help`
  String get cpr_q3_opt3 {
    return Intl.message(
      'If they ask for help',
      name: 'cpr_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Always`
  String get cpr_q3_opt4 {
    return Intl.message('Always', name: 'cpr_q3_opt4', desc: '', args: []);
  }

  /// `What should you avoid doing during cpr care?`
  String get cpr_q4 {
    return Intl.message(
      'What should you avoid doing during cpr care?',
      name: 'cpr_q4',
      desc: '',
      args: [],
    );
  }

  /// `Using outdated methods`
  String get cpr_q4_opt1 {
    return Intl.message(
      'Using outdated methods',
      name: 'cpr_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Keeping them comfortable`
  String get cpr_q4_opt2 {
    return Intl.message(
      'Keeping them comfortable',
      name: 'cpr_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Monitoring breathing`
  String get cpr_q4_opt3 {
    return Intl.message(
      'Monitoring breathing',
      name: 'cpr_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Staying with them`
  String get cpr_q4_opt4 {
    return Intl.message(
      'Staying with them',
      name: 'cpr_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a key goal of first aid for cpr?`
  String get cpr_q5 {
    return Intl.message(
      'What is a key goal of first aid for cpr?',
      name: 'cpr_q5',
      desc: '',
      args: [],
    );
  }

  /// `Complete treatment`
  String get cpr_q5_opt1 {
    return Intl.message(
      'Complete treatment',
      name: 'cpr_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Prevent worsening`
  String get cpr_q5_opt2 {
    return Intl.message(
      'Prevent worsening',
      name: 'cpr_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Diagnose accurately`
  String get cpr_q5_opt3 {
    return Intl.message(
      'Diagnose accurately',
      name: 'cpr_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Avoid hospital visit`
  String get cpr_q5_opt4 {
    return Intl.message(
      'Avoid hospital visit',
      name: 'cpr_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which tool is commonly used for handling cpr situations?`
  String get cpr_q6 {
    return Intl.message(
      'Which tool is commonly used for handling cpr situations?',
      name: 'cpr_q6',
      desc: '',
      args: [],
    );
  }

  /// `Bandage`
  String get cpr_q6_opt1 {
    return Intl.message('Bandage', name: 'cpr_q6_opt1', desc: '', args: []);
  }

  /// `Epinephrine pen`
  String get cpr_q6_opt2 {
    return Intl.message(
      'Epinephrine pen',
      name: 'cpr_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Gloves`
  String get cpr_q6_opt3 {
    return Intl.message('Gloves', name: 'cpr_q6_opt3', desc: '', args: []);
  }

  /// `It depends on the situation`
  String get cpr_q6_opt4 {
    return Intl.message(
      'It depends on the situation',
      name: 'cpr_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is the first step when handling diabetics?`
  String get diabetics_q1 {
    return Intl.message(
      'What is the first step when handling diabetics?',
      name: 'diabetics_q1',
      desc: '',
      args: [],
    );
  }

  /// `Stay calm`
  String get diabetics_q1_opt1 {
    return Intl.message(
      'Stay calm',
      name: 'diabetics_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency`
  String get diabetics_q1_opt2 {
    return Intl.message(
      'Call emergency',
      name: 'diabetics_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Provide water`
  String get diabetics_q1_opt3 {
    return Intl.message(
      'Provide water',
      name: 'diabetics_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ignore symptoms`
  String get diabetics_q1_opt4 {
    return Intl.message(
      'Ignore symptoms',
      name: 'diabetics_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which of the following is a symptom of diabetics?`
  String get diabetics_q2 {
    return Intl.message(
      'Which of the following is a symptom of diabetics?',
      name: 'diabetics_q2',
      desc: '',
      args: [],
    );
  }

  /// `Dizziness`
  String get diabetics_q2_opt1 {
    return Intl.message(
      'Dizziness',
      name: 'diabetics_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Itching`
  String get diabetics_q2_opt2 {
    return Intl.message(
      'Itching',
      name: 'diabetics_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Blurred vision`
  String get diabetics_q2_opt3 {
    return Intl.message(
      'Blurred vision',
      name: 'diabetics_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `All of the above`
  String get diabetics_q2_opt4 {
    return Intl.message(
      'All of the above',
      name: 'diabetics_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When should you call emergency services during a diabetics incident?`
  String get diabetics_q3 {
    return Intl.message(
      'When should you call emergency services during a diabetics incident?',
      name: 'diabetics_q3',
      desc: '',
      args: [],
    );
  }

  /// `If symptoms are mild`
  String get diabetics_q3_opt1 {
    return Intl.message(
      'If symptoms are mild',
      name: 'diabetics_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `If the person faints`
  String get diabetics_q3_opt2 {
    return Intl.message(
      'If the person faints',
      name: 'diabetics_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `If they ask for help`
  String get diabetics_q3_opt3 {
    return Intl.message(
      'If they ask for help',
      name: 'diabetics_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Always`
  String get diabetics_q3_opt4 {
    return Intl.message(
      'Always',
      name: 'diabetics_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you avoid doing during diabetics care?`
  String get diabetics_q4 {
    return Intl.message(
      'What should you avoid doing during diabetics care?',
      name: 'diabetics_q4',
      desc: '',
      args: [],
    );
  }

  /// `Using outdated methods`
  String get diabetics_q4_opt1 {
    return Intl.message(
      'Using outdated methods',
      name: 'diabetics_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Keeping them comfortable`
  String get diabetics_q4_opt2 {
    return Intl.message(
      'Keeping them comfortable',
      name: 'diabetics_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Monitoring breathing`
  String get diabetics_q4_opt3 {
    return Intl.message(
      'Monitoring breathing',
      name: 'diabetics_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Staying with them`
  String get diabetics_q4_opt4 {
    return Intl.message(
      'Staying with them',
      name: 'diabetics_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a key goal of first aid for diabetics?`
  String get diabetics_q5 {
    return Intl.message(
      'What is a key goal of first aid for diabetics?',
      name: 'diabetics_q5',
      desc: '',
      args: [],
    );
  }

  /// `Complete treatment`
  String get diabetics_q5_opt1 {
    return Intl.message(
      'Complete treatment',
      name: 'diabetics_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Prevent worsening`
  String get diabetics_q5_opt2 {
    return Intl.message(
      'Prevent worsening',
      name: 'diabetics_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Diagnose accurately`
  String get diabetics_q5_opt3 {
    return Intl.message(
      'Diagnose accurately',
      name: 'diabetics_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Avoid hospital visit`
  String get diabetics_q5_opt4 {
    return Intl.message(
      'Avoid hospital visit',
      name: 'diabetics_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which tool is commonly used for handling diabetics situations?`
  String get diabetics_q6 {
    return Intl.message(
      'Which tool is commonly used for handling diabetics situations?',
      name: 'diabetics_q6',
      desc: '',
      args: [],
    );
  }

  /// `Bandage`
  String get diabetics_q6_opt1 {
    return Intl.message(
      'Bandage',
      name: 'diabetics_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Epinephrine pen`
  String get diabetics_q6_opt2 {
    return Intl.message(
      'Epinephrine pen',
      name: 'diabetics_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Gloves`
  String get diabetics_q6_opt3 {
    return Intl.message(
      'Gloves',
      name: 'diabetics_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `It depends on the situation`
  String get diabetics_q6_opt4 {
    return Intl.message(
      'It depends on the situation',
      name: 'diabetics_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is the first step when handling drug overdose?`
  String get drug_overdose_q1 {
    return Intl.message(
      'What is the first step when handling drug overdose?',
      name: 'drug_overdose_q1',
      desc: '',
      args: [],
    );
  }

  /// `Stay calm`
  String get drug_overdose_q1_opt1 {
    return Intl.message(
      'Stay calm',
      name: 'drug_overdose_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency`
  String get drug_overdose_q1_opt2 {
    return Intl.message(
      'Call emergency',
      name: 'drug_overdose_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Provide water`
  String get drug_overdose_q1_opt3 {
    return Intl.message(
      'Provide water',
      name: 'drug_overdose_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ignore symptoms`
  String get drug_overdose_q1_opt4 {
    return Intl.message(
      'Ignore symptoms',
      name: 'drug_overdose_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which of the following is a symptom of drug overdose?`
  String get drug_overdose_q2 {
    return Intl.message(
      'Which of the following is a symptom of drug overdose?',
      name: 'drug_overdose_q2',
      desc: '',
      args: [],
    );
  }

  /// `Dizziness`
  String get drug_overdose_q2_opt1 {
    return Intl.message(
      'Dizziness',
      name: 'drug_overdose_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Itching`
  String get drug_overdose_q2_opt2 {
    return Intl.message(
      'Itching',
      name: 'drug_overdose_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Blurred vision`
  String get drug_overdose_q2_opt3 {
    return Intl.message(
      'Blurred vision',
      name: 'drug_overdose_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `All of the above`
  String get drug_overdose_q2_opt4 {
    return Intl.message(
      'All of the above',
      name: 'drug_overdose_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When should you call emergency services during a drug overdose incident?`
  String get drug_overdose_q3 {
    return Intl.message(
      'When should you call emergency services during a drug overdose incident?',
      name: 'drug_overdose_q3',
      desc: '',
      args: [],
    );
  }

  /// `If symptoms are mild`
  String get drug_overdose_q3_opt1 {
    return Intl.message(
      'If symptoms are mild',
      name: 'drug_overdose_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `If the person faints`
  String get drug_overdose_q3_opt2 {
    return Intl.message(
      'If the person faints',
      name: 'drug_overdose_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `If they ask for help`
  String get drug_overdose_q3_opt3 {
    return Intl.message(
      'If they ask for help',
      name: 'drug_overdose_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Always`
  String get drug_overdose_q3_opt4 {
    return Intl.message(
      'Always',
      name: 'drug_overdose_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you avoid doing during drug overdose care?`
  String get drug_overdose_q4 {
    return Intl.message(
      'What should you avoid doing during drug overdose care?',
      name: 'drug_overdose_q4',
      desc: '',
      args: [],
    );
  }

  /// `Using outdated methods`
  String get drug_overdose_q4_opt1 {
    return Intl.message(
      'Using outdated methods',
      name: 'drug_overdose_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Keeping them comfortable`
  String get drug_overdose_q4_opt2 {
    return Intl.message(
      'Keeping them comfortable',
      name: 'drug_overdose_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Monitoring breathing`
  String get drug_overdose_q4_opt3 {
    return Intl.message(
      'Monitoring breathing',
      name: 'drug_overdose_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Staying with them`
  String get drug_overdose_q4_opt4 {
    return Intl.message(
      'Staying with them',
      name: 'drug_overdose_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a key goal of first aid for drug overdose?`
  String get drug_overdose_q5 {
    return Intl.message(
      'What is a key goal of first aid for drug overdose?',
      name: 'drug_overdose_q5',
      desc: '',
      args: [],
    );
  }

  /// `Complete treatment`
  String get drug_overdose_q5_opt1 {
    return Intl.message(
      'Complete treatment',
      name: 'drug_overdose_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Prevent worsening`
  String get drug_overdose_q5_opt2 {
    return Intl.message(
      'Prevent worsening',
      name: 'drug_overdose_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Diagnose accurately`
  String get drug_overdose_q5_opt3 {
    return Intl.message(
      'Diagnose accurately',
      name: 'drug_overdose_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Avoid hospital visit`
  String get drug_overdose_q5_opt4 {
    return Intl.message(
      'Avoid hospital visit',
      name: 'drug_overdose_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which tool is commonly used for handling drug overdose situations?`
  String get drug_overdose_q6 {
    return Intl.message(
      'Which tool is commonly used for handling drug overdose situations?',
      name: 'drug_overdose_q6',
      desc: '',
      args: [],
    );
  }

  /// `Bandage`
  String get drug_overdose_q6_opt1 {
    return Intl.message(
      'Bandage',
      name: 'drug_overdose_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Epinephrine pen`
  String get drug_overdose_q6_opt2 {
    return Intl.message(
      'Epinephrine pen',
      name: 'drug_overdose_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Gloves`
  String get drug_overdose_q6_opt3 {
    return Intl.message(
      'Gloves',
      name: 'drug_overdose_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `It depends on the situation`
  String get drug_overdose_q6_opt4 {
    return Intl.message(
      'It depends on the situation',
      name: 'drug_overdose_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is the first step when handling eye injury?`
  String get eye_injury_q1 {
    return Intl.message(
      'What is the first step when handling eye injury?',
      name: 'eye_injury_q1',
      desc: '',
      args: [],
    );
  }

  /// `Stay calm`
  String get eye_injury_q1_opt1 {
    return Intl.message(
      'Stay calm',
      name: 'eye_injury_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency`
  String get eye_injury_q1_opt2 {
    return Intl.message(
      'Call emergency',
      name: 'eye_injury_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Provide water`
  String get eye_injury_q1_opt3 {
    return Intl.message(
      'Provide water',
      name: 'eye_injury_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ignore symptoms`
  String get eye_injury_q1_opt4 {
    return Intl.message(
      'Ignore symptoms',
      name: 'eye_injury_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which of the following is a symptom of eye injury?`
  String get eye_injury_q2 {
    return Intl.message(
      'Which of the following is a symptom of eye injury?',
      name: 'eye_injury_q2',
      desc: '',
      args: [],
    );
  }

  /// `Dizziness`
  String get eye_injury_q2_opt1 {
    return Intl.message(
      'Dizziness',
      name: 'eye_injury_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Itching`
  String get eye_injury_q2_opt2 {
    return Intl.message(
      'Itching',
      name: 'eye_injury_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Blurred vision`
  String get eye_injury_q2_opt3 {
    return Intl.message(
      'Blurred vision',
      name: 'eye_injury_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `All of the above`
  String get eye_injury_q2_opt4 {
    return Intl.message(
      'All of the above',
      name: 'eye_injury_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When should you call emergency services during a eye injury incident?`
  String get eye_injury_q3 {
    return Intl.message(
      'When should you call emergency services during a eye injury incident?',
      name: 'eye_injury_q3',
      desc: '',
      args: [],
    );
  }

  /// `If symptoms are mild`
  String get eye_injury_q3_opt1 {
    return Intl.message(
      'If symptoms are mild',
      name: 'eye_injury_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `If the person faints`
  String get eye_injury_q3_opt2 {
    return Intl.message(
      'If the person faints',
      name: 'eye_injury_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `If they ask for help`
  String get eye_injury_q3_opt3 {
    return Intl.message(
      'If they ask for help',
      name: 'eye_injury_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Always`
  String get eye_injury_q3_opt4 {
    return Intl.message(
      'Always',
      name: 'eye_injury_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you avoid doing during eye injury care?`
  String get eye_injury_q4 {
    return Intl.message(
      'What should you avoid doing during eye injury care?',
      name: 'eye_injury_q4',
      desc: '',
      args: [],
    );
  }

  /// `Using outdated methods`
  String get eye_injury_q4_opt1 {
    return Intl.message(
      'Using outdated methods',
      name: 'eye_injury_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Keeping them comfortable`
  String get eye_injury_q4_opt2 {
    return Intl.message(
      'Keeping them comfortable',
      name: 'eye_injury_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Monitoring breathing`
  String get eye_injury_q4_opt3 {
    return Intl.message(
      'Monitoring breathing',
      name: 'eye_injury_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Staying with them`
  String get eye_injury_q4_opt4 {
    return Intl.message(
      'Staying with them',
      name: 'eye_injury_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a key goal of first aid for eye injury?`
  String get eye_injury_q5 {
    return Intl.message(
      'What is a key goal of first aid for eye injury?',
      name: 'eye_injury_q5',
      desc: '',
      args: [],
    );
  }

  /// `Complete treatment`
  String get eye_injury_q5_opt1 {
    return Intl.message(
      'Complete treatment',
      name: 'eye_injury_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Prevent worsening`
  String get eye_injury_q5_opt2 {
    return Intl.message(
      'Prevent worsening',
      name: 'eye_injury_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Diagnose accurately`
  String get eye_injury_q5_opt3 {
    return Intl.message(
      'Diagnose accurately',
      name: 'eye_injury_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Avoid hospital visit`
  String get eye_injury_q5_opt4 {
    return Intl.message(
      'Avoid hospital visit',
      name: 'eye_injury_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which tool is commonly used for handling eye injury situations?`
  String get eye_injury_q6 {
    return Intl.message(
      'Which tool is commonly used for handling eye injury situations?',
      name: 'eye_injury_q6',
      desc: '',
      args: [],
    );
  }

  /// `Bandage`
  String get eye_injury_q6_opt1 {
    return Intl.message(
      'Bandage',
      name: 'eye_injury_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Epinephrine pen`
  String get eye_injury_q6_opt2 {
    return Intl.message(
      'Epinephrine pen',
      name: 'eye_injury_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Gloves`
  String get eye_injury_q6_opt3 {
    return Intl.message(
      'Gloves',
      name: 'eye_injury_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `It depends on the situation`
  String get eye_injury_q6_opt4 {
    return Intl.message(
      'It depends on the situation',
      name: 'eye_injury_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is the first step when handling fractures?`
  String get fractures_q1 {
    return Intl.message(
      'What is the first step when handling fractures?',
      name: 'fractures_q1',
      desc: '',
      args: [],
    );
  }

  /// `Stay calm`
  String get fractures_q1_opt1 {
    return Intl.message(
      'Stay calm',
      name: 'fractures_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency`
  String get fractures_q1_opt2 {
    return Intl.message(
      'Call emergency',
      name: 'fractures_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Provide water`
  String get fractures_q1_opt3 {
    return Intl.message(
      'Provide water',
      name: 'fractures_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ignore symptoms`
  String get fractures_q1_opt4 {
    return Intl.message(
      'Ignore symptoms',
      name: 'fractures_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which of the following is a symptom of fractures?`
  String get fractures_q2 {
    return Intl.message(
      'Which of the following is a symptom of fractures?',
      name: 'fractures_q2',
      desc: '',
      args: [],
    );
  }

  /// `Dizziness`
  String get fractures_q2_opt1 {
    return Intl.message(
      'Dizziness',
      name: 'fractures_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Itching`
  String get fractures_q2_opt2 {
    return Intl.message(
      'Itching',
      name: 'fractures_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Blurred vision`
  String get fractures_q2_opt3 {
    return Intl.message(
      'Blurred vision',
      name: 'fractures_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `All of the above`
  String get fractures_q2_opt4 {
    return Intl.message(
      'All of the above',
      name: 'fractures_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When should you call emergency services during a fractures incident?`
  String get fractures_q3 {
    return Intl.message(
      'When should you call emergency services during a fractures incident?',
      name: 'fractures_q3',
      desc: '',
      args: [],
    );
  }

  /// `If symptoms are mild`
  String get fractures_q3_opt1 {
    return Intl.message(
      'If symptoms are mild',
      name: 'fractures_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `If the person faints`
  String get fractures_q3_opt2 {
    return Intl.message(
      'If the person faints',
      name: 'fractures_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `If they ask for help`
  String get fractures_q3_opt3 {
    return Intl.message(
      'If they ask for help',
      name: 'fractures_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Always`
  String get fractures_q3_opt4 {
    return Intl.message(
      'Always',
      name: 'fractures_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you avoid doing during fractures care?`
  String get fractures_q4 {
    return Intl.message(
      'What should you avoid doing during fractures care?',
      name: 'fractures_q4',
      desc: '',
      args: [],
    );
  }

  /// `Using outdated methods`
  String get fractures_q4_opt1 {
    return Intl.message(
      'Using outdated methods',
      name: 'fractures_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Keeping them comfortable`
  String get fractures_q4_opt2 {
    return Intl.message(
      'Keeping them comfortable',
      name: 'fractures_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Monitoring breathing`
  String get fractures_q4_opt3 {
    return Intl.message(
      'Monitoring breathing',
      name: 'fractures_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Staying with them`
  String get fractures_q4_opt4 {
    return Intl.message(
      'Staying with them',
      name: 'fractures_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a key goal of first aid for fractures?`
  String get fractures_q5 {
    return Intl.message(
      'What is a key goal of first aid for fractures?',
      name: 'fractures_q5',
      desc: '',
      args: [],
    );
  }

  /// `Complete treatment`
  String get fractures_q5_opt1 {
    return Intl.message(
      'Complete treatment',
      name: 'fractures_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Prevent worsening`
  String get fractures_q5_opt2 {
    return Intl.message(
      'Prevent worsening',
      name: 'fractures_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Diagnose accurately`
  String get fractures_q5_opt3 {
    return Intl.message(
      'Diagnose accurately',
      name: 'fractures_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Avoid hospital visit`
  String get fractures_q5_opt4 {
    return Intl.message(
      'Avoid hospital visit',
      name: 'fractures_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which tool is commonly used for handling fractures situations?`
  String get fractures_q6 {
    return Intl.message(
      'Which tool is commonly used for handling fractures situations?',
      name: 'fractures_q6',
      desc: '',
      args: [],
    );
  }

  /// `Bandage`
  String get fractures_q6_opt1 {
    return Intl.message(
      'Bandage',
      name: 'fractures_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Epinephrine pen`
  String get fractures_q6_opt2 {
    return Intl.message(
      'Epinephrine pen',
      name: 'fractures_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Gloves`
  String get fractures_q6_opt3 {
    return Intl.message(
      'Gloves',
      name: 'fractures_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `It depends on the situation`
  String get fractures_q6_opt4 {
    return Intl.message(
      'It depends on the situation',
      name: 'fractures_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is the first step when handling head injury?`
  String get head_injury_q1 {
    return Intl.message(
      'What is the first step when handling head injury?',
      name: 'head_injury_q1',
      desc: '',
      args: [],
    );
  }

  /// `Stay calm`
  String get head_injury_q1_opt1 {
    return Intl.message(
      'Stay calm',
      name: 'head_injury_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency`
  String get head_injury_q1_opt2 {
    return Intl.message(
      'Call emergency',
      name: 'head_injury_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Provide water`
  String get head_injury_q1_opt3 {
    return Intl.message(
      'Provide water',
      name: 'head_injury_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ignore symptoms`
  String get head_injury_q1_opt4 {
    return Intl.message(
      'Ignore symptoms',
      name: 'head_injury_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which of the following is a symptom of head injury?`
  String get head_injury_q2 {
    return Intl.message(
      'Which of the following is a symptom of head injury?',
      name: 'head_injury_q2',
      desc: '',
      args: [],
    );
  }

  /// `Dizziness`
  String get head_injury_q2_opt1 {
    return Intl.message(
      'Dizziness',
      name: 'head_injury_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Itching`
  String get head_injury_q2_opt2 {
    return Intl.message(
      'Itching',
      name: 'head_injury_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Blurred vision`
  String get head_injury_q2_opt3 {
    return Intl.message(
      'Blurred vision',
      name: 'head_injury_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `All of the above`
  String get head_injury_q2_opt4 {
    return Intl.message(
      'All of the above',
      name: 'head_injury_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When should you call emergency services during a head injury incident?`
  String get head_injury_q3 {
    return Intl.message(
      'When should you call emergency services during a head injury incident?',
      name: 'head_injury_q3',
      desc: '',
      args: [],
    );
  }

  /// `If symptoms are mild`
  String get head_injury_q3_opt1 {
    return Intl.message(
      'If symptoms are mild',
      name: 'head_injury_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `If the person faints`
  String get head_injury_q3_opt2 {
    return Intl.message(
      'If the person faints',
      name: 'head_injury_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `If they ask for help`
  String get head_injury_q3_opt3 {
    return Intl.message(
      'If they ask for help',
      name: 'head_injury_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Always`
  String get head_injury_q3_opt4 {
    return Intl.message(
      'Always',
      name: 'head_injury_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you avoid doing during head injury care?`
  String get head_injury_q4 {
    return Intl.message(
      'What should you avoid doing during head injury care?',
      name: 'head_injury_q4',
      desc: '',
      args: [],
    );
  }

  /// `Using outdated methods`
  String get head_injury_q4_opt1 {
    return Intl.message(
      'Using outdated methods',
      name: 'head_injury_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Keeping them comfortable`
  String get head_injury_q4_opt2 {
    return Intl.message(
      'Keeping them comfortable',
      name: 'head_injury_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Monitoring breathing`
  String get head_injury_q4_opt3 {
    return Intl.message(
      'Monitoring breathing',
      name: 'head_injury_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Staying with them`
  String get head_injury_q4_opt4 {
    return Intl.message(
      'Staying with them',
      name: 'head_injury_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a key goal of first aid for head injury?`
  String get head_injury_q5 {
    return Intl.message(
      'What is a key goal of first aid for head injury?',
      name: 'head_injury_q5',
      desc: '',
      args: [],
    );
  }

  /// `Complete treatment`
  String get head_injury_q5_opt1 {
    return Intl.message(
      'Complete treatment',
      name: 'head_injury_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Prevent worsening`
  String get head_injury_q5_opt2 {
    return Intl.message(
      'Prevent worsening',
      name: 'head_injury_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Diagnose accurately`
  String get head_injury_q5_opt3 {
    return Intl.message(
      'Diagnose accurately',
      name: 'head_injury_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Avoid hospital visit`
  String get head_injury_q5_opt4 {
    return Intl.message(
      'Avoid hospital visit',
      name: 'head_injury_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which tool is commonly used for handling head injury situations?`
  String get head_injury_q6 {
    return Intl.message(
      'Which tool is commonly used for handling head injury situations?',
      name: 'head_injury_q6',
      desc: '',
      args: [],
    );
  }

  /// `Bandage`
  String get head_injury_q6_opt1 {
    return Intl.message(
      'Bandage',
      name: 'head_injury_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Epinephrine pen`
  String get head_injury_q6_opt2 {
    return Intl.message(
      'Epinephrine pen',
      name: 'head_injury_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Gloves`
  String get head_injury_q6_opt3 {
    return Intl.message(
      'Gloves',
      name: 'head_injury_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `It depends on the situation`
  String get head_injury_q6_opt4 {
    return Intl.message(
      'It depends on the situation',
      name: 'head_injury_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is the first step when handling heart condition?`
  String get heart_condition_q1 {
    return Intl.message(
      'What is the first step when handling heart condition?',
      name: 'heart_condition_q1',
      desc: '',
      args: [],
    );
  }

  /// `Stay calm`
  String get heart_condition_q1_opt1 {
    return Intl.message(
      'Stay calm',
      name: 'heart_condition_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency`
  String get heart_condition_q1_opt2 {
    return Intl.message(
      'Call emergency',
      name: 'heart_condition_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Provide water`
  String get heart_condition_q1_opt3 {
    return Intl.message(
      'Provide water',
      name: 'heart_condition_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ignore symptoms`
  String get heart_condition_q1_opt4 {
    return Intl.message(
      'Ignore symptoms',
      name: 'heart_condition_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which of the following is a symptom of heart condition?`
  String get heart_condition_q2 {
    return Intl.message(
      'Which of the following is a symptom of heart condition?',
      name: 'heart_condition_q2',
      desc: '',
      args: [],
    );
  }

  /// `Dizziness`
  String get heart_condition_q2_opt1 {
    return Intl.message(
      'Dizziness',
      name: 'heart_condition_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Itching`
  String get heart_condition_q2_opt2 {
    return Intl.message(
      'Itching',
      name: 'heart_condition_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Blurred vision`
  String get heart_condition_q2_opt3 {
    return Intl.message(
      'Blurred vision',
      name: 'heart_condition_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `All of the above`
  String get heart_condition_q2_opt4 {
    return Intl.message(
      'All of the above',
      name: 'heart_condition_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When should you call emergency services during a heart condition incident?`
  String get heart_condition_q3 {
    return Intl.message(
      'When should you call emergency services during a heart condition incident?',
      name: 'heart_condition_q3',
      desc: '',
      args: [],
    );
  }

  /// `If symptoms are mild`
  String get heart_condition_q3_opt1 {
    return Intl.message(
      'If symptoms are mild',
      name: 'heart_condition_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `If the person faints`
  String get heart_condition_q3_opt2 {
    return Intl.message(
      'If the person faints',
      name: 'heart_condition_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `If they ask for help`
  String get heart_condition_q3_opt3 {
    return Intl.message(
      'If they ask for help',
      name: 'heart_condition_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Always`
  String get heart_condition_q3_opt4 {
    return Intl.message(
      'Always',
      name: 'heart_condition_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you avoid doing during heart condition care?`
  String get heart_condition_q4 {
    return Intl.message(
      'What should you avoid doing during heart condition care?',
      name: 'heart_condition_q4',
      desc: '',
      args: [],
    );
  }

  /// `Using outdated methods`
  String get heart_condition_q4_opt1 {
    return Intl.message(
      'Using outdated methods',
      name: 'heart_condition_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Keeping them comfortable`
  String get heart_condition_q4_opt2 {
    return Intl.message(
      'Keeping them comfortable',
      name: 'heart_condition_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Monitoring breathing`
  String get heart_condition_q4_opt3 {
    return Intl.message(
      'Monitoring breathing',
      name: 'heart_condition_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Staying with them`
  String get heart_condition_q4_opt4 {
    return Intl.message(
      'Staying with them',
      name: 'heart_condition_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a key goal of first aid for heart condition?`
  String get heart_condition_q5 {
    return Intl.message(
      'What is a key goal of first aid for heart condition?',
      name: 'heart_condition_q5',
      desc: '',
      args: [],
    );
  }

  /// `Complete treatment`
  String get heart_condition_q5_opt1 {
    return Intl.message(
      'Complete treatment',
      name: 'heart_condition_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Prevent worsening`
  String get heart_condition_q5_opt2 {
    return Intl.message(
      'Prevent worsening',
      name: 'heart_condition_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Diagnose accurately`
  String get heart_condition_q5_opt3 {
    return Intl.message(
      'Diagnose accurately',
      name: 'heart_condition_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Avoid hospital visit`
  String get heart_condition_q5_opt4 {
    return Intl.message(
      'Avoid hospital visit',
      name: 'heart_condition_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which tool is commonly used for handling heart condition situations?`
  String get heart_condition_q6 {
    return Intl.message(
      'Which tool is commonly used for handling heart condition situations?',
      name: 'heart_condition_q6',
      desc: '',
      args: [],
    );
  }

  /// `Bandage`
  String get heart_condition_q6_opt1 {
    return Intl.message(
      'Bandage',
      name: 'heart_condition_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Epinephrine pen`
  String get heart_condition_q6_opt2 {
    return Intl.message(
      'Epinephrine pen',
      name: 'heart_condition_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Gloves`
  String get heart_condition_q6_opt3 {
    return Intl.message(
      'Gloves',
      name: 'heart_condition_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `It depends on the situation`
  String get heart_condition_q6_opt4 {
    return Intl.message(
      'It depends on the situation',
      name: 'heart_condition_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is the first step when handling poisons?`
  String get poisons_q1 {
    return Intl.message(
      'What is the first step when handling poisons?',
      name: 'poisons_q1',
      desc: '',
      args: [],
    );
  }

  /// `Stay calm`
  String get poisons_q1_opt1 {
    return Intl.message(
      'Stay calm',
      name: 'poisons_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency`
  String get poisons_q1_opt2 {
    return Intl.message(
      'Call emergency',
      name: 'poisons_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Provide water`
  String get poisons_q1_opt3 {
    return Intl.message(
      'Provide water',
      name: 'poisons_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ignore symptoms`
  String get poisons_q1_opt4 {
    return Intl.message(
      'Ignore symptoms',
      name: 'poisons_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which of the following is a symptom of poisons?`
  String get poisons_q2 {
    return Intl.message(
      'Which of the following is a symptom of poisons?',
      name: 'poisons_q2',
      desc: '',
      args: [],
    );
  }

  /// `Dizziness`
  String get poisons_q2_opt1 {
    return Intl.message(
      'Dizziness',
      name: 'poisons_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Itching`
  String get poisons_q2_opt2 {
    return Intl.message('Itching', name: 'poisons_q2_opt2', desc: '', args: []);
  }

  /// `Blurred vision`
  String get poisons_q2_opt3 {
    return Intl.message(
      'Blurred vision',
      name: 'poisons_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `All of the above`
  String get poisons_q2_opt4 {
    return Intl.message(
      'All of the above',
      name: 'poisons_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When should you call emergency services during a poisons incident?`
  String get poisons_q3 {
    return Intl.message(
      'When should you call emergency services during a poisons incident?',
      name: 'poisons_q3',
      desc: '',
      args: [],
    );
  }

  /// `If symptoms are mild`
  String get poisons_q3_opt1 {
    return Intl.message(
      'If symptoms are mild',
      name: 'poisons_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `If the person faints`
  String get poisons_q3_opt2 {
    return Intl.message(
      'If the person faints',
      name: 'poisons_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `If they ask for help`
  String get poisons_q3_opt3 {
    return Intl.message(
      'If they ask for help',
      name: 'poisons_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Always`
  String get poisons_q3_opt4 {
    return Intl.message('Always', name: 'poisons_q3_opt4', desc: '', args: []);
  }

  /// `What should you avoid doing during poisons care?`
  String get poisons_q4 {
    return Intl.message(
      'What should you avoid doing during poisons care?',
      name: 'poisons_q4',
      desc: '',
      args: [],
    );
  }

  /// `Using outdated methods`
  String get poisons_q4_opt1 {
    return Intl.message(
      'Using outdated methods',
      name: 'poisons_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Keeping them comfortable`
  String get poisons_q4_opt2 {
    return Intl.message(
      'Keeping them comfortable',
      name: 'poisons_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Monitoring breathing`
  String get poisons_q4_opt3 {
    return Intl.message(
      'Monitoring breathing',
      name: 'poisons_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Staying with them`
  String get poisons_q4_opt4 {
    return Intl.message(
      'Staying with them',
      name: 'poisons_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a key goal of first aid for poisons?`
  String get poisons_q5 {
    return Intl.message(
      'What is a key goal of first aid for poisons?',
      name: 'poisons_q5',
      desc: '',
      args: [],
    );
  }

  /// `Complete treatment`
  String get poisons_q5_opt1 {
    return Intl.message(
      'Complete treatment',
      name: 'poisons_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Prevent worsening`
  String get poisons_q5_opt2 {
    return Intl.message(
      'Prevent worsening',
      name: 'poisons_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Diagnose accurately`
  String get poisons_q5_opt3 {
    return Intl.message(
      'Diagnose accurately',
      name: 'poisons_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Avoid hospital visit`
  String get poisons_q5_opt4 {
    return Intl.message(
      'Avoid hospital visit',
      name: 'poisons_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which tool is commonly used for handling poisons situations?`
  String get poisons_q6 {
    return Intl.message(
      'Which tool is commonly used for handling poisons situations?',
      name: 'poisons_q6',
      desc: '',
      args: [],
    );
  }

  /// `Bandage`
  String get poisons_q6_opt1 {
    return Intl.message('Bandage', name: 'poisons_q6_opt1', desc: '', args: []);
  }

  /// `Epinephrine pen`
  String get poisons_q6_opt2 {
    return Intl.message(
      'Epinephrine pen',
      name: 'poisons_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Gloves`
  String get poisons_q6_opt3 {
    return Intl.message('Gloves', name: 'poisons_q6_opt3', desc: '', args: []);
  }

  /// `It depends on the situation`
  String get poisons_q6_opt4 {
    return Intl.message(
      'It depends on the situation',
      name: 'poisons_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is the first step when handling recovery pos?`
  String get recovery_pos_q1 {
    return Intl.message(
      'What is the first step when handling recovery pos?',
      name: 'recovery_pos_q1',
      desc: '',
      args: [],
    );
  }

  /// `Stay calm`
  String get recovery_pos_q1_opt1 {
    return Intl.message(
      'Stay calm',
      name: 'recovery_pos_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency`
  String get recovery_pos_q1_opt2 {
    return Intl.message(
      'Call emergency',
      name: 'recovery_pos_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Provide water`
  String get recovery_pos_q1_opt3 {
    return Intl.message(
      'Provide water',
      name: 'recovery_pos_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ignore symptoms`
  String get recovery_pos_q1_opt4 {
    return Intl.message(
      'Ignore symptoms',
      name: 'recovery_pos_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which of the following is a symptom of recovery pos?`
  String get recovery_pos_q2 {
    return Intl.message(
      'Which of the following is a symptom of recovery pos?',
      name: 'recovery_pos_q2',
      desc: '',
      args: [],
    );
  }

  /// `Dizziness`
  String get recovery_pos_q2_opt1 {
    return Intl.message(
      'Dizziness',
      name: 'recovery_pos_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Itching`
  String get recovery_pos_q2_opt2 {
    return Intl.message(
      'Itching',
      name: 'recovery_pos_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Blurred vision`
  String get recovery_pos_q2_opt3 {
    return Intl.message(
      'Blurred vision',
      name: 'recovery_pos_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `All of the above`
  String get recovery_pos_q2_opt4 {
    return Intl.message(
      'All of the above',
      name: 'recovery_pos_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When should you call emergency services during a recovery pos incident?`
  String get recovery_pos_q3 {
    return Intl.message(
      'When should you call emergency services during a recovery pos incident?',
      name: 'recovery_pos_q3',
      desc: '',
      args: [],
    );
  }

  /// `If symptoms are mild`
  String get recovery_pos_q3_opt1 {
    return Intl.message(
      'If symptoms are mild',
      name: 'recovery_pos_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `If the person faints`
  String get recovery_pos_q3_opt2 {
    return Intl.message(
      'If the person faints',
      name: 'recovery_pos_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `If they ask for help`
  String get recovery_pos_q3_opt3 {
    return Intl.message(
      'If they ask for help',
      name: 'recovery_pos_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Always`
  String get recovery_pos_q3_opt4 {
    return Intl.message(
      'Always',
      name: 'recovery_pos_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you avoid doing during recovery pos care?`
  String get recovery_pos_q4 {
    return Intl.message(
      'What should you avoid doing during recovery pos care?',
      name: 'recovery_pos_q4',
      desc: '',
      args: [],
    );
  }

  /// `Using outdated methods`
  String get recovery_pos_q4_opt1 {
    return Intl.message(
      'Using outdated methods',
      name: 'recovery_pos_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Keeping them comfortable`
  String get recovery_pos_q4_opt2 {
    return Intl.message(
      'Keeping them comfortable',
      name: 'recovery_pos_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Monitoring breathing`
  String get recovery_pos_q4_opt3 {
    return Intl.message(
      'Monitoring breathing',
      name: 'recovery_pos_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Staying with them`
  String get recovery_pos_q4_opt4 {
    return Intl.message(
      'Staying with them',
      name: 'recovery_pos_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a key goal of first aid for recovery pos?`
  String get recovery_pos_q5 {
    return Intl.message(
      'What is a key goal of first aid for recovery pos?',
      name: 'recovery_pos_q5',
      desc: '',
      args: [],
    );
  }

  /// `Complete treatment`
  String get recovery_pos_q5_opt1 {
    return Intl.message(
      'Complete treatment',
      name: 'recovery_pos_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Prevent worsening`
  String get recovery_pos_q5_opt2 {
    return Intl.message(
      'Prevent worsening',
      name: 'recovery_pos_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Diagnose accurately`
  String get recovery_pos_q5_opt3 {
    return Intl.message(
      'Diagnose accurately',
      name: 'recovery_pos_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Avoid hospital visit`
  String get recovery_pos_q5_opt4 {
    return Intl.message(
      'Avoid hospital visit',
      name: 'recovery_pos_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which tool is commonly used for handling recovery pos situations?`
  String get recovery_pos_q6 {
    return Intl.message(
      'Which tool is commonly used for handling recovery pos situations?',
      name: 'recovery_pos_q6',
      desc: '',
      args: [],
    );
  }

  /// `Bandage`
  String get recovery_pos_q6_opt1 {
    return Intl.message(
      'Bandage',
      name: 'recovery_pos_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Epinephrine pen`
  String get recovery_pos_q6_opt2 {
    return Intl.message(
      'Epinephrine pen',
      name: 'recovery_pos_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Gloves`
  String get recovery_pos_q6_opt3 {
    return Intl.message(
      'Gloves',
      name: 'recovery_pos_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `It depends on the situation`
  String get recovery_pos_q6_opt4 {
    return Intl.message(
      'It depends on the situation',
      name: 'recovery_pos_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is the first step when handling seizures?`
  String get seizures_q1 {
    return Intl.message(
      'What is the first step when handling seizures?',
      name: 'seizures_q1',
      desc: '',
      args: [],
    );
  }

  /// `Stay calm`
  String get seizures_q1_opt1 {
    return Intl.message(
      'Stay calm',
      name: 'seizures_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency`
  String get seizures_q1_opt2 {
    return Intl.message(
      'Call emergency',
      name: 'seizures_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Provide water`
  String get seizures_q1_opt3 {
    return Intl.message(
      'Provide water',
      name: 'seizures_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ignore symptoms`
  String get seizures_q1_opt4 {
    return Intl.message(
      'Ignore symptoms',
      name: 'seizures_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which of the following is a symptom of seizures?`
  String get seizures_q2 {
    return Intl.message(
      'Which of the following is a symptom of seizures?',
      name: 'seizures_q2',
      desc: '',
      args: [],
    );
  }

  /// `Dizziness`
  String get seizures_q2_opt1 {
    return Intl.message(
      'Dizziness',
      name: 'seizures_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Itching`
  String get seizures_q2_opt2 {
    return Intl.message(
      'Itching',
      name: 'seizures_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Blurred vision`
  String get seizures_q2_opt3 {
    return Intl.message(
      'Blurred vision',
      name: 'seizures_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `All of the above`
  String get seizures_q2_opt4 {
    return Intl.message(
      'All of the above',
      name: 'seizures_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When should you call emergency services during a seizures incident?`
  String get seizures_q3 {
    return Intl.message(
      'When should you call emergency services during a seizures incident?',
      name: 'seizures_q3',
      desc: '',
      args: [],
    );
  }

  /// `If symptoms are mild`
  String get seizures_q3_opt1 {
    return Intl.message(
      'If symptoms are mild',
      name: 'seizures_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `If the person faints`
  String get seizures_q3_opt2 {
    return Intl.message(
      'If the person faints',
      name: 'seizures_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `If they ask for help`
  String get seizures_q3_opt3 {
    return Intl.message(
      'If they ask for help',
      name: 'seizures_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Always`
  String get seizures_q3_opt4 {
    return Intl.message('Always', name: 'seizures_q3_opt4', desc: '', args: []);
  }

  /// `What should you avoid doing during seizures care?`
  String get seizures_q4 {
    return Intl.message(
      'What should you avoid doing during seizures care?',
      name: 'seizures_q4',
      desc: '',
      args: [],
    );
  }

  /// `Using outdated methods`
  String get seizures_q4_opt1 {
    return Intl.message(
      'Using outdated methods',
      name: 'seizures_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Keeping them comfortable`
  String get seizures_q4_opt2 {
    return Intl.message(
      'Keeping them comfortable',
      name: 'seizures_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Monitoring breathing`
  String get seizures_q4_opt3 {
    return Intl.message(
      'Monitoring breathing',
      name: 'seizures_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Staying with them`
  String get seizures_q4_opt4 {
    return Intl.message(
      'Staying with them',
      name: 'seizures_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a key goal of first aid for seizures?`
  String get seizures_q5 {
    return Intl.message(
      'What is a key goal of first aid for seizures?',
      name: 'seizures_q5',
      desc: '',
      args: [],
    );
  }

  /// `Complete treatment`
  String get seizures_q5_opt1 {
    return Intl.message(
      'Complete treatment',
      name: 'seizures_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Prevent worsening`
  String get seizures_q5_opt2 {
    return Intl.message(
      'Prevent worsening',
      name: 'seizures_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Diagnose accurately`
  String get seizures_q5_opt3 {
    return Intl.message(
      'Diagnose accurately',
      name: 'seizures_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Avoid hospital visit`
  String get seizures_q5_opt4 {
    return Intl.message(
      'Avoid hospital visit',
      name: 'seizures_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which tool is commonly used for handling seizures situations?`
  String get seizures_q6 {
    return Intl.message(
      'Which tool is commonly used for handling seizures situations?',
      name: 'seizures_q6',
      desc: '',
      args: [],
    );
  }

  /// `Bandage`
  String get seizures_q6_opt1 {
    return Intl.message(
      'Bandage',
      name: 'seizures_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Epinephrine pen`
  String get seizures_q6_opt2 {
    return Intl.message(
      'Epinephrine pen',
      name: 'seizures_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Gloves`
  String get seizures_q6_opt3 {
    return Intl.message('Gloves', name: 'seizures_q6_opt3', desc: '', args: []);
  }

  /// `It depends on the situation`
  String get seizures_q6_opt4 {
    return Intl.message(
      'It depends on the situation',
      name: 'seizures_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is the first step when handling shock?`
  String get shock_q1 {
    return Intl.message(
      'What is the first step when handling shock?',
      name: 'shock_q1',
      desc: '',
      args: [],
    );
  }

  /// `Stay calm`
  String get shock_q1_opt1 {
    return Intl.message('Stay calm', name: 'shock_q1_opt1', desc: '', args: []);
  }

  /// `Call emergency`
  String get shock_q1_opt2 {
    return Intl.message(
      'Call emergency',
      name: 'shock_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Provide water`
  String get shock_q1_opt3 {
    return Intl.message(
      'Provide water',
      name: 'shock_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ignore symptoms`
  String get shock_q1_opt4 {
    return Intl.message(
      'Ignore symptoms',
      name: 'shock_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which of the following is a symptom of shock?`
  String get shock_q2 {
    return Intl.message(
      'Which of the following is a symptom of shock?',
      name: 'shock_q2',
      desc: '',
      args: [],
    );
  }

  /// `Dizziness`
  String get shock_q2_opt1 {
    return Intl.message('Dizziness', name: 'shock_q2_opt1', desc: '', args: []);
  }

  /// `Itching`
  String get shock_q2_opt2 {
    return Intl.message('Itching', name: 'shock_q2_opt2', desc: '', args: []);
  }

  /// `Blurred vision`
  String get shock_q2_opt3 {
    return Intl.message(
      'Blurred vision',
      name: 'shock_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `All of the above`
  String get shock_q2_opt4 {
    return Intl.message(
      'All of the above',
      name: 'shock_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When should you call emergency services during a shock incident?`
  String get shock_q3 {
    return Intl.message(
      'When should you call emergency services during a shock incident?',
      name: 'shock_q3',
      desc: '',
      args: [],
    );
  }

  /// `If symptoms are mild`
  String get shock_q3_opt1 {
    return Intl.message(
      'If symptoms are mild',
      name: 'shock_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `If the person faints`
  String get shock_q3_opt2 {
    return Intl.message(
      'If the person faints',
      name: 'shock_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `If they ask for help`
  String get shock_q3_opt3 {
    return Intl.message(
      'If they ask for help',
      name: 'shock_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Always`
  String get shock_q3_opt4 {
    return Intl.message('Always', name: 'shock_q3_opt4', desc: '', args: []);
  }

  /// `What should you avoid doing during shock care?`
  String get shock_q4 {
    return Intl.message(
      'What should you avoid doing during shock care?',
      name: 'shock_q4',
      desc: '',
      args: [],
    );
  }

  /// `Using outdated methods`
  String get shock_q4_opt1 {
    return Intl.message(
      'Using outdated methods',
      name: 'shock_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Keeping them comfortable`
  String get shock_q4_opt2 {
    return Intl.message(
      'Keeping them comfortable',
      name: 'shock_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Monitoring breathing`
  String get shock_q4_opt3 {
    return Intl.message(
      'Monitoring breathing',
      name: 'shock_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Staying with them`
  String get shock_q4_opt4 {
    return Intl.message(
      'Staying with them',
      name: 'shock_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a key goal of first aid for shock?`
  String get shock_q5 {
    return Intl.message(
      'What is a key goal of first aid for shock?',
      name: 'shock_q5',
      desc: '',
      args: [],
    );
  }

  /// `Complete treatment`
  String get shock_q5_opt1 {
    return Intl.message(
      'Complete treatment',
      name: 'shock_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Prevent worsening`
  String get shock_q5_opt2 {
    return Intl.message(
      'Prevent worsening',
      name: 'shock_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Diagnose accurately`
  String get shock_q5_opt3 {
    return Intl.message(
      'Diagnose accurately',
      name: 'shock_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Avoid hospital visit`
  String get shock_q5_opt4 {
    return Intl.message(
      'Avoid hospital visit',
      name: 'shock_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which tool is commonly used for handling shock situations?`
  String get shock_q6 {
    return Intl.message(
      'Which tool is commonly used for handling shock situations?',
      name: 'shock_q6',
      desc: '',
      args: [],
    );
  }

  /// `Bandage`
  String get shock_q6_opt1 {
    return Intl.message('Bandage', name: 'shock_q6_opt1', desc: '', args: []);
  }

  /// `Epinephrine pen`
  String get shock_q6_opt2 {
    return Intl.message(
      'Epinephrine pen',
      name: 'shock_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Gloves`
  String get shock_q6_opt3 {
    return Intl.message('Gloves', name: 'shock_q6_opt3', desc: '', args: []);
  }

  /// `It depends on the situation`
  String get shock_q6_opt4 {
    return Intl.message(
      'It depends on the situation',
      name: 'shock_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is the first step when handling spinal injury?`
  String get spinal_injury_q1 {
    return Intl.message(
      'What is the first step when handling spinal injury?',
      name: 'spinal_injury_q1',
      desc: '',
      args: [],
    );
  }

  /// `Stay calm`
  String get spinal_injury_q1_opt1 {
    return Intl.message(
      'Stay calm',
      name: 'spinal_injury_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency`
  String get spinal_injury_q1_opt2 {
    return Intl.message(
      'Call emergency',
      name: 'spinal_injury_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Provide water`
  String get spinal_injury_q1_opt3 {
    return Intl.message(
      'Provide water',
      name: 'spinal_injury_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ignore symptoms`
  String get spinal_injury_q1_opt4 {
    return Intl.message(
      'Ignore symptoms',
      name: 'spinal_injury_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which of the following is a symptom of spinal injury?`
  String get spinal_injury_q2 {
    return Intl.message(
      'Which of the following is a symptom of spinal injury?',
      name: 'spinal_injury_q2',
      desc: '',
      args: [],
    );
  }

  /// `Dizziness`
  String get spinal_injury_q2_opt1 {
    return Intl.message(
      'Dizziness',
      name: 'spinal_injury_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Itching`
  String get spinal_injury_q2_opt2 {
    return Intl.message(
      'Itching',
      name: 'spinal_injury_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Blurred vision`
  String get spinal_injury_q2_opt3 {
    return Intl.message(
      'Blurred vision',
      name: 'spinal_injury_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `All of the above`
  String get spinal_injury_q2_opt4 {
    return Intl.message(
      'All of the above',
      name: 'spinal_injury_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When should you call emergency services during a spinal injury incident?`
  String get spinal_injury_q3 {
    return Intl.message(
      'When should you call emergency services during a spinal injury incident?',
      name: 'spinal_injury_q3',
      desc: '',
      args: [],
    );
  }

  /// `If symptoms are mild`
  String get spinal_injury_q3_opt1 {
    return Intl.message(
      'If symptoms are mild',
      name: 'spinal_injury_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `If the person faints`
  String get spinal_injury_q3_opt2 {
    return Intl.message(
      'If the person faints',
      name: 'spinal_injury_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `If they ask for help`
  String get spinal_injury_q3_opt3 {
    return Intl.message(
      'If they ask for help',
      name: 'spinal_injury_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Always`
  String get spinal_injury_q3_opt4 {
    return Intl.message(
      'Always',
      name: 'spinal_injury_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you avoid doing during spinal injury care?`
  String get spinal_injury_q4 {
    return Intl.message(
      'What should you avoid doing during spinal injury care?',
      name: 'spinal_injury_q4',
      desc: '',
      args: [],
    );
  }

  /// `Using outdated methods`
  String get spinal_injury_q4_opt1 {
    return Intl.message(
      'Using outdated methods',
      name: 'spinal_injury_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Keeping them comfortable`
  String get spinal_injury_q4_opt2 {
    return Intl.message(
      'Keeping them comfortable',
      name: 'spinal_injury_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Monitoring breathing`
  String get spinal_injury_q4_opt3 {
    return Intl.message(
      'Monitoring breathing',
      name: 'spinal_injury_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Staying with them`
  String get spinal_injury_q4_opt4 {
    return Intl.message(
      'Staying with them',
      name: 'spinal_injury_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a key goal of first aid for spinal injury?`
  String get spinal_injury_q5 {
    return Intl.message(
      'What is a key goal of first aid for spinal injury?',
      name: 'spinal_injury_q5',
      desc: '',
      args: [],
    );
  }

  /// `Complete treatment`
  String get spinal_injury_q5_opt1 {
    return Intl.message(
      'Complete treatment',
      name: 'spinal_injury_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Prevent worsening`
  String get spinal_injury_q5_opt2 {
    return Intl.message(
      'Prevent worsening',
      name: 'spinal_injury_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Diagnose accurately`
  String get spinal_injury_q5_opt3 {
    return Intl.message(
      'Diagnose accurately',
      name: 'spinal_injury_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Avoid hospital visit`
  String get spinal_injury_q5_opt4 {
    return Intl.message(
      'Avoid hospital visit',
      name: 'spinal_injury_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which tool is commonly used for handling spinal injury situations?`
  String get spinal_injury_q6 {
    return Intl.message(
      'Which tool is commonly used for handling spinal injury situations?',
      name: 'spinal_injury_q6',
      desc: '',
      args: [],
    );
  }

  /// `Bandage`
  String get spinal_injury_q6_opt1 {
    return Intl.message(
      'Bandage',
      name: 'spinal_injury_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Epinephrine pen`
  String get spinal_injury_q6_opt2 {
    return Intl.message(
      'Epinephrine pen',
      name: 'spinal_injury_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Gloves`
  String get spinal_injury_q6_opt3 {
    return Intl.message(
      'Gloves',
      name: 'spinal_injury_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `It depends on the situation`
  String get spinal_injury_q6_opt4 {
    return Intl.message(
      'It depends on the situation',
      name: 'spinal_injury_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is the first step when handling sprainstrains?`
  String get sprainstrains_q1 {
    return Intl.message(
      'What is the first step when handling sprainstrains?',
      name: 'sprainstrains_q1',
      desc: '',
      args: [],
    );
  }

  /// `Stay calm`
  String get sprainstrains_q1_opt1 {
    return Intl.message(
      'Stay calm',
      name: 'sprainstrains_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency`
  String get sprainstrains_q1_opt2 {
    return Intl.message(
      'Call emergency',
      name: 'sprainstrains_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Provide water`
  String get sprainstrains_q1_opt3 {
    return Intl.message(
      'Provide water',
      name: 'sprainstrains_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ignore symptoms`
  String get sprainstrains_q1_opt4 {
    return Intl.message(
      'Ignore symptoms',
      name: 'sprainstrains_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which of the following is a symptom of sprainstrains?`
  String get sprainstrains_q2 {
    return Intl.message(
      'Which of the following is a symptom of sprainstrains?',
      name: 'sprainstrains_q2',
      desc: '',
      args: [],
    );
  }

  /// `Dizziness`
  String get sprainstrains_q2_opt1 {
    return Intl.message(
      'Dizziness',
      name: 'sprainstrains_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Itching`
  String get sprainstrains_q2_opt2 {
    return Intl.message(
      'Itching',
      name: 'sprainstrains_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Blurred vision`
  String get sprainstrains_q2_opt3 {
    return Intl.message(
      'Blurred vision',
      name: 'sprainstrains_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `All of the above`
  String get sprainstrains_q2_opt4 {
    return Intl.message(
      'All of the above',
      name: 'sprainstrains_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When should you call emergency services during a sprainstrains incident?`
  String get sprainstrains_q3 {
    return Intl.message(
      'When should you call emergency services during a sprainstrains incident?',
      name: 'sprainstrains_q3',
      desc: '',
      args: [],
    );
  }

  /// `If symptoms are mild`
  String get sprainstrains_q3_opt1 {
    return Intl.message(
      'If symptoms are mild',
      name: 'sprainstrains_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `If the person faints`
  String get sprainstrains_q3_opt2 {
    return Intl.message(
      'If the person faints',
      name: 'sprainstrains_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `If they ask for help`
  String get sprainstrains_q3_opt3 {
    return Intl.message(
      'If they ask for help',
      name: 'sprainstrains_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Always`
  String get sprainstrains_q3_opt4 {
    return Intl.message(
      'Always',
      name: 'sprainstrains_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you avoid doing during sprainstrains care?`
  String get sprainstrains_q4 {
    return Intl.message(
      'What should you avoid doing during sprainstrains care?',
      name: 'sprainstrains_q4',
      desc: '',
      args: [],
    );
  }

  /// `Using outdated methods`
  String get sprainstrains_q4_opt1 {
    return Intl.message(
      'Using outdated methods',
      name: 'sprainstrains_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Keeping them comfortable`
  String get sprainstrains_q4_opt2 {
    return Intl.message(
      'Keeping them comfortable',
      name: 'sprainstrains_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Monitoring breathing`
  String get sprainstrains_q4_opt3 {
    return Intl.message(
      'Monitoring breathing',
      name: 'sprainstrains_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Staying with them`
  String get sprainstrains_q4_opt4 {
    return Intl.message(
      'Staying with them',
      name: 'sprainstrains_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a key goal of first aid for sprainstrains?`
  String get sprainstrains_q5 {
    return Intl.message(
      'What is a key goal of first aid for sprainstrains?',
      name: 'sprainstrains_q5',
      desc: '',
      args: [],
    );
  }

  /// `Complete treatment`
  String get sprainstrains_q5_opt1 {
    return Intl.message(
      'Complete treatment',
      name: 'sprainstrains_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Prevent worsening`
  String get sprainstrains_q5_opt2 {
    return Intl.message(
      'Prevent worsening',
      name: 'sprainstrains_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Diagnose accurately`
  String get sprainstrains_q5_opt3 {
    return Intl.message(
      'Diagnose accurately',
      name: 'sprainstrains_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Avoid hospital visit`
  String get sprainstrains_q5_opt4 {
    return Intl.message(
      'Avoid hospital visit',
      name: 'sprainstrains_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which tool is commonly used for handling sprainstrains situations?`
  String get sprainstrains_q6 {
    return Intl.message(
      'Which tool is commonly used for handling sprainstrains situations?',
      name: 'sprainstrains_q6',
      desc: '',
      args: [],
    );
  }

  /// `Bandage`
  String get sprainstrains_q6_opt1 {
    return Intl.message(
      'Bandage',
      name: 'sprainstrains_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Epinephrine pen`
  String get sprainstrains_q6_opt2 {
    return Intl.message(
      'Epinephrine pen',
      name: 'sprainstrains_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Gloves`
  String get sprainstrains_q6_opt3 {
    return Intl.message(
      'Gloves',
      name: 'sprainstrains_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `It depends on the situation`
  String get sprainstrains_q6_opt4 {
    return Intl.message(
      'It depends on the situation',
      name: 'sprainstrains_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is the first step when handling stroke?`
  String get stroke_q1 {
    return Intl.message(
      'What is the first step when handling stroke?',
      name: 'stroke_q1',
      desc: '',
      args: [],
    );
  }

  /// `Stay calm`
  String get stroke_q1_opt1 {
    return Intl.message(
      'Stay calm',
      name: 'stroke_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency`
  String get stroke_q1_opt2 {
    return Intl.message(
      'Call emergency',
      name: 'stroke_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Provide water`
  String get stroke_q1_opt3 {
    return Intl.message(
      'Provide water',
      name: 'stroke_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ignore symptoms`
  String get stroke_q1_opt4 {
    return Intl.message(
      'Ignore symptoms',
      name: 'stroke_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which of the following is a symptom of stroke?`
  String get stroke_q2 {
    return Intl.message(
      'Which of the following is a symptom of stroke?',
      name: 'stroke_q2',
      desc: '',
      args: [],
    );
  }

  /// `Dizziness`
  String get stroke_q2_opt1 {
    return Intl.message(
      'Dizziness',
      name: 'stroke_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Itching`
  String get stroke_q2_opt2 {
    return Intl.message('Itching', name: 'stroke_q2_opt2', desc: '', args: []);
  }

  /// `Blurred vision`
  String get stroke_q2_opt3 {
    return Intl.message(
      'Blurred vision',
      name: 'stroke_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `All of the above`
  String get stroke_q2_opt4 {
    return Intl.message(
      'All of the above',
      name: 'stroke_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When should you call emergency services during a stroke incident?`
  String get stroke_q3 {
    return Intl.message(
      'When should you call emergency services during a stroke incident?',
      name: 'stroke_q3',
      desc: '',
      args: [],
    );
  }

  /// `If symptoms are mild`
  String get stroke_q3_opt1 {
    return Intl.message(
      'If symptoms are mild',
      name: 'stroke_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `If the person faints`
  String get stroke_q3_opt2 {
    return Intl.message(
      'If the person faints',
      name: 'stroke_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `If they ask for help`
  String get stroke_q3_opt3 {
    return Intl.message(
      'If they ask for help',
      name: 'stroke_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Always`
  String get stroke_q3_opt4 {
    return Intl.message('Always', name: 'stroke_q3_opt4', desc: '', args: []);
  }

  /// `What should you avoid doing during stroke care?`
  String get stroke_q4 {
    return Intl.message(
      'What should you avoid doing during stroke care?',
      name: 'stroke_q4',
      desc: '',
      args: [],
    );
  }

  /// `Using outdated methods`
  String get stroke_q4_opt1 {
    return Intl.message(
      'Using outdated methods',
      name: 'stroke_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Keeping them comfortable`
  String get stroke_q4_opt2 {
    return Intl.message(
      'Keeping them comfortable',
      name: 'stroke_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Monitoring breathing`
  String get stroke_q4_opt3 {
    return Intl.message(
      'Monitoring breathing',
      name: 'stroke_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Staying with them`
  String get stroke_q4_opt4 {
    return Intl.message(
      'Staying with them',
      name: 'stroke_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a key goal of first aid for stroke?`
  String get stroke_q5 {
    return Intl.message(
      'What is a key goal of first aid for stroke?',
      name: 'stroke_q5',
      desc: '',
      args: [],
    );
  }

  /// `Complete treatment`
  String get stroke_q5_opt1 {
    return Intl.message(
      'Complete treatment',
      name: 'stroke_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Prevent worsening`
  String get stroke_q5_opt2 {
    return Intl.message(
      'Prevent worsening',
      name: 'stroke_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Diagnose accurately`
  String get stroke_q5_opt3 {
    return Intl.message(
      'Diagnose accurately',
      name: 'stroke_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Avoid hospital visit`
  String get stroke_q5_opt4 {
    return Intl.message(
      'Avoid hospital visit',
      name: 'stroke_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which tool is commonly used for handling stroke situations?`
  String get stroke_q6 {
    return Intl.message(
      'Which tool is commonly used for handling stroke situations?',
      name: 'stroke_q6',
      desc: '',
      args: [],
    );
  }

  /// `Bandage`
  String get stroke_q6_opt1 {
    return Intl.message('Bandage', name: 'stroke_q6_opt1', desc: '', args: []);
  }

  /// `Epinephrine pen`
  String get stroke_q6_opt2 {
    return Intl.message(
      'Epinephrine pen',
      name: 'stroke_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Gloves`
  String get stroke_q6_opt3 {
    return Intl.message('Gloves', name: 'stroke_q6_opt3', desc: '', args: []);
  }

  /// `It depends on the situation`
  String get stroke_q6_opt4 {
    return Intl.message(
      'It depends on the situation',
      name: 'stroke_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is the first step when handling wound care?`
  String get wound_care_q1 {
    return Intl.message(
      'What is the first step when handling wound care?',
      name: 'wound_care_q1',
      desc: '',
      args: [],
    );
  }

  /// `Stay calm`
  String get wound_care_q1_opt1 {
    return Intl.message(
      'Stay calm',
      name: 'wound_care_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency`
  String get wound_care_q1_opt2 {
    return Intl.message(
      'Call emergency',
      name: 'wound_care_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Provide water`
  String get wound_care_q1_opt3 {
    return Intl.message(
      'Provide water',
      name: 'wound_care_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ignore symptoms`
  String get wound_care_q1_opt4 {
    return Intl.message(
      'Ignore symptoms',
      name: 'wound_care_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which of the following is a symptom of wound care?`
  String get wound_care_q2 {
    return Intl.message(
      'Which of the following is a symptom of wound care?',
      name: 'wound_care_q2',
      desc: '',
      args: [],
    );
  }

  /// `Dizziness`
  String get wound_care_q2_opt1 {
    return Intl.message(
      'Dizziness',
      name: 'wound_care_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Itching`
  String get wound_care_q2_opt2 {
    return Intl.message(
      'Itching',
      name: 'wound_care_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Blurred vision`
  String get wound_care_q2_opt3 {
    return Intl.message(
      'Blurred vision',
      name: 'wound_care_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `All of the above`
  String get wound_care_q2_opt4 {
    return Intl.message(
      'All of the above',
      name: 'wound_care_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When should you call emergency services during a wound care incident?`
  String get wound_care_q3 {
    return Intl.message(
      'When should you call emergency services during a wound care incident?',
      name: 'wound_care_q3',
      desc: '',
      args: [],
    );
  }

  /// `If symptoms are mild`
  String get wound_care_q3_opt1 {
    return Intl.message(
      'If symptoms are mild',
      name: 'wound_care_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `If the person faints`
  String get wound_care_q3_opt2 {
    return Intl.message(
      'If the person faints',
      name: 'wound_care_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `If they ask for help`
  String get wound_care_q3_opt3 {
    return Intl.message(
      'If they ask for help',
      name: 'wound_care_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Always`
  String get wound_care_q3_opt4 {
    return Intl.message(
      'Always',
      name: 'wound_care_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you avoid doing during wound care care?`
  String get wound_care_q4 {
    return Intl.message(
      'What should you avoid doing during wound care care?',
      name: 'wound_care_q4',
      desc: '',
      args: [],
    );
  }

  /// `Using outdated methods`
  String get wound_care_q4_opt1 {
    return Intl.message(
      'Using outdated methods',
      name: 'wound_care_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Keeping them comfortable`
  String get wound_care_q4_opt2 {
    return Intl.message(
      'Keeping them comfortable',
      name: 'wound_care_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Monitoring breathing`
  String get wound_care_q4_opt3 {
    return Intl.message(
      'Monitoring breathing',
      name: 'wound_care_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Staying with them`
  String get wound_care_q4_opt4 {
    return Intl.message(
      'Staying with them',
      name: 'wound_care_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a key goal of first aid for wound care?`
  String get wound_care_q5 {
    return Intl.message(
      'What is a key goal of first aid for wound care?',
      name: 'wound_care_q5',
      desc: '',
      args: [],
    );
  }

  /// `Complete treatment`
  String get wound_care_q5_opt1 {
    return Intl.message(
      'Complete treatment',
      name: 'wound_care_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Prevent worsening`
  String get wound_care_q5_opt2 {
    return Intl.message(
      'Prevent worsening',
      name: 'wound_care_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Diagnose accurately`
  String get wound_care_q5_opt3 {
    return Intl.message(
      'Diagnose accurately',
      name: 'wound_care_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Avoid hospital visit`
  String get wound_care_q5_opt4 {
    return Intl.message(
      'Avoid hospital visit',
      name: 'wound_care_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which tool is commonly used for handling wound care situations?`
  String get wound_care_q6 {
    return Intl.message(
      'Which tool is commonly used for handling wound care situations?',
      name: 'wound_care_q6',
      desc: '',
      args: [],
    );
  }

  /// `Bandage`
  String get wound_care_q6_opt1 {
    return Intl.message(
      'Bandage',
      name: 'wound_care_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Epinephrine pen`
  String get wound_care_q6_opt2 {
    return Intl.message(
      'Epinephrine pen',
      name: 'wound_care_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Gloves`
  String get wound_care_q6_opt3 {
    return Intl.message(
      'Gloves',
      name: 'wound_care_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `It depends on the situation`
  String get wound_care_q6_opt4 {
    return Intl.message(
      'It depends on the situation',
      name: 'wound_care_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Topics`
  String get topics {
    return Intl.message('Topics', name: 'topics', desc: '', args: []);
  }

  /// `Saved`
  String get saved {
    return Intl.message('Saved', name: 'saved', desc: '', args: []);
  }

  /// `Profile`
  String get profile {
    return Intl.message('Profile', name: 'profile', desc: '', args: []);
  }

  /// `Find Nearest Hospital`
  String get findNearestHospital {
    return Intl.message(
      'Find Nearest Hospital',
      name: 'findNearestHospital',
      desc: '',
      args: [],
    );
  }

  /// `Could not launch Yandex or Google Maps.`
  String get couldNotLaunchMaps {
    return Intl.message(
      'Could not launch Yandex or Google Maps.',
      name: 'couldNotLaunchMaps',
      desc: '',
      args: [],
    );
  }

  /// `Tap any icon to learn how to respond in an emergency!`
  String get doctor {
    return Intl.message(
      'Tap any icon to learn how to respond in an emergency!',
      name: 'doctor',
      desc: '',
      args: [],
    );
  }

  /// `Select Language`
  String get selectLanguage {
    return Intl.message(
      'Select Language',
      name: 'selectLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Choose Your Language`
  String get chooseYourLanguage {
    return Intl.message(
      'Choose Your Language',
      name: 'chooseYourLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Please select your preferred language for the app`
  String get languageSelectionDescription {
    return Intl.message(
      'Please select your preferred language for the app',
      name: 'languageSelectionDescription',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueText {
    return Intl.message('Continue', name: 'continueText', desc: '', args: []);
  }

  /// `Welcome to PGU First Aid`
  String get tWelcomeTitle {
    return Intl.message(
      'Welcome to PGU First Aid',
      name: 'tWelcomeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Your Quick Guide to First Aid & Emergency Care!`
  String get tWelcomeSubTitle {
    return Intl.message(
      'Your Quick Guide to First Aid & Emergency Care!',
      name: 'tWelcomeSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get tLogin {
    return Intl.message('Login', name: 'tLogin', desc: '', args: []);
  }

  /// ` Sign Up`
  String get tSignUP {
    return Intl.message(' Sign Up', name: 'tSignUP', desc: '', args: []);
  }

  /// `Register Now!,`
  String get tLoginTitle {
    return Intl.message(
      'Register Now!,',
      name: 'tLoginTitle',
      desc: '',
      args: [],
    );
  }

  /// `Seconds Save Lives, Be Prepared`
  String get tLoginSubTitle {
    return Intl.message(
      'Seconds Save Lives, Be Prepared',
      name: 'tLoginSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Remember Me?`
  String get tRememberMe {
    return Intl.message(
      'Remember Me?',
      name: 'tRememberMe',
      desc: '',
      args: [],
    );
  }

  /// `Already have an Account?`
  String get tAlreadyHaveAnAccount {
    return Intl.message(
      'Already have an Account?',
      name: 'tAlreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an Account? `
  String get tDontHaveAnAccount {
    return Intl.message(
      'Don\'t have an Account? ',
      name: 'tDontHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `E-Mail`
  String get tEmail {
    return Intl.message('E-Mail', name: 'tEmail', desc: '', args: []);
  }

  /// `fikri@example.ru`
  String get tHint {
    return Intl.message('fikri@example.ru', name: 'tHint', desc: '', args: []);
  }

  /// `Password`
  String get tPassword {
    return Intl.message('Password', name: 'tPassword', desc: '', args: []);
  }

  /// `************`
  String get tHintPassword {
    return Intl.message(
      '************',
      name: 'tHintPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get tForgot {
    return Intl.message(
      'Forgot Password?',
      name: 'tForgot',
      desc: '',
      args: [],
    );
  }

  /// `Sign-in With Google`
  String get tSignInWithGoogle {
    return Intl.message(
      'Sign-in With Google',
      name: 'tSignInWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Be Ready.`
  String get tSignUpTitle {
    return Intl.message('Be Ready.', name: 'tSignUpTitle', desc: '', args: []);
  }

  /// `Be prepared for emergencies. Create an account to unlock life-saving features.`
  String get tSignUpSubTitle {
    return Intl.message(
      'Be prepared for emergencies. Create an account to unlock life-saving features.',
      name: 'tSignUpSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get tFullname {
    return Intl.message('Full Name', name: 'tFullname', desc: '', args: []);
  }

  /// `Confirm Password`
  String get tConfirmPass {
    return Intl.message(
      'Confirm Password',
      name: 'tConfirmPass',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get tPhoneNum {
    return Intl.message('Phone Number', name: 'tPhoneNum', desc: '', args: []);
  }

  /// `Choose method to reset your password`
  String get tChooseMethod {
    return Intl.message(
      'Choose method to reset your password',
      name: 'tChooseMethod',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get tForgotpass {
    return Intl.message(
      'Forgot Password?',
      name: 'tForgotpass',
      desc: '',
      args: [],
    );
  }

  /// `Make Selection!`
  String get tForgetTitle {
    return Intl.message(
      'Make Selection!',
      name: 'tForgetTitle',
      desc: '',
      args: [],
    );
  }

  /// `Select one of the options bellow to reset your password`
  String get tForgetSubTitle {
    return Intl.message(
      'Select one of the options bellow to reset your password',
      name: 'tForgetSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Reset via E-mail Verification`
  String get tResetEmail {
    return Intl.message(
      'Reset via E-mail Verification',
      name: 'tResetEmail',
      desc: '',
      args: [],
    );
  }

  /// `Reset via Phone Verification`
  String get tResetPhone {
    return Intl.message(
      'Reset via Phone Verification',
      name: 'tResetPhone',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email to reset your password`
  String get tForgetEmailSubTitle {
    return Intl.message(
      'Enter your email to reset your password',
      name: 'tForgetEmailSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter your Number to reset your password`
  String get tForgetPhoneSubTitle {
    return Intl.message(
      'Enter your Number to reset your password',
      name: 'tForgetPhoneSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Need Help?`
  String get tNeedHelp {
    return Intl.message('Need Help?', name: 'tNeedHelp', desc: '', args: []);
  }

  /// `Contact Support`
  String get tContactSupport {
    return Intl.message(
      'Contact Support',
      name: 'tContactSupport',
      desc: '',
      args: [],
    );
  }

  /// `Verification`
  String get tOtpSubTitle {
    return Intl.message(
      'Verification',
      name: 'tOtpSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter your verification code`
  String get tOtpMessage {
    return Intl.message(
      'Enter your verification code',
      name: 'tOtpMessage',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get tNext {
    return Intl.message('Next', name: 'tNext', desc: '', args: []);
  }

  /// `OTP Verification`
  String get tOtpTitle {
    return Intl.message(
      'OTP Verification',
      name: 'tOtpTitle',
      desc: '',
      args: [],
    );
  }

  /// `VERIFY`
  String get tVerify {
    return Intl.message('VERIFY', name: 'tVerify', desc: '', args: []);
  }

  /// `Emergency Number`
  String get tEmergencyNum {
    return Intl.message(
      'Emergency Number',
      name: 'tEmergencyNum',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get tHome {
    return Intl.message('Home', name: 'tHome', desc: '', args: []);
  }

  /// `Topics`
  String get tTopics {
    return Intl.message('Topics', name: 'tTopics', desc: '', args: []);
  }

  /// `Saved`
  String get tSaved {
    return Intl.message('Saved', name: 'tSaved', desc: '', args: []);
  }

  /// `Profile`
  String get tProfile {
    return Intl.message('Profile', name: 'tProfile', desc: '', args: []);
  }

  /// `CPR`
  String get tCpr {
    return Intl.message('CPR', name: 'tCpr', desc: '', args: []);
  }

  /// `Bleeding`
  String get tBleeding {
    return Intl.message('Bleeding', name: 'tBleeding', desc: '', args: []);
  }

  /// `Burns`
  String get tBurns {
    return Intl.message('Burns', name: 'tBurns', desc: '', args: []);
  }

  /// `Choking`
  String get tChoking {
    return Intl.message('Choking', name: 'tChoking', desc: '', args: []);
  }

  /// `Poisons`
  String get tPoisons {
    return Intl.message('Poisons', name: 'tPoisons', desc: '', args: []);
  }

  /// `Bites`
  String get tBites {
    return Intl.message('Bites', name: 'tBites', desc: '', args: []);
  }

  /// `Allergic Reaction`
  String get tAllergicReaction {
    return Intl.message(
      'Allergic Reaction',
      name: 'tAllergicReaction',
      desc: '',
      args: [],
    );
  }

  /// `Diabetics`
  String get tDiabetics {
    return Intl.message('Diabetics', name: 'tDiabetics', desc: '', args: []);
  }

  /// `Drug Overdose`
  String get tDrugOverdose {
    return Intl.message(
      'Drug Overdose',
      name: 'tDrugOverdose',
      desc: '',
      args: [],
    );
  }

  /// `Eye Injury`
  String get tEyeInjury {
    return Intl.message('Eye Injury', name: 'tEyeInjury', desc: '', args: []);
  }

  /// `Fractures`
  String get tFractures {
    return Intl.message('Fractures', name: 'tFractures', desc: '', args: []);
  }

  /// `Head Injury`
  String get tHeadInjury {
    return Intl.message('Head Injury', name: 'tHeadInjury', desc: '', args: []);
  }

  /// `Heart Condition`
  String get tHeartCondition {
    return Intl.message(
      'Heart Condition',
      name: 'tHeartCondition',
      desc: '',
      args: [],
    );
  }

  /// `Seizure`
  String get tSeizure {
    return Intl.message('Seizure', name: 'tSeizure', desc: '', args: []);
  }

  /// `Shock`
  String get tShock {
    return Intl.message('Shock', name: 'tShock', desc: '', args: []);
  }

  /// `Spinal Injury`
  String get tSpinalInjury {
    return Intl.message(
      'Spinal Injury',
      name: 'tSpinalInjury',
      desc: '',
      args: [],
    );
  }

  /// `Sprains & Strains`
  String get tSprainsStrains {
    return Intl.message(
      'Sprains & Strains',
      name: 'tSprainsStrains',
      desc: '',
      args: [],
    );
  }

  /// `Stroke`
  String get tStroke {
    return Intl.message('Stroke', name: 'tStroke', desc: '', args: []);
  }

  /// `Wound Care`
  String get tWoundCare {
    return Intl.message('Wound Care', name: 'tWoundCare', desc: '', args: []);
  }

  /// `Assessing injured Person`
  String get tAssessing {
    return Intl.message(
      'Assessing injured Person',
      name: 'tAssessing',
      desc: '',
      args: [],
    );
  }

  /// `Recovery Position`
  String get tRecoveryPos {
    return Intl.message(
      'Recovery Position',
      name: 'tRecoveryPos',
      desc: '',
      args: [],
    );
  }

  /// `All Topics`
  String get tAllTopics {
    return Intl.message('All Topics', name: 'tAllTopics', desc: '', args: []);
  }

  /// `Logout`
  String get tLogout {
    return Intl.message('Logout', name: 'tLogout', desc: '', args: []);
  }

  /// `Are you sure you want to log out?`
  String get areyousureyouwanttologout {
    return Intl.message(
      'Are you sure you want to log out?',
      name: 'areyousureyouwanttologout',
      desc: '',
      args: [],
    );
  }

  /// `Sign in required`
  String get signInRequiredTitle {
    return Intl.message(
      'Sign in required',
      name: 'signInRequiredTitle',
      desc: '',
      args: [],
    );
  }

  /// `You must be signed in to save topics. Would you like to sign in now?`
  String get signInRequiredMessage {
    return Intl.message(
      'You must be signed in to save topics. Would you like to sign in now?',
      name: 'signInRequiredMessage',
      desc: '',
      args: [],
    );
  }

  /// `You’re browsing as a guest.\nSign in to access your profile and settings.`
  String get guestProfileMessage {
    return Intl.message(
      'You’re browsing as a guest.\nSign in to access your profile and settings.',
      name: 'guestProfileMessage',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message('Yes', name: 'yes', desc: '', args: []);
  }

  /// `Edit Profile`
  String get tEditProfile {
    return Intl.message(
      'Edit Profile',
      name: 'tEditProfile',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get tProfileHeader1 {
    return Intl.message(
      'Settings',
      name: 'tProfileHeader1',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get tMyAccount {
    return Intl.message('Edit Profile', name: 'tMyAccount', desc: '', args: []);
  }

  /// `Change Language`
  String get tChangeLang {
    return Intl.message(
      'Change Language',
      name: 'tChangeLang',
      desc: '',
      args: [],
    );
  }

  /// `Support`
  String get tProfileHeader2 {
    return Intl.message('Support', name: 'tProfileHeader2', desc: '', args: []);
  }

  /// `Contact US`
  String get tContactUs {
    return Intl.message('Contact US', name: 'tContactUs', desc: '', args: []);
  }

  /// `Legal`
  String get tProfileHeader3 {
    return Intl.message('Legal', name: 'tProfileHeader3', desc: '', args: []);
  }

  /// `Privacy Policy`
  String get tPrivacyPol {
    return Intl.message(
      'Privacy Policy',
      name: 'tPrivacyPol',
      desc: '',
      args: [],
    );
  }

  /// `About PGU First Aid`
  String get tAboutUs {
    return Intl.message(
      'About PGU First Aid',
      name: 'tAboutUs',
      desc: '',
      args: [],
    );
  }

  /// `+79960808085`
  String get tPhoneNumber {
    return Intl.message(
      '+79960808085',
      name: 'tPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `tel`
  String get tTel {
    return Intl.message('tel', name: 'tTel', desc: '', args: []);
  }

  /// `App Support Request`
  String get tsubject {
    return Intl.message(
      'App Support Request',
      name: 'tsubject',
      desc: '',
      args: [],
    );
  }

  /// `mailto`
  String get tMailto {
    return Intl.message('mailto', name: 'tMailto', desc: '', args: []);
  }

  /// `subject`
  String get tSubject1 {
    return Intl.message('subject', name: 'tSubject1', desc: '', args: []);
  }

  /// `Cannot Make Call`
  String get tCannotmakecall {
    return Intl.message(
      'Cannot Make Call',
      name: 'tCannotmakecall',
      desc: '',
      args: [],
    );
  }

  /// `Please call this number directly: `
  String get tcallthisnum {
    return Intl.message(
      'Please call this number directly: ',
      name: 'tcallthisnum',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get tOK {
    return Intl.message('OK', name: 'tOK', desc: '', args: []);
  }

  /// `Phone number copied`
  String get tcopyphone {
    return Intl.message(
      'Phone number copied',
      name: 'tcopyphone',
      desc: '',
      args: [],
    );
  }

  /// `COPY`
  String get tCopy {
    return Intl.message('COPY', name: 'tCopy', desc: '', args: []);
  }

  /// `Cannot Send Email,`
  String get tCannotsendemail {
    return Intl.message(
      'Cannot Send Email,',
      name: 'tCannotsendemail',
      desc: '',
      args: [],
    );
  }

  /// `Please contact us at:`
  String get tpleaseContactUsAt {
    return Intl.message(
      'Please contact us at:',
      name: 'tpleaseContactUsAt',
      desc: '',
      args: [],
    );
  }

  /// `Email copied`
  String get temailCopied {
    return Intl.message(
      'Email copied',
      name: 'temailCopied',
      desc: '',
      args: [],
    );
  }

  /// `We're here to help!`
  String get tweAreHereToHelp {
    return Intl.message(
      'We\'re here to help!',
      name: 'tweAreHereToHelp',
      desc: '',
      args: [],
    );
  }

  /// `Contact our support team through any of the following methods:`
  String get tcontactOurSupportTeam {
    return Intl.message(
      'Contact our support team through any of the following methods:',
      name: 'tcontactOurSupportTeam',
      desc: '',
      args: [],
    );
  }

  /// `Email Support`
  String get temailSupport {
    return Intl.message(
      'Email Support',
      name: 'temailSupport',
      desc: '',
      args: [],
    );
  }

  /// `Get help via email`
  String get tgetHelpViaEmail {
    return Intl.message(
      'Get help via email',
      name: 'tgetHelpViaEmail',
      desc: '',
      args: [],
    );
  }

  /// `Send Email`
  String get tsendEmail {
    return Intl.message('Send Email', name: 'tsendEmail', desc: '', args: []);
  }

  /// `Phone Support`
  String get tphoneSupport {
    return Intl.message(
      'Phone Support',
      name: 'tphoneSupport',
      desc: '',
      args: [],
    );
  }

  /// `Call our support team`
  String get tcallOurSupportTeam {
    return Intl.message(
      'Call our support team',
      name: 'tcallOurSupportTeam',
      desc: '',
      args: [],
    );
  }

  /// `Call Now`
  String get tcallNow {
    return Intl.message('Call Now', name: 'tcallNow', desc: '', args: []);
  }

  /// `Live Chat`
  String get tliveChat {
    return Intl.message('Live Chat', name: 'tliveChat', desc: '', args: []);
  }

  /// `Chat with an agent`
  String get tchatWithAgent {
    return Intl.message(
      'Chat with an agent',
      name: 'tchatWithAgent',
      desc: '',
      args: [],
    );
  }

  /// `Start Chat`
  String get tstartChat {
    return Intl.message('Start Chat', name: 'tstartChat', desc: '', args: []);
  }

  /// `Live chat coming soon!`
  String get tliveChatComingSoon {
    return Intl.message(
      'Live chat coming soon!',
      name: 'tliveChatComingSoon',
      desc: '',
      args: [],
    );
  }

  /// `Frequently Asked Questions`
  String get tfaq {
    return Intl.message(
      'Frequently Asked Questions',
      name: 'tfaq',
      desc: '',
      args: [],
    );
  }

  /// `question`
  String get tquestion {
    return Intl.message('question', name: 'tquestion', desc: '', args: []);
  }

  /// `answer`
  String get tanswer {
    return Intl.message('answer', name: 'tanswer', desc: '', args: []);
  }

  /// `How do I reset my password?`
  String get tquestion1 {
    return Intl.message(
      'How do I reset my password?',
      name: 'tquestion1',
      desc: '',
      args: [],
    );
  }

  /// `You don't need to reset password cause you automatically login to your account using Google Account.`
  String get tanswer1 {
    return Intl.message(
      'You don\'t need to reset password cause you automatically login to your account using Google Account.',
      name: 'tanswer1',
      desc: '',
      args: [],
    );
  }

  /// `How do I contact customer service?`
  String get tquestion2 {
    return Intl.message(
      'How do I contact customer service?',
      name: 'tquestion2',
      desc: '',
      args: [],
    );
  }

  /// `Use any of the contact methods above or visit our website for more options.`
  String get tanswer2 {
    return Intl.message(
      'Use any of the contact methods above or visit our website for more options.',
      name: 'tanswer2',
      desc: '',
      args: [],
    );
  }

  /// `OTP Verification`
  String get totpVerification {
    return Intl.message(
      'OTP Verification',
      name: 'totpVerification',
      desc: '',
      args: [],
    );
  }

  /// `Verification`
  String get tverification {
    return Intl.message(
      'Verification',
      name: 'tverification',
      desc: '',
      args: [],
    );
  }

  /// `Enter the OTP sent to your phone number`
  String get tenterOtpSentToPhone {
    return Intl.message(
      'Enter the OTP sent to your phone number',
      name: 'tenterOtpSentToPhone',
      desc: '',
      args: [],
    );
  }

  /// `Enter 6-Digit Code`
  String get tenter6DigitCode {
    return Intl.message(
      'Enter 6-Digit Code',
      name: 'tenter6DigitCode',
      desc: '',
      args: [],
    );
  }

  /// `Didn't receive any code?`
  String get tdidntReceiveCode {
    return Intl.message(
      'Didn\'t receive any code?',
      name: 'tdidntReceiveCode',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get tresend {
    return Intl.message('Resend', name: 'tresend', desc: '', args: []);
  }

  /// `Complete Profile`
  String get tcompleteProfile {
    return Intl.message(
      'Complete Profile',
      name: 'tcompleteProfile',
      desc: '',
      args: [],
    );
  }

  /// `Tell others about yourself`
  String get ttellOthersAboutYou {
    return Intl.message(
      'Tell others about yourself',
      name: 'ttellOthersAboutYou',
      desc: '',
      args: [],
    );
  }

  /// `CONTINUE`
  String get tcontinue {
    return Intl.message('CONTINUE', name: 'tcontinue', desc: '', args: []);
  }

  /// `Please upload your profile photo`
  String get tpleaseUploadPhoto {
    return Intl.message(
      'Please upload your profile photo',
      name: 'tpleaseUploadPhoto',
      desc: '',
      args: [],
    );
  }

  /// `EMERGENCY NUMBER`
  String get temergencyNumber {
    return Intl.message(
      'EMERGENCY NUMBER',
      name: 'temergencyNumber',
      desc: '',
      args: [],
    );
  }

  /// `EMERGENCY call`
  String get temergencyCall {
    return Intl.message(
      'EMERGENCY call',
      name: 'temergencyCall',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to call 112?`
  String get tareYouSureCall112 {
    return Intl.message(
      'Are you sure you want to call 112?',
      name: 'tareYouSureCall112',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get tcancel {
    return Intl.message('Cancel', name: 'tcancel', desc: '', args: []);
  }

  /// `Call`
  String get tcall {
    return Intl.message('Call', name: 'tcall', desc: '', args: []);
  }

  /// `About PGU First Aid App`
  String get taboutPGUFA {
    return Intl.message(
      'About PGU First Aid App',
      name: 'taboutPGUFA',
      desc: '',
      args: [],
    );
  }

  /// `The PGU First Aid App is designed to provide essential first aid information to users in emergency situations. Developed with students and the public in mind, this app offers easy-to-follow guides on handling common injuries and health emergencies.`
  String get taboutHeader {
    return Intl.message(
      'The PGU First Aid App is designed to provide essential first aid information to users in emergency situations. Developed with students and the public in mind, this app offers easy-to-follow guides on handling common injuries and health emergencies.',
      name: 'taboutHeader',
      desc: '',
      args: [],
    );
  }

  /// `Features:`
  String get taboutHeader1 {
    return Intl.message('Features:', name: 'taboutHeader1', desc: '', args: []);
  }

  /// `- Step-by-step instructions for first aid procedures.\n- Topics include CPR, burns, choking, fractures, bleeding, and more.\n- Offline access to vital information.\n- Clean and simple interface for quick navigation.`
  String get taboutParagraph {
    return Intl.message(
      '- Step-by-step instructions for first aid procedures.\n- Topics include CPR, burns, choking, fractures, bleeding, and more.\n- Offline access to vital information.\n- Clean and simple interface for quick navigation.',
      name: 'taboutParagraph',
      desc: '',
      args: [],
    );
  }

  /// `Who Developed This App?`
  String get taboutHeader2 {
    return Intl.message(
      'Who Developed This App?',
      name: 'taboutHeader2',
      desc: '',
      args: [],
    );
  }

  /// `This app was developed as part of a student project at PGU (Penza State University), with the goal of enhancing public safety awareness and response skills.`
  String get taboutParagraph2 {
    return Intl.message(
      'This app was developed as part of a student project at PGU (Penza State University), with the goal of enhancing public safety awareness and response skills.',
      name: 'taboutParagraph2',
      desc: '',
      args: [],
    );
  }

  /// `Disclaimer:`
  String get taboutHeader3 {
    return Intl.message(
      'Disclaimer:',
      name: 'taboutHeader3',
      desc: '',
      args: [],
    );
  }

  /// `This app is intended for educational purposes and general guidance only. It is not a substitute for professional medical advice or training. In a medical emergency, always contact emergency services or a healthcare professional.`
  String get taboutParagraph3 {
    return Intl.message(
      'This app is intended for educational purposes and general guidance only. It is not a substitute for professional medical advice or training. In a medical emergency, always contact emergency services or a healthcare professional.',
      name: 'taboutParagraph3',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us:`
  String get taboutHeader4 {
    return Intl.message(
      'Contact Us:',
      name: 'taboutHeader4',
      desc: '',
      args: [],
    );
  }

  /// `For feedback or inquiries, please contact:\nyvhiku@yandex.ru`
  String get taboutParagraph4 {
    return Intl.message(
      'For feedback or inquiries, please contact:\nyvhiku@yandex.ru',
      name: 'taboutParagraph4',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get tprivacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'tprivacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Your privacy is important to us. This Privacy Policy explains how we collect, use, and protect your information when you use the First Aid App.`
  String get tprivacyPolicyHeader {
    return Intl.message(
      'Your privacy is important to us. This Privacy Policy explains how we collect, use, and protect your information when you use the First Aid App.',
      name: 'tprivacyPolicyHeader',
      desc: '',
      args: [],
    );
  }

  /// `1. Information We Collect`
  String get tprivacyQ1 {
    return Intl.message(
      '1. Information We Collect',
      name: 'tprivacyQ1',
      desc: '',
      args: [],
    );
  }

  /// `- Personal information you provide, such as your name and email when signing up.\n- Data related to app usage, saved topics, and preferences.`
  String get tprivacyA1 {
    return Intl.message(
      '- Personal information you provide, such as your name and email when signing up.\n- Data related to app usage, saved topics, and preferences.',
      name: 'tprivacyA1',
      desc: '',
      args: [],
    );
  }

  /// `2. How We Use Your Information`
  String get tprivacyQ2 {
    return Intl.message(
      '2. How We Use Your Information',
      name: 'tprivacyQ2',
      desc: '',
      args: [],
    );
  }

  /// `- To provide personalized features like saving topics.\n- To improve the app and user experience.\n- We do NOT share or sell your personal data to third parties.`
  String get tprivacyA2 {
    return Intl.message(
      '- To provide personalized features like saving topics.\n- To improve the app and user experience.\n- We do NOT share or sell your personal data to third parties.',
      name: 'tprivacyA2',
      desc: '',
      args: [],
    );
  }

  /// `3. Data Security`
  String get tprivacyQ3 {
    return Intl.message(
      '3. Data Security',
      name: 'tprivacyQ3',
      desc: '',
      args: [],
    );
  }

  /// `We use secure authentication (Firebase Auth) and encrypted cloud storage (Firebase Storage & Firestore) to keep your data safe.`
  String get tprivacyA3 {
    return Intl.message(
      'We use secure authentication (Firebase Auth) and encrypted cloud storage (Firebase Storage & Firestore) to keep your data safe.',
      name: 'tprivacyA3',
      desc: '',
      args: [],
    );
  }

  /// `4. Your Choices`
  String get tprivacyQ4 {
    return Intl.message(
      '4. Your Choices',
      name: 'tprivacyQ4',
      desc: '',
      args: [],
    );
  }

  /// `- You can delete your account and all data at any time.\n- Contact us for any questions or data requests.`
  String get tprivacyA4 {
    return Intl.message(
      '- You can delete your account and all data at any time.\n- Contact us for any questions or data requests.',
      name: 'tprivacyA4',
      desc: '',
      args: [],
    );
  }

  /// `5. Changes to This Policy`
  String get tprivacyQ5 {
    return Intl.message(
      '5. Changes to This Policy',
      name: 'tprivacyQ5',
      desc: '',
      args: [],
    );
  }

  /// `We may update this policy from time to time. We will notify you of any major changes.`
  String get tprivacyA5 {
    return Intl.message(
      'We may update this policy from time to time. We will notify you of any major changes.',
      name: 'tprivacyA5',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us:\nyvhiku@yandex.ru`
  String get tcontactUsIn {
    return Intl.message(
      'Contact Us:\nyvhiku@yandex.ru',
      name: 'tcontactUsIn',
      desc: '',
      args: [],
    );
  }

  /// `No user data found`
  String get tuserNotFound {
    return Intl.message(
      'No user data found',
      name: 'tuserNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Retry Loading`
  String get tretryLoading {
    return Intl.message(
      'Retry Loading',
      name: 'tretryLoading',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get tconfirm {
    return Intl.message('Confirm', name: 'tconfirm', desc: '', args: []);
  }

  /// `Clear all saved topics?`
  String get tclearAllTopics {
    return Intl.message(
      'Clear all saved topics?',
      name: 'tclearAllTopics',
      desc: '',
      args: [],
    );
  }

  /// `Clear`
  String get tclear {
    return Intl.message('Clear', name: 'tclear', desc: '', args: []);
  }

  /// `All saved topics cleared`
  String get tallTopicsCleared {
    return Intl.message(
      'All saved topics cleared',
      name: 'tallTopicsCleared',
      desc: '',
      args: [],
    );
  }

  /// `Clear All`
  String get tclearAll {
    return Intl.message('Clear All', name: 'tclearAll', desc: '', args: []);
  }

  /// `No saved topics yet`
  String get tnoSavedTopicYet {
    return Intl.message(
      'No saved topics yet',
      name: 'tnoSavedTopicYet',
      desc: '',
      args: [],
    );
  }

  /// `Browse Topics`
  String get tbrowseTopics {
    return Intl.message(
      'Browse Topics',
      name: 'tbrowseTopics',
      desc: '',
      args: [],
    );
  }

  /// `Saved Topics`
  String get tsavedTopics {
    return Intl.message(
      'Saved Topics',
      name: 'tsavedTopics',
      desc: '',
      args: [],
    );
  }

  /// `Remove this topic from saved?`
  String get tremoveThisTopic {
    return Intl.message(
      'Remove this topic from saved?',
      name: 'tremoveThisTopic',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get tremove {
    return Intl.message('Remove', name: 'tremove', desc: '', args: []);
  }

  /// `Added to saved topics`
  String get taddedToSaved {
    return Intl.message(
      'Added to saved topics',
      name: 'taddedToSaved',
      desc: '',
      args: [],
    );
  }

  /// `Removed from saved topics`
  String get tremovedTopic {
    return Intl.message(
      'Removed from saved topics',
      name: 'tremovedTopic',
      desc: '',
      args: [],
    );
  }

  /// `Allergic Reaction (First Aid)`
  String get tallergicReactionFirstAid {
    return Intl.message(
      'Allergic Reaction (First Aid)',
      name: 'tallergicReactionFirstAid',
      desc: '',
      args: [],
    );
  }

  /// `An allergic reaction is a rapid response of the immune system to allergens such as insect stings, foods, or medications. Some reactions can be life-threatening and require urgent action.`
  String get tallergicReactionContent1 {
    return Intl.message(
      'An allergic reaction is a rapid response of the immune system to allergens such as insect stings, foods, or medications. Some reactions can be life-threatening and require urgent action.',
      name: 'tallergicReactionContent1',
      desc: '',
      args: [],
    );
  }

  /// `Steps to Provide First Aid:`
  String get tallergicReactionContent2 {
    return Intl.message(
      'Steps to Provide First Aid:',
      name: 'tallergicReactionContent2',
      desc: '',
      args: [],
    );
  }

  /// `Assess the Situation`
  String get tallergicReactionContent3 {
    return Intl.message(
      'Assess the Situation',
      name: 'tallergicReactionContent3',
      desc: '',
      args: [],
    );
  }

  /// `Look for symptoms like rash, swelling (especially of the face or throat), shortness of breath, dizziness, or unconsciousness.`
  String get tallergicReactionContent4 {
    return Intl.message(
      'Look for symptoms like rash, swelling (especially of the face or throat), shortness of breath, dizziness, or unconsciousness.',
      name: 'tallergicReactionContent4',
      desc: '',
      args: [],
    );
  }

  /// `Remove the Allergen`
  String get tallergicReactionContent5 {
    return Intl.message(
      'Remove the Allergen',
      name: 'tallergicReactionContent5',
      desc: '',
      args: [],
    );
  }

  /// `If possible, eliminate contact with the suspected allergen (e.g., food, insect sting, medication).`
  String get tallergicReactionContent6 {
    return Intl.message(
      'If possible, eliminate contact with the suspected allergen (e.g., food, insect sting, medication).',
      name: 'tallergicReactionContent6',
      desc: '',
      args: [],
    );
  }

  /// `Call Emergency Services`
  String get tallergicReactionContent7 {
    return Intl.message(
      'Call Emergency Services',
      name: 'tallergicReactionContent7',
      desc: '',
      args: [],
    );
  }

  /// `Call 112 immediately. Anaphylaxis can escalate quickly and requires professional help.`
  String get tallergicReactionContent8 {
    return Intl.message(
      'Call 112 immediately. Anaphylaxis can escalate quickly and requires professional help.',
      name: 'tallergicReactionContent8',
      desc: '',
      args: [],
    );
  }

  /// `Help Use an Epinephrine Auto-Injector`
  String get tallergicReactionContent9 {
    return Intl.message(
      'Help Use an Epinephrine Auto-Injector',
      name: 'tallergicReactionContent9',
      desc: '',
      args: [],
    );
  }

  /// `If the person has an epinephrine pen (e.g., EpiPen), help them use it by injecting into the outer thigh. Hold for 5–10 seconds.`
  String get tallergicReactionContent10 {
    return Intl.message(
      'If the person has an epinephrine pen (e.g., EpiPen), help them use it by injecting into the outer thigh. Hold for 5–10 seconds.',
      name: 'tallergicReactionContent10',
      desc: '',
      args: [],
    );
  }

  /// `Lay the Person Down`
  String get tallergicReactionContent11 {
    return Intl.message(
      'Lay the Person Down',
      name: 'tallergicReactionContent11',
      desc: '',
      args: [],
    );
  }

  /// `If there is no difficulty breathing, lay the person flat and raise their legs. If breathing is difficult, allow them to sit up.`
  String get tallergicReactionContent12 {
    return Intl.message(
      'If there is no difficulty breathing, lay the person flat and raise their legs. If breathing is difficult, allow them to sit up.',
      name: 'tallergicReactionContent12',
      desc: '',
      args: [],
    );
  }

  /// `Monitor Breathing and Consciousness`
  String get tallergicReactionContent13 {
    return Intl.message(
      'Monitor Breathing and Consciousness',
      name: 'tallergicReactionContent13',
      desc: '',
      args: [],
    );
  }

  /// `Watch the person closely. If breathing stops or the person becomes unresponsive, start CPR immediately.`
  String get tallergicReactionContent14 {
    return Intl.message(
      'Watch the person closely. If breathing stops or the person becomes unresponsive, start CPR immediately.',
      name: 'tallergicReactionContent14',
      desc: '',
      args: [],
    );
  }

  /// `Important Notes:`
  String get tallergicReactionContent15 {
    return Intl.message(
      'Important Notes:',
      name: 'tallergicReactionContent15',
      desc: '',
      args: [],
    );
  }

  /// `Epinephrine is the only effective treatment for anaphylaxis.`
  String get tallergicReactionContent16 {
    return Intl.message(
      'Epinephrine is the only effective treatment for anaphylaxis.',
      name: 'tallergicReactionContent16',
      desc: '',
      args: [],
    );
  }

  /// `Do not give anything to eat or drink during the reaction.`
  String get tallergicReactionContent17 {
    return Intl.message(
      'Do not give anything to eat or drink during the reaction.',
      name: 'tallergicReactionContent17',
      desc: '',
      args: [],
    );
  }

  /// `A second epinephrine dose may be needed after 5–15 minutes.`
  String get tallergicReactionContent18 {
    return Intl.message(
      'A second epinephrine dose may be needed after 5–15 minutes.',
      name: 'tallergicReactionContent18',
      desc: '',
      args: [],
    );
  }

  /// `Antihistamines may help mild symptoms but are not enough for severe reactions.`
  String get tallergicReactionContent19 {
    return Intl.message(
      'Antihistamines may help mild symptoms but are not enough for severe reactions.',
      name: 'tallergicReactionContent19',
      desc: '',
      args: [],
    );
  }

  /// `Watch Allergy First Aid Demo`
  String get tallergicReactionContent20 {
    return Intl.message(
      'Watch Allergy First Aid Demo',
      name: 'tallergicReactionContent20',
      desc: '',
      args: [],
    );
  }

  /// `Assessing an Injured Person`
  String get tassessingInjured {
    return Intl.message(
      'Assessing an Injured Person',
      name: 'tassessingInjured',
      desc: '',
      args: [],
    );
  }

  /// `Before providing first aid, assess the situation and the injured person. This ensures your own safety and allows effective help.`
  String get tassessing1 {
    return Intl.message(
      'Before providing first aid, assess the situation and the injured person. This ensures your own safety and allows effective help.',
      name: 'tassessing1',
      desc: '',
      args: [],
    );
  }

  /// `Initial Assessment Steps:`
  String get tassessing2 {
    return Intl.message(
      'Initial Assessment Steps:',
      name: 'tassessing2',
      desc: '',
      args: [],
    );
  }

  /// `Ensure Scene Safety`
  String get tassessing3 {
    return Intl.message(
      'Ensure Scene Safety',
      name: 'tassessing3',
      desc: '',
      args: [],
    );
  }

  /// `Check for immediate dangers like fire, traffic, or electrical hazards. Do not enter an unsafe scene.`
  String get tassessing4 {
    return Intl.message(
      'Check for immediate dangers like fire, traffic, or electrical hazards. Do not enter an unsafe scene.',
      name: 'tassessing4',
      desc: '',
      args: [],
    );
  }

  /// `Check Responsiveness`
  String get tassessing5 {
    return Intl.message(
      'Check Responsiveness',
      name: 'tassessing5',
      desc: '',
      args: [],
    );
  }

  /// `Gently shake the person and ask loudly, "Can you hear me?" If no response, proceed to call for help.`
  String get tassessing6 {
    return Intl.message(
      'Gently shake the person and ask loudly, "Can you hear me?" If no response, proceed to call for help.',
      name: 'tassessing6',
      desc: '',
      args: [],
    );
  }

  /// `Call Emergency Services`
  String get tassessing7 {
    return Intl.message(
      'Call Emergency Services',
      name: 'tassessing7',
      desc: '',
      args: [],
    );
  }

  /// `Call 112 or ask a bystander to do so. Provide your location and details of the situation.`
  String get tassessing8 {
    return Intl.message(
      'Call 112 or ask a bystander to do so. Provide your location and details of the situation.',
      name: 'tassessing8',
      desc: '',
      args: [],
    );
  }

  /// `Open the Airway`
  String get tassessing9 {
    return Intl.message(
      'Open the Airway',
      name: 'tassessing9',
      desc: '',
      args: [],
    );
  }

  /// `Tilt the head back and lift the chin to open the airway if the person is unconscious.`
  String get tassessing10 {
    return Intl.message(
      'Tilt the head back and lift the chin to open the airway if the person is unconscious.',
      name: 'tassessing10',
      desc: '',
      args: [],
    );
  }

  /// `Check for Breathing`
  String get tassessing11 {
    return Intl.message(
      'Check for Breathing',
      name: 'tassessing11',
      desc: '',
      args: [],
    );
  }

  /// `Look, listen, and feel for breathing. If not breathing, begin CPR immediately.`
  String get tassessing12 {
    return Intl.message(
      'Look, listen, and feel for breathing. If not breathing, begin CPR immediately.',
      name: 'tassessing12',
      desc: '',
      args: [],
    );
  }

  /// `Check for Bleeding`
  String get tassessing13 {
    return Intl.message(
      'Check for Bleeding',
      name: 'tassessing13',
      desc: '',
      args: [],
    );
  }

  /// `Quickly scan for major bleeding. Apply direct pressure to wounds using a cloth or bandage.`
  String get tassessing14 {
    return Intl.message(
      'Quickly scan for major bleeding. Apply direct pressure to wounds using a cloth or bandage.',
      name: 'tassessing14',
      desc: '',
      args: [],
    );
  }

  /// `Treat for Shock`
  String get tassessing15 {
    return Intl.message(
      'Treat for Shock',
      name: 'tassessing15',
      desc: '',
      args: [],
    );
  }

  /// `Keep the person warm and reassure them. Do not give food or drink.`
  String get tassessing16 {
    return Intl.message(
      'Keep the person warm and reassure them. Do not give food or drink.',
      name: 'tassessing16',
      desc: '',
      args: [],
    );
  }

  /// `Important Notes:`
  String get tassessing17 {
    return Intl.message(
      'Important Notes:',
      name: 'tassessing17',
      desc: '',
      args: [],
    );
  }

  /// `Never put yourself in danger to help someone.`
  String get tassessing18 {
    return Intl.message(
      'Never put yourself in danger to help someone.',
      name: 'tassessing18',
      desc: '',
      args: [],
    );
  }

  /// `Only move the injured person if there is an immediate threat.`
  String get tassessing19 {
    return Intl.message(
      'Only move the injured person if there is an immediate threat.',
      name: 'tassessing19',
      desc: '',
      args: [],
    );
  }

  /// `Always check response, breathing, and bleeding in that order.`
  String get tassessing20 {
    return Intl.message(
      'Always check response, breathing, and bleeding in that order.',
      name: 'tassessing20',
      desc: '',
      args: [],
    );
  }

  /// `Watch Assessment Demo`
  String get tassessing21 {
    return Intl.message(
      'Watch Assessment Demo',
      name: 'tassessing21',
      desc: '',
      args: [],
    );
  }

  /// `Asthma`
  String get asthma {
    return Intl.message('Asthma', name: 'asthma', desc: '', args: []);
  }

  /// `Asthma Attack First Aid`
  String get asthmaTitle {
    return Intl.message(
      'Asthma Attack First Aid',
      name: 'asthmaTitle',
      desc: '',
      args: [],
    );
  }

  /// `Asthma attacks can be life-threatening. Quick and correct action is crucial to help someone who is having difficulty breathing.`
  String get asthma1 {
    return Intl.message(
      'Asthma attacks can be life-threatening. Quick and correct action is crucial to help someone who is having difficulty breathing.',
      name: 'asthma1',
      desc: '',
      args: [],
    );
  }

  /// `Steps to Help During an Asthma Attack:`
  String get asthma2 {
    return Intl.message(
      'Steps to Help During an Asthma Attack:',
      name: 'asthma2',
      desc: '',
      args: [],
    );
  }

  /// `Stay Calm and Reassure`
  String get asthma3 {
    return Intl.message(
      'Stay Calm and Reassure',
      name: 'asthma3',
      desc: '',
      args: [],
    );
  }

  /// `Help the person stay calm and encourage them to sit upright and breathe slowly.`
  String get asthma4 {
    return Intl.message(
      'Help the person stay calm and encourage them to sit upright and breathe slowly.',
      name: 'asthma4',
      desc: '',
      args: [],
    );
  }

  /// `Use Inhaler (Reliever)`
  String get asthma5 {
    return Intl.message(
      'Use Inhaler (Reliever)',
      name: 'asthma5',
      desc: '',
      args: [],
    );
  }

  /// `Help them take their quick-relief inhaler (usually blue). They may take 1–2 puffs every 30–60 seconds, up to 10 puffs.`
  String get asthma6 {
    return Intl.message(
      'Help them take their quick-relief inhaler (usually blue). They may take 1–2 puffs every 30–60 seconds, up to 10 puffs.',
      name: 'asthma6',
      desc: '',
      args: [],
    );
  }

  /// `Loosen Tight Clothing`
  String get asthma7 {
    return Intl.message(
      'Loosen Tight Clothing',
      name: 'asthma7',
      desc: '',
      args: [],
    );
  }

  /// `Loosen any tight clothing around the neck or chest to help with breathing.`
  String get asthma8 {
    return Intl.message(
      'Loosen any tight clothing around the neck or chest to help with breathing.',
      name: 'asthma8',
      desc: '',
      args: [],
    );
  }

  /// `Call Emergency Services`
  String get asthma9 {
    return Intl.message(
      'Call Emergency Services',
      name: 'asthma9',
      desc: '',
      args: [],
    );
  }

  /// `If breathing doesn’t improve after 10 puffs or worsens, call 112 immediately.`
  String get asthma10 {
    return Intl.message(
      'If breathing doesn’t improve after 10 puffs or worsens, call 112 immediately.',
      name: 'asthma10',
      desc: '',
      args: [],
    );
  }

  /// `Repeat if Needed`
  String get asthma11 {
    return Intl.message(
      'Repeat if Needed',
      name: 'asthma11',
      desc: '',
      args: [],
    );
  }

  /// `Continue giving 1 puff every 30–60 seconds up to another 10 puffs while waiting for help.`
  String get asthma12 {
    return Intl.message(
      'Continue giving 1 puff every 30–60 seconds up to another 10 puffs while waiting for help.',
      name: 'asthma12',
      desc: '',
      args: [],
    );
  }

  /// `Important Notes:`
  String get asthma13 {
    return Intl.message(
      'Important Notes:',
      name: 'asthma13',
      desc: '',
      args: [],
    );
  }

  /// `Do not leave the person alone during an attack.`
  String get asthma14 {
    return Intl.message(
      'Do not leave the person alone during an attack.',
      name: 'asthma14',
      desc: '',
      args: [],
    );
  }

  /// `Do not lie the person down—keep them sitting upright.`
  String get asthma15 {
    return Intl.message(
      'Do not lie the person down—keep them sitting upright.',
      name: 'asthma15',
      desc: '',
      args: [],
    );
  }

  /// `Avoid triggers like smoke, cold air, or allergens.`
  String get asthma16 {
    return Intl.message(
      'Avoid triggers like smoke, cold air, or allergens.',
      name: 'asthma16',
      desc: '',
      args: [],
    );
  }

  /// `Watch Asthma Demo`
  String get asthma17 {
    return Intl.message(
      'Watch Asthma Demo',
      name: 'asthma17',
      desc: '',
      args: [],
    );
  }

  /// `Bites`
  String get bites {
    return Intl.message('Bites', name: 'bites', desc: '', args: []);
  }

  /// `Bite Wound First Aid`
  String get bitesTitle {
    return Intl.message(
      'Bite Wound First Aid',
      name: 'bitesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Animal or insect bites can transmit diseases and lead to infections if untreated.`
  String get bites1 {
    return Intl.message(
      'Animal or insect bites can transmit diseases and lead to infections if untreated.',
      name: 'bites1',
      desc: '',
      args: [],
    );
  }

  /// `Steps to Treat Bites:`
  String get bites2 {
    return Intl.message(
      'Steps to Treat Bites:',
      name: 'bites2',
      desc: '',
      args: [],
    );
  }

  /// `Move to Safety`
  String get bites3 {
    return Intl.message('Move to Safety', name: 'bites3', desc: '', args: []);
  }

  /// `Ensure the area is safe and the biting animal is no longer a threat.`
  String get bites4 {
    return Intl.message(
      'Ensure the area is safe and the biting animal is no longer a threat.',
      name: 'bites4',
      desc: '',
      args: [],
    );
  }

  /// `Clean the Wound`
  String get bites5 {
    return Intl.message('Clean the Wound', name: 'bites5', desc: '', args: []);
  }

  /// `Wash with soap and running water for several minutes.`
  String get bites6 {
    return Intl.message(
      'Wash with soap and running water for several minutes.',
      name: 'bites6',
      desc: '',
      args: [],
    );
  }

  /// `Stop the Bleeding`
  String get bites7 {
    return Intl.message(
      'Stop the Bleeding',
      name: 'bites7',
      desc: '',
      args: [],
    );
  }

  /// `Apply gentle pressure with a clean cloth or bandage.`
  String get bites8 {
    return Intl.message(
      'Apply gentle pressure with a clean cloth or bandage.',
      name: 'bites8',
      desc: '',
      args: [],
    );
  }

  /// `Apply Antiseptic`
  String get bites9 {
    return Intl.message('Apply Antiseptic', name: 'bites9', desc: '', args: []);
  }

  /// `Use an antiseptic solution to prevent infection.`
  String get bites10 {
    return Intl.message(
      'Use an antiseptic solution to prevent infection.',
      name: 'bites10',
      desc: '',
      args: [],
    );
  }

  /// `Cover the Wound`
  String get bites11 {
    return Intl.message('Cover the Wound', name: 'bites11', desc: '', args: []);
  }

  /// `Use a sterile bandage to protect the bite.`
  String get bites12 {
    return Intl.message(
      'Use a sterile bandage to protect the bite.',
      name: 'bites12',
      desc: '',
      args: [],
    );
  }

  /// `Seek Medical Help`
  String get bites13 {
    return Intl.message(
      'Seek Medical Help',
      name: 'bites13',
      desc: '',
      args: [],
    );
  }

  /// `Especially important for deep bites or suspected rabies exposure.`
  String get bites14 {
    return Intl.message(
      'Especially important for deep bites or suspected rabies exposure.',
      name: 'bites14',
      desc: '',
      args: [],
    );
  }

  /// `Important Notes:`
  String get bites15 {
    return Intl.message(
      'Important Notes:',
      name: 'bites15',
      desc: '',
      args: [],
    );
  }

  /// `Tetanus shot may be needed.`
  String get bites16 {
    return Intl.message(
      'Tetanus shot may be needed.',
      name: 'bites16',
      desc: '',
      args: [],
    );
  }

  /// `Watch for signs of infection (redness, swelling, pus).`
  String get bites17 {
    return Intl.message(
      'Watch for signs of infection (redness, swelling, pus).',
      name: 'bites17',
      desc: '',
      args: [],
    );
  }

  /// `If bitten by a wild animal, report to authorities.`
  String get bites18 {
    return Intl.message(
      'If bitten by a wild animal, report to authorities.',
      name: 'bites18',
      desc: '',
      args: [],
    );
  }

  /// `Bleeding`
  String get bleeding {
    return Intl.message('Bleeding', name: 'bleeding', desc: '', args: []);
  }

  /// `First Aid for Bleeding`
  String get bleedingTitle {
    return Intl.message(
      'First Aid for Bleeding',
      name: 'bleedingTitle',
      desc: '',
      args: [],
    );
  }

  /// `Quick action is critical in stopping bleeding to prevent shock or more serious injury.`
  String get bleeding1 {
    return Intl.message(
      'Quick action is critical in stopping bleeding to prevent shock or more serious injury.',
      name: 'bleeding1',
      desc: '',
      args: [],
    );
  }

  /// `Steps to Stop Bleeding:`
  String get bleeding2 {
    return Intl.message(
      'Steps to Stop Bleeding:',
      name: 'bleeding2',
      desc: '',
      args: [],
    );
  }

  /// `Protect Yourself`
  String get bleeding3 {
    return Intl.message(
      'Protect Yourself',
      name: 'bleeding3',
      desc: '',
      args: [],
    );
  }

  /// `Wear gloves if available to avoid contact with blood.`
  String get bleeding4 {
    return Intl.message(
      'Wear gloves if available to avoid contact with blood.',
      name: 'bleeding4',
      desc: '',
      args: [],
    );
  }

  /// `Apply Pressure`
  String get bleeding5 {
    return Intl.message(
      'Apply Pressure',
      name: 'bleeding5',
      desc: '',
      args: [],
    );
  }

  /// `Use a clean cloth or gauze to press firmly on the wound.`
  String get bleeding6 {
    return Intl.message(
      'Use a clean cloth or gauze to press firmly on the wound.',
      name: 'bleeding6',
      desc: '',
      args: [],
    );
  }

  /// `Elevate the Area`
  String get bleeding7 {
    return Intl.message(
      'Elevate the Area',
      name: 'bleeding7',
      desc: '',
      args: [],
    );
  }

  /// `Raise the injured limb above heart level if possible.`
  String get bleeding8 {
    return Intl.message(
      'Raise the injured limb above heart level if possible.',
      name: 'bleeding8',
      desc: '',
      args: [],
    );
  }

  /// `Use a Bandage`
  String get bleeding9 {
    return Intl.message('Use a Bandage', name: 'bleeding9', desc: '', args: []);
  }

  /// `Wrap the wound tightly, but not so tight as to cut off circulation.`
  String get bleeding10 {
    return Intl.message(
      'Wrap the wound tightly, but not so tight as to cut off circulation.',
      name: 'bleeding10',
      desc: '',
      args: [],
    );
  }

  /// `Seek Emergency Help`
  String get bleeding11 {
    return Intl.message(
      'Seek Emergency Help',
      name: 'bleeding11',
      desc: '',
      args: [],
    );
  }

  /// `If bleeding is severe or doesn’t stop after 10 minutes.`
  String get bleeding12 {
    return Intl.message(
      'If bleeding is severe or doesn’t stop after 10 minutes.',
      name: 'bleeding12',
      desc: '',
      args: [],
    );
  }

  /// `Warnings:`
  String get bleeding13 {
    return Intl.message('Warnings:', name: 'bleeding13', desc: '', args: []);
  }

  /// `Do not remove objects embedded in the wound.`
  String get bleeding14 {
    return Intl.message(
      'Do not remove objects embedded in the wound.',
      name: 'bleeding14',
      desc: '',
      args: [],
    );
  }

  /// `Do not use tourniquets unless trained.`
  String get bleeding15 {
    return Intl.message(
      'Do not use tourniquets unless trained.',
      name: 'bleeding15',
      desc: '',
      args: [],
    );
  }

  /// `Watch for signs of shock (pale skin, weakness).`
  String get bleeding16 {
    return Intl.message(
      'Watch for signs of shock (pale skin, weakness).',
      name: 'bleeding16',
      desc: '',
      args: [],
    );
  }

  /// `Burns`
  String get burns {
    return Intl.message('Burns', name: 'burns', desc: '', args: []);
  }

  /// `First Aid for Burns`
  String get burnsTitle {
    return Intl.message(
      'First Aid for Burns',
      name: 'burnsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Burns can range from mild to life-threatening. First aid helps reduce damage and pain.`
  String get burns1 {
    return Intl.message(
      'Burns can range from mild to life-threatening. First aid helps reduce damage and pain.',
      name: 'burns1',
      desc: '',
      args: [],
    );
  }

  /// `Steps to Treat Burns:`
  String get burns2 {
    return Intl.message(
      'Steps to Treat Burns:',
      name: 'burns2',
      desc: '',
      args: [],
    );
  }

  /// `Stop the Burning Process`
  String get burns3 {
    return Intl.message(
      'Stop the Burning Process',
      name: 'burns3',
      desc: '',
      args: [],
    );
  }

  /// `Remove the person from the heat source and extinguish flames.`
  String get burns4 {
    return Intl.message(
      'Remove the person from the heat source and extinguish flames.',
      name: 'burns4',
      desc: '',
      args: [],
    );
  }

  /// `Cool the Burn`
  String get burns5 {
    return Intl.message('Cool the Burn', name: 'burns5', desc: '', args: []);
  }

  /// `Use cool (not cold) running water for 10–20 minutes.`
  String get burns6 {
    return Intl.message(
      'Use cool (not cold) running water for 10–20 minutes.',
      name: 'burns6',
      desc: '',
      args: [],
    );
  }

  /// `Protect the Area`
  String get burns7 {
    return Intl.message('Protect the Area', name: 'burns7', desc: '', args: []);
  }

  /// `Cover loosely with a clean, non-stick cloth or dressing.`
  String get burns8 {
    return Intl.message(
      'Cover loosely with a clean, non-stick cloth or dressing.',
      name: 'burns8',
      desc: '',
      args: [],
    );
  }

  /// `Avoid Creams or Ice`
  String get burns9 {
    return Intl.message(
      'Avoid Creams or Ice',
      name: 'burns9',
      desc: '',
      args: [],
    );
  }

  /// `Do not apply butter, ointments, or ice directly.`
  String get burns10 {
    return Intl.message(
      'Do not apply butter, ointments, or ice directly.',
      name: 'burns10',
      desc: '',
      args: [],
    );
  }

  /// `Seek Help`
  String get burns11 {
    return Intl.message('Seek Help', name: 'burns11', desc: '', args: []);
  }

  /// `Call emergency services for severe or large burns.`
  String get burns12 {
    return Intl.message(
      'Call emergency services for severe or large burns.',
      name: 'burns12',
      desc: '',
      args: [],
    );
  }

  /// `Burn Severity:`
  String get burns13 {
    return Intl.message('Burn Severity:', name: 'burns13', desc: '', args: []);
  }

  /// `First-degree: Red, painful (like sunburn).`
  String get burns14 {
    return Intl.message(
      'First-degree: Red, painful (like sunburn).',
      name: 'burns14',
      desc: '',
      args: [],
    );
  }

  /// `Second-degree: Blisters, intense pain.`
  String get burns15 {
    return Intl.message(
      'Second-degree: Blisters, intense pain.',
      name: 'burns15',
      desc: '',
      args: [],
    );
  }

  /// `Third-degree: Charred, white, painless — call 911.`
  String get burns16 {
    return Intl.message(
      'Third-degree: Charred, white, painless — call 911.',
      name: 'burns16',
      desc: '',
      args: [],
    );
  }

  /// `Choking First Aid`
  String get ChokingTitle {
    return Intl.message(
      'Choking First Aid',
      name: 'ChokingTitle',
      desc: '',
      args: [],
    );
  }

  /// `Choking occurs when an object blocks the airway, preventing normal breathing.`
  String get Choking1 {
    return Intl.message(
      'Choking occurs when an object blocks the airway, preventing normal breathing.',
      name: 'Choking1',
      desc: '',
      args: [],
    );
  }

  /// `Signs of Choking:`
  String get tChoking2 {
    return Intl.message(
      'Signs of Choking:',
      name: 'tChoking2',
      desc: '',
      args: [],
    );
  }

  /// `- Difficulty breathing or noisy breathing`
  String get tChoking3 {
    return Intl.message(
      '- Difficulty breathing or noisy breathing',
      name: 'tChoking3',
      desc: '',
      args: [],
    );
  }

  /// `- Inability to speak or cough effectively`
  String get tChoking4 {
    return Intl.message(
      '- Inability to speak or cough effectively',
      name: 'tChoking4',
      desc: '',
      args: [],
    );
  }

  /// `- Clutching the throat (universal choking sign)`
  String get tChoking5 {
    return Intl.message(
      '- Clutching the throat (universal choking sign)',
      name: 'tChoking5',
      desc: '',
      args: [],
    );
  }

  /// `First Aid Steps:`
  String get tChoking6 {
    return Intl.message(
      'First Aid Steps:',
      name: 'tChoking6',
      desc: '',
      args: [],
    );
  }

  /// `Encourage Coughing`
  String get tChoking7 {
    return Intl.message(
      'Encourage Coughing',
      name: 'tChoking7',
      desc: '',
      args: [],
    );
  }

  /// `If the person can cough, encourage them to keep coughing to try to dislodge the object.`
  String get tChoking8 {
    return Intl.message(
      'If the person can cough, encourage them to keep coughing to try to dislodge the object.',
      name: 'tChoking8',
      desc: '',
      args: [],
    );
  }

  /// `Perform Back Blows`
  String get tChoking9 {
    return Intl.message(
      'Perform Back Blows',
      name: 'tChoking9',
      desc: '',
      args: [],
    );
  }

  /// `If coughing is ineffective, lean the person forward and deliver 5 firm back blows between the shoulder blades with the heel of your hand.`
  String get tChoking10 {
    return Intl.message(
      'If coughing is ineffective, lean the person forward and deliver 5 firm back blows between the shoulder blades with the heel of your hand.',
      name: 'tChoking10',
      desc: '',
      args: [],
    );
  }

  /// `Perform Abdominal Thrusts`
  String get tChoking11 {
    return Intl.message(
      'Perform Abdominal Thrusts',
      name: 'tChoking11',
      desc: '',
      args: [],
    );
  }

  /// `If back blows do not clear the airway, perform 5 abdominal thrusts (Heimlich maneuver): stand behind, place a fist above the navel, grasp it with the other hand, and pull sharply inward and upward.`
  String get tChoking12 {
    return Intl.message(
      'If back blows do not clear the airway, perform 5 abdominal thrusts (Heimlich maneuver): stand behind, place a fist above the navel, grasp it with the other hand, and pull sharply inward and upward.',
      name: 'tChoking12',
      desc: '',
      args: [],
    );
  }

  /// `Repeat as Necessary`
  String get tChoking13 {
    return Intl.message(
      'Repeat as Necessary',
      name: 'tChoking13',
      desc: '',
      args: [],
    );
  }

  /// `Alternate between 5 back blows and 5 abdominal thrusts until the object is expelled or the person becomes unconscious.`
  String get tChoking14 {
    return Intl.message(
      'Alternate between 5 back blows and 5 abdominal thrusts until the object is expelled or the person becomes unconscious.',
      name: 'tChoking14',
      desc: '',
      args: [],
    );
  }

  /// `Call Emergency Services`
  String get tChoking15 {
    return Intl.message(
      'Call Emergency Services',
      name: 'tChoking15',
      desc: '',
      args: [],
    );
  }

  /// `If the person becomes unconscious or choking persists, call emergency services immediately and begin CPR if trained.`
  String get tChoking16 {
    return Intl.message(
      'If the person becomes unconscious or choking persists, call emergency services immediately and begin CPR if trained.',
      name: 'tChoking16',
      desc: '',
      args: [],
    );
  }

  /// `Important Notes:`
  String get tChoking17 {
    return Intl.message(
      'Important Notes:',
      name: 'tChoking17',
      desc: '',
      args: [],
    );
  }

  /// `Do not perform abdominal thrusts on infants under 1 year old—use appropriate infant choking techniques.`
  String get tChoking18 {
    return Intl.message(
      'Do not perform abdominal thrusts on infants under 1 year old—use appropriate infant choking techniques.',
      name: 'tChoking18',
      desc: '',
      args: [],
    );
  }

  /// `If you are alone and choking, try to perform abdominal thrusts on yourself or call for help.`
  String get tChoking19 {
    return Intl.message(
      'If you are alone and choking, try to perform abdominal thrusts on yourself or call for help.',
      name: 'tChoking19',
      desc: '',
      args: [],
    );
  }

  /// `CPR Instructions`
  String get cprTitle {
    return Intl.message(
      'CPR Instructions',
      name: 'cprTitle',
      desc: '',
      args: [],
    );
  }

  /// `Cardiopulmonary Resuscitation (CPR)`
  String get cprHeading {
    return Intl.message(
      'Cardiopulmonary Resuscitation (CPR)',
      name: 'cprHeading',
      desc: '',
      args: [],
    );
  }

  /// `Performing CPR can save a life when someone’s breathing or heartbeat has stopped.`
  String get cprIntro {
    return Intl.message(
      'Performing CPR can save a life when someone’s breathing or heartbeat has stopped.',
      name: 'cprIntro',
      desc: '',
      args: [],
    );
  }

  /// `Steps to Perform CPR:`
  String get cprStepsHeading {
    return Intl.message(
      'Steps to Perform CPR:',
      name: 'cprStepsHeading',
      desc: '',
      args: [],
    );
  }

  /// `Check Responsiveness`
  String get cprStep1Title {
    return Intl.message(
      'Check Responsiveness',
      name: 'cprStep1Title',
      desc: '',
      args: [],
    );
  }

  /// `Tap the person’s shoulder and shout, 'Are you okay?'`
  String get cprStep1Description {
    return Intl.message(
      'Tap the person’s shoulder and shout, \'Are you okay?\'',
      name: 'cprStep1Description',
      desc: '',
      args: [],
    );
  }

  /// `Call for Help`
  String get cprStep2Title {
    return Intl.message(
      'Call for Help',
      name: 'cprStep2Title',
      desc: '',
      args: [],
    );
  }

  /// `If unresponsive, call emergency services (e.g., 112) or ask someone to call.`
  String get cprStep2Description {
    return Intl.message(
      'If unresponsive, call emergency services (e.g., 112) or ask someone to call.',
      name: 'cprStep2Description',
      desc: '',
      args: [],
    );
  }

  /// `Open the Airway`
  String get cprStep3Title {
    return Intl.message(
      'Open the Airway',
      name: 'cprStep3Title',
      desc: '',
      args: [],
    );
  }

  /// `Tilt the head back slightly and lift the chin to open the airway.`
  String get cprStep3Description {
    return Intl.message(
      'Tilt the head back slightly and lift the chin to open the airway.',
      name: 'cprStep3Description',
      desc: '',
      args: [],
    );
  }

  /// `Check for Breathing`
  String get cprStep4Title {
    return Intl.message(
      'Check for Breathing',
      name: 'cprStep4Title',
      desc: '',
      args: [],
    );
  }

  /// `Look, listen, and feel for breathing (no more than 10 seconds).`
  String get cprStep4Description {
    return Intl.message(
      'Look, listen, and feel for breathing (no more than 10 seconds).',
      name: 'cprStep4Description',
      desc: '',
      args: [],
    );
  }

  /// `Start Chest Compressions`
  String get cprStep5Title {
    return Intl.message(
      'Start Chest Compressions',
      name: 'cprStep5Title',
      desc: '',
      args: [],
    );
  }

  /// `Place hands on the center of the chest. Push hard and fast (5cm deep at 100-120 compressions per minute).`
  String get cprStep5Description {
    return Intl.message(
      'Place hands on the center of the chest. Push hard and fast (5cm deep at 100-120 compressions per minute).',
      name: 'cprStep5Description',
      desc: '',
      args: [],
    );
  }

  /// `Give Rescue Breaths`
  String get cprStep6Title {
    return Intl.message(
      'Give Rescue Breaths',
      name: 'cprStep6Title',
      desc: '',
      args: [],
    );
  }

  /// `After 30 compressions, give 2 breaths (pinch the nose, cover the mouth with yours, and blow until the chest rises).`
  String get cprStep6Description {
    return Intl.message(
      'After 30 compressions, give 2 breaths (pinch the nose, cover the mouth with yours, and blow until the chest rises).',
      name: 'cprStep6Description',
      desc: '',
      args: [],
    );
  }

  /// `Continue CPR`
  String get cprStep7Title {
    return Intl.message(
      'Continue CPR',
      name: 'cprStep7Title',
      desc: '',
      args: [],
    );
  }

  /// `Repeat cycles of 30 compressions and 2 breaths until help arrives or the person revives.`
  String get cprStep7Description {
    return Intl.message(
      'Repeat cycles of 30 compressions and 2 breaths until help arrives or the person revives.',
      name: 'cprStep7Description',
      desc: '',
      args: [],
    );
  }

  /// `Important Notes:`
  String get cprNotesHeading {
    return Intl.message(
      'Important Notes:',
      name: 'cprNotesHeading',
      desc: '',
      args: [],
    );
  }

  /// `Use an AED if available.`
  String get cprNote1 {
    return Intl.message(
      'Use an AED if available.',
      name: 'cprNote1',
      desc: '',
      args: [],
    );
  }

  /// `For infants, use 2 fingers for compressions.`
  String get cprNote2 {
    return Intl.message(
      'For infants, use 2 fingers for compressions.',
      name: 'cprNote2',
      desc: '',
      args: [],
    );
  }

  /// `Do not stop unless the person starts breathing or help arrives.`
  String get cprNote3 {
    return Intl.message(
      'Do not stop unless the person starts breathing or help arrives.',
      name: 'cprNote3',
      desc: '',
      args: [],
    );
  }

  /// `Watch CPR Demonstration`
  String get cprWatchDemoButton {
    return Intl.message(
      'Watch CPR Demonstration',
      name: 'cprWatchDemoButton',
      desc: '',
      args: [],
    );
  }

  /// `Added to saved topics`
  String get addedToSavedTopics {
    return Intl.message(
      'Added to saved topics',
      name: 'addedToSavedTopics',
      desc: '',
      args: [],
    );
  }

  /// `Diabetics`
  String get diabeticsTitle {
    return Intl.message(
      'Diabetics',
      name: 'diabeticsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Diabetics`
  String get diabeticsAppBarTitle {
    return Intl.message(
      'Diabetics',
      name: 'diabeticsAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Diabetic Emergency First Aid`
  String get diabeticsHeader {
    return Intl.message(
      'Diabetic Emergency First Aid',
      name: 'diabeticsHeader',
      desc: '',
      args: [],
    );
  }

  /// `Recognizing and managing diabetic emergencies such as hypoglycemia (low blood sugar) is critical.`
  String get diabeticsIntro {
    return Intl.message(
      'Recognizing and managing diabetic emergencies such as hypoglycemia (low blood sugar) is critical.',
      name: 'diabeticsIntro',
      desc: '',
      args: [],
    );
  }

  /// `Signs of Low Blood Sugar (Hypoglycemia):`
  String get diabeticsSignsTitle {
    return Intl.message(
      'Signs of Low Blood Sugar (Hypoglycemia):',
      name: 'diabeticsSignsTitle',
      desc: '',
      args: [],
    );
  }

  /// `- Shakiness, sweating, confusion, dizziness, irritability, headache`
  String get diabeticsSignsList {
    return Intl.message(
      '- Shakiness, sweating, confusion, dizziness, irritability, headache',
      name: 'diabeticsSignsList',
      desc: '',
      args: [],
    );
  }

  /// `First Aid Steps:`
  String get diabeticsStepsTitle {
    return Intl.message(
      'First Aid Steps:',
      name: 'diabeticsStepsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Check Responsiveness`
  String get diabeticsStep1Title {
    return Intl.message(
      'Check Responsiveness',
      name: 'diabeticsStep1Title',
      desc: '',
      args: [],
    );
  }

  /// `If the person is conscious, ask if they have diabetes.`
  String get diabeticsStep1Desc {
    return Intl.message(
      'If the person is conscious, ask if they have diabetes.',
      name: 'diabeticsStep1Desc',
      desc: '',
      args: [],
    );
  }

  /// `Give Sugar`
  String get diabeticsStep2Title {
    return Intl.message(
      'Give Sugar',
      name: 'diabeticsStep2Title',
      desc: '',
      args: [],
    );
  }

  /// `Give 15-20 grams of fast-acting sugar (fruit juice, glucose tablets, candy).`
  String get diabeticsStep2Desc {
    return Intl.message(
      'Give 15-20 grams of fast-acting sugar (fruit juice, glucose tablets, candy).',
      name: 'diabeticsStep2Desc',
      desc: '',
      args: [],
    );
  }

  /// `Wait and Monitor`
  String get diabeticsStep3Title {
    return Intl.message(
      'Wait and Monitor',
      name: 'diabeticsStep3Title',
      desc: '',
      args: [],
    );
  }

  /// `Wait 15 minutes, then recheck symptoms. Repeat sugar intake if needed.`
  String get diabeticsStep3Desc {
    return Intl.message(
      'Wait 15 minutes, then recheck symptoms. Repeat sugar intake if needed.',
      name: 'diabeticsStep3Desc',
      desc: '',
      args: [],
    );
  }

  /// `Call Emergency Services`
  String get diabeticsStep4Title {
    return Intl.message(
      'Call Emergency Services',
      name: 'diabeticsStep4Title',
      desc: '',
      args: [],
    );
  }

  /// `If the person loses consciousness, becomes confused, or symptoms worsen, call for help immediately.`
  String get diabeticsStep4Desc {
    return Intl.message(
      'If the person loses consciousness, becomes confused, or symptoms worsen, call for help immediately.',
      name: 'diabeticsStep4Desc',
      desc: '',
      args: [],
    );
  }

  /// `Important Notes:`
  String get diabeticsNotesTitle {
    return Intl.message(
      'Important Notes:',
      name: 'diabeticsNotesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Do NOT give food or drink if the person is unconscious.`
  String get diabeticsNote1 {
    return Intl.message(
      'Do NOT give food or drink if the person is unconscious.',
      name: 'diabeticsNote1',
      desc: '',
      args: [],
    );
  }

  /// `If unconscious, place in recovery position and call emergency services.`
  String get diabeticsNote2 {
    return Intl.message(
      'If unconscious, place in recovery position and call emergency services.',
      name: 'diabeticsNote2',
      desc: '',
      args: [],
    );
  }

  /// `Drug Overdose`
  String get drugOverdoseTitle {
    return Intl.message(
      'Drug Overdose',
      name: 'drugOverdoseTitle',
      desc: '',
      args: [],
    );
  }

  /// `Drug Overdose First Aid`
  String get drugOverdoseMainHeading {
    return Intl.message(
      'Drug Overdose First Aid',
      name: 'drugOverdoseMainHeading',
      desc: '',
      args: [],
    );
  }

  /// `Recognize the signs of overdose and provide immediate help.`
  String get drugOverdoseIntro {
    return Intl.message(
      'Recognize the signs of overdose and provide immediate help.',
      name: 'drugOverdoseIntro',
      desc: '',
      args: [],
    );
  }

  /// `Signs of Drug Overdose:`
  String get drugOverdoseSignsHeading {
    return Intl.message(
      'Signs of Drug Overdose:',
      name: 'drugOverdoseSignsHeading',
      desc: '',
      args: [],
    );
  }

  /// `- Unresponsiveness or unconsciousness`
  String get drugOverdoseSigns1 {
    return Intl.message(
      '- Unresponsiveness or unconsciousness',
      name: 'drugOverdoseSigns1',
      desc: '',
      args: [],
    );
  }

  /// `- Difficulty breathing or slow breathing`
  String get drugOverdoseSigns2 {
    return Intl.message(
      '- Difficulty breathing or slow breathing',
      name: 'drugOverdoseSigns2',
      desc: '',
      args: [],
    );
  }

  /// `- Seizures or convulsions`
  String get drugOverdoseSigns3 {
    return Intl.message(
      '- Seizures or convulsions',
      name: 'drugOverdoseSigns3',
      desc: '',
      args: [],
    );
  }

  /// `- Vomiting, pale or clammy skin`
  String get drugOverdoseSigns4 {
    return Intl.message(
      '- Vomiting, pale or clammy skin',
      name: 'drugOverdoseSigns4',
      desc: '',
      args: [],
    );
  }

  /// `First Aid Steps:`
  String get drugOverdoseStepsHeading {
    return Intl.message(
      'First Aid Steps:',
      name: 'drugOverdoseStepsHeading',
      desc: '',
      args: [],
    );
  }

  /// `Call Emergency Services`
  String get drugOverdoseStep1Title {
    return Intl.message(
      'Call Emergency Services',
      name: 'drugOverdoseStep1Title',
      desc: '',
      args: [],
    );
  }

  /// `Immediately call for professional medical help.`
  String get drugOverdoseStep1Desc {
    return Intl.message(
      'Immediately call for professional medical help.',
      name: 'drugOverdoseStep1Desc',
      desc: '',
      args: [],
    );
  }

  /// `Ensure Safety`
  String get drugOverdoseStep2Title {
    return Intl.message(
      'Ensure Safety',
      name: 'drugOverdoseStep2Title',
      desc: '',
      args: [],
    );
  }

  /// `Make sure the person and yourself are safe from harm.`
  String get drugOverdoseStep2Desc {
    return Intl.message(
      'Make sure the person and yourself are safe from harm.',
      name: 'drugOverdoseStep2Desc',
      desc: '',
      args: [],
    );
  }

  /// `Check Responsiveness and Breathing`
  String get drugOverdoseStep3Title {
    return Intl.message(
      'Check Responsiveness and Breathing',
      name: 'drugOverdoseStep3Title',
      desc: '',
      args: [],
    );
  }

  /// `If unresponsive, check if they are breathing.`
  String get drugOverdoseStep3Desc {
    return Intl.message(
      'If unresponsive, check if they are breathing.',
      name: 'drugOverdoseStep3Desc',
      desc: '',
      args: [],
    );
  }

  /// `Perform CPR if Needed`
  String get drugOverdoseStep4Title {
    return Intl.message(
      'Perform CPR if Needed',
      name: 'drugOverdoseStep4Title',
      desc: '',
      args: [],
    );
  }

  /// `If no breathing or pulse, start CPR until help arrives.`
  String get drugOverdoseStep4Desc {
    return Intl.message(
      'If no breathing or pulse, start CPR until help arrives.',
      name: 'drugOverdoseStep4Desc',
      desc: '',
      args: [],
    );
  }

  /// `Place in Recovery Position`
  String get drugOverdoseStep5Title {
    return Intl.message(
      'Place in Recovery Position',
      name: 'drugOverdoseStep5Title',
      desc: '',
      args: [],
    );
  }

  /// `If breathing but unconscious, place on their side to keep airway clear.`
  String get drugOverdoseStep5Desc {
    return Intl.message(
      'If breathing but unconscious, place on their side to keep airway clear.',
      name: 'drugOverdoseStep5Desc',
      desc: '',
      args: [],
    );
  }

  /// `Important Notes:`
  String get drugOverdoseImportantNotes {
    return Intl.message(
      'Important Notes:',
      name: 'drugOverdoseImportantNotes',
      desc: '',
      args: [],
    );
  }

  /// `Do NOT induce vomiting unless instructed by a medical professional.`
  String get drugOverdoseNote1 {
    return Intl.message(
      'Do NOT induce vomiting unless instructed by a medical professional.',
      name: 'drugOverdoseNote1',
      desc: '',
      args: [],
    );
  }

  /// `Try to identify the substance involved to inform emergency responders.`
  String get drugOverdoseNote2 {
    return Intl.message(
      'Try to identify the substance involved to inform emergency responders.',
      name: 'drugOverdoseNote2',
      desc: '',
      args: [],
    );
  }

  /// `Eye Injury`
  String get eyeInjuryTitle {
    return Intl.message(
      'Eye Injury',
      name: 'eyeInjuryTitle',
      desc: '',
      args: [],
    );
  }

  /// `Eye Injury First Aid`
  String get eyeInjuryHeading {
    return Intl.message(
      'Eye Injury First Aid',
      name: 'eyeInjuryHeading',
      desc: '',
      args: [],
    );
  }

  /// `Proper first aid for eye injuries can prevent further damage.`
  String get eyeInjuryIntro {
    return Intl.message(
      'Proper first aid for eye injuries can prevent further damage.',
      name: 'eyeInjuryIntro',
      desc: '',
      args: [],
    );
  }

  /// `Types of Eye Injuries:`
  String get eyeInjuryTypesHeading {
    return Intl.message(
      'Types of Eye Injuries:',
      name: 'eyeInjuryTypesHeading',
      desc: '',
      args: [],
    );
  }

  /// `- Foreign objects in the eye`
  String get eyeInjuryType1 {
    return Intl.message(
      '- Foreign objects in the eye',
      name: 'eyeInjuryType1',
      desc: '',
      args: [],
    );
  }

  /// `- Chemical splashes`
  String get eyeInjuryType2 {
    return Intl.message(
      '- Chemical splashes',
      name: 'eyeInjuryType2',
      desc: '',
      args: [],
    );
  }

  /// `- Cuts or punctures`
  String get eyeInjuryType3 {
    return Intl.message(
      '- Cuts or punctures',
      name: 'eyeInjuryType3',
      desc: '',
      args: [],
    );
  }

  /// `First Aid Steps:`
  String get eyeInjuryStepsHeading {
    return Intl.message(
      'First Aid Steps:',
      name: 'eyeInjuryStepsHeading',
      desc: '',
      args: [],
    );
  }

  /// `Do NOT Rub the Eye`
  String get eyeInjuryStep1Title {
    return Intl.message(
      'Do NOT Rub the Eye',
      name: 'eyeInjuryStep1Title',
      desc: '',
      args: [],
    );
  }

  /// `Rubbing can cause further damage.`
  String get eyeInjuryStep1Desc {
    return Intl.message(
      'Rubbing can cause further damage.',
      name: 'eyeInjuryStep1Desc',
      desc: '',
      args: [],
    );
  }

  /// `Flush with Clean Water`
  String get eyeInjuryStep2Title {
    return Intl.message(
      'Flush with Clean Water',
      name: 'eyeInjuryStep2Title',
      desc: '',
      args: [],
    );
  }

  /// `If chemicals or foreign particles are present, rinse eye gently with water for at least 15 minutes.`
  String get eyeInjuryStep2Desc {
    return Intl.message(
      'If chemicals or foreign particles are present, rinse eye gently with water for at least 15 minutes.',
      name: 'eyeInjuryStep2Desc',
      desc: '',
      args: [],
    );
  }

  /// `Cover the Eye`
  String get eyeInjuryStep3Title {
    return Intl.message(
      'Cover the Eye',
      name: 'eyeInjuryStep3Title',
      desc: '',
      args: [],
    );
  }

  /// `Use a clean cloth or eye shield to protect the injured eye without applying pressure.`
  String get eyeInjuryStep3Desc {
    return Intl.message(
      'Use a clean cloth or eye shield to protect the injured eye without applying pressure.',
      name: 'eyeInjuryStep3Desc',
      desc: '',
      args: [],
    );
  }

  /// `Seek Medical Attention`
  String get eyeInjuryStep4Title {
    return Intl.message(
      'Seek Medical Attention',
      name: 'eyeInjuryStep4Title',
      desc: '',
      args: [],
    );
  }

  /// `For serious injuries or if pain persists, go to emergency care immediately.`
  String get eyeInjuryStep4Desc {
    return Intl.message(
      'For serious injuries or if pain persists, go to emergency care immediately.',
      name: 'eyeInjuryStep4Desc',
      desc: '',
      args: [],
    );
  }

  /// `Important Notes:`
  String get eyeInjuryNotesHeading {
    return Intl.message(
      'Important Notes:',
      name: 'eyeInjuryNotesHeading',
      desc: '',
      args: [],
    );
  }

  /// `Do not try to remove embedded objects.`
  String get eyeInjuryNote1 {
    return Intl.message(
      'Do not try to remove embedded objects.',
      name: 'eyeInjuryNote1',
      desc: '',
      args: [],
    );
  }

  /// `Avoid using any medication or ointment unless prescribed.`
  String get eyeInjuryNote2 {
    return Intl.message(
      'Avoid using any medication or ointment unless prescribed.',
      name: 'eyeInjuryNote2',
      desc: '',
      args: [],
    );
  }

  /// `Fractures`
  String get title {
    return Intl.message('Fractures', name: 'title', desc: '', args: []);
  }

  /// `Fractures First Aid`
  String get heading {
    return Intl.message(
      'Fractures First Aid',
      name: 'heading',
      desc: '',
      args: [],
    );
  }

  /// `A fracture is a broken bone. Proper first aid can prevent complications.`
  String get intro {
    return Intl.message(
      'A fracture is a broken bone. Proper first aid can prevent complications.',
      name: 'intro',
      desc: '',
      args: [],
    );
  }

  /// `Signs of a Fracture:`
  String get signsHeading {
    return Intl.message(
      'Signs of a Fracture:',
      name: 'signsHeading',
      desc: '',
      args: [],
    );
  }

  /// `- Pain and tenderness`
  String get sign1 {
    return Intl.message(
      '- Pain and tenderness',
      name: 'sign1',
      desc: '',
      args: [],
    );
  }

  /// `- Swelling or bruising`
  String get sign2 {
    return Intl.message(
      '- Swelling or bruising',
      name: 'sign2',
      desc: '',
      args: [],
    );
  }

  /// `- Deformity or unnatural positioning`
  String get sign3 {
    return Intl.message(
      '- Deformity or unnatural positioning',
      name: 'sign3',
      desc: '',
      args: [],
    );
  }

  /// `- Difficulty moving the limb`
  String get sign4 {
    return Intl.message(
      '- Difficulty moving the limb',
      name: 'sign4',
      desc: '',
      args: [],
    );
  }

  /// `First Aid Steps:`
  String get stepsHeading {
    return Intl.message(
      'First Aid Steps:',
      name: 'stepsHeading',
      desc: '',
      args: [],
    );
  }

  /// `Immobilize the Area`
  String get step1Title {
    return Intl.message(
      'Immobilize the Area',
      name: 'step1Title',
      desc: '',
      args: [],
    );
  }

  /// `Keep the injured area still and avoid movement.`
  String get step1Desc {
    return Intl.message(
      'Keep the injured area still and avoid movement.',
      name: 'step1Desc',
      desc: '',
      args: [],
    );
  }

  /// `Apply a Splint`
  String get step2Title {
    return Intl.message(
      'Apply a Splint',
      name: 'step2Title',
      desc: '',
      args: [],
    );
  }

  /// `Use a padded splint to support the injury without forcing it into place.`
  String get step2Desc {
    return Intl.message(
      'Use a padded splint to support the injury without forcing it into place.',
      name: 'step2Desc',
      desc: '',
      args: [],
    );
  }

  /// `Apply Cold Compress`
  String get step3Title {
    return Intl.message(
      'Apply Cold Compress',
      name: 'step3Title',
      desc: '',
      args: [],
    );
  }

  /// `Reduce swelling with ice wrapped in cloth (avoid direct contact with skin).`
  String get step3Desc {
    return Intl.message(
      'Reduce swelling with ice wrapped in cloth (avoid direct contact with skin).',
      name: 'step3Desc',
      desc: '',
      args: [],
    );
  }

  /// `Seek Medical Help`
  String get step4Title {
    return Intl.message(
      'Seek Medical Help',
      name: 'step4Title',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services or take the person to hospital promptly.`
  String get step4Desc {
    return Intl.message(
      'Call emergency services or take the person to hospital promptly.',
      name: 'step4Desc',
      desc: '',
      args: [],
    );
  }

  /// `Important Notes:`
  String get notesHeading {
    return Intl.message(
      'Important Notes:',
      name: 'notesHeading',
      desc: '',
      args: [],
    );
  }

  /// `Do NOT try to realign the bone or push it back in place.`
  String get note1 {
    return Intl.message(
      'Do NOT try to realign the bone or push it back in place.',
      name: 'note1',
      desc: '',
      args: [],
    );
  }

  /// `If bleeding, apply pressure around the wound (not directly on the bone).`
  String get note2 {
    return Intl.message(
      'If bleeding, apply pressure around the wound (not directly on the bone).',
      name: 'note2',
      desc: '',
      args: [],
    );
  }

  /// `Head Injury`
  String get headInjuryTitle {
    return Intl.message(
      'Head Injury',
      name: 'headInjuryTitle',
      desc: '',
      args: [],
    );
  }

  /// `Head Injury First Aid`
  String get headInjuryHeading {
    return Intl.message(
      'Head Injury First Aid',
      name: 'headInjuryHeading',
      desc: '',
      args: [],
    );
  }

  /// `Providing first aid for head injuries is crucial to prevent further damage and complications.`
  String get headInjuryIntro {
    return Intl.message(
      'Providing first aid for head injuries is crucial to prevent further damage and complications.',
      name: 'headInjuryIntro',
      desc: '',
      args: [],
    );
  }

  /// `First Aid Steps:`
  String get headInjuryStepsHeading {
    return Intl.message(
      'First Aid Steps:',
      name: 'headInjuryStepsHeading',
      desc: '',
      args: [],
    );
  }

  /// `Keep the person still and calm.`
  String get headInjuryStep1Title {
    return Intl.message(
      'Keep the person still and calm.',
      name: 'headInjuryStep1Title',
      desc: '',
      args: [],
    );
  }

  /// `Avoid moving the head or neck to prevent spinal injury.`
  String get headInjuryStep1Desc {
    return Intl.message(
      'Avoid moving the head or neck to prevent spinal injury.',
      name: 'headInjuryStep1Desc',
      desc: '',
      args: [],
    );
  }

  /// `Check for any bleeding or wounds on the head.`
  String get headInjuryStep2Title {
    return Intl.message(
      'Check for any bleeding or wounds on the head.',
      name: 'headInjuryStep2Title',
      desc: '',
      args: [],
    );
  }

  /// `Apply gentle pressure with a clean cloth if bleeding is present.`
  String get headInjuryStep2Desc {
    return Intl.message(
      'Apply gentle pressure with a clean cloth if bleeding is present.',
      name: 'headInjuryStep2Desc',
      desc: '',
      args: [],
    );
  }

  /// `If the person is unconscious, ensure the airway is clear.`
  String get headInjuryStep3Title {
    return Intl.message(
      'If the person is unconscious, ensure the airway is clear.',
      name: 'headInjuryStep3Title',
      desc: '',
      args: [],
    );
  }

  /// `If vomiting occurs, turn the person onto their side to prevent choking.`
  String get headInjuryStep4Title {
    return Intl.message(
      'If vomiting occurs, turn the person onto their side to prevent choking.',
      name: 'headInjuryStep4Title',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services immediately.`
  String get headInjuryStep5Title {
    return Intl.message(
      'Call emergency services immediately.',
      name: 'headInjuryStep5Title',
      desc: '',
      args: [],
    );
  }

  /// `Important Notes:`
  String get headInjuryNotesHeading {
    return Intl.message(
      'Important Notes:',
      name: 'headInjuryNotesHeading',
      desc: '',
      args: [],
    );
  }

  /// `Do not give the person food or drink.`
  String get headInjuryNote1 {
    return Intl.message(
      'Do not give the person food or drink.',
      name: 'headInjuryNote1',
      desc: '',
      args: [],
    );
  }

  /// `Avoid applying ice or cold packs without medical advice.`
  String get headInjuryNote2 {
    return Intl.message(
      'Avoid applying ice or cold packs without medical advice.',
      name: 'headInjuryNote2',
      desc: '',
      args: [],
    );
  }

  /// `Heart Conditions`
  String get heartConditionTitle {
    return Intl.message(
      'Heart Conditions',
      name: 'heartConditionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Heart Conditions First Aid`
  String get heartConditionHeading {
    return Intl.message(
      'Heart Conditions First Aid',
      name: 'heartConditionHeading',
      desc: '',
      args: [],
    );
  }

  /// `Immediate aid for heart conditions can save lives. Recognize symptoms and act quickly.`
  String get heartConditionIntro {
    return Intl.message(
      'Immediate aid for heart conditions can save lives. Recognize symptoms and act quickly.',
      name: 'heartConditionIntro',
      desc: '',
      args: [],
    );
  }

  /// `First Aid Steps:`
  String get heartConditionStepsHeading {
    return Intl.message(
      'First Aid Steps:',
      name: 'heartConditionStepsHeading',
      desc: '',
      args: [],
    );
  }

  /// `Important Notes:`
  String get heartConditionNotesHeading {
    return Intl.message(
      'Important Notes:',
      name: 'heartConditionNotesHeading',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services immediately.`
  String get heartConditionStep1 {
    return Intl.message(
      'Call emergency services immediately.',
      name: 'heartConditionStep1',
      desc: '',
      args: [],
    );
  }

  /// `Help the person to rest in a comfortable position.`
  String get heartConditionStep2 {
    return Intl.message(
      'Help the person to rest in a comfortable position.',
      name: 'heartConditionStep2',
      desc: '',
      args: [],
    );
  }

  /// `Loosen any tight clothing.`
  String get heartConditionStep3 {
    return Intl.message(
      'Loosen any tight clothing.',
      name: 'heartConditionStep3',
      desc: '',
      args: [],
    );
  }

  /// `If the person is unconscious but breathing, place them in the recovery position.`
  String get heartConditionStep4 {
    return Intl.message(
      'If the person is unconscious but breathing, place them in the recovery position.',
      name: 'heartConditionStep4',
      desc: '',
      args: [],
    );
  }

  /// `If trained and the person is not breathing, start CPR immediately.`
  String get heartConditionStep5 {
    return Intl.message(
      'If trained and the person is not breathing, start CPR immediately.',
      name: 'heartConditionStep5',
      desc: '',
      args: [],
    );
  }

  /// `Do not give the person any medication unless prescribed.`
  String get heartConditionNote1 {
    return Intl.message(
      'Do not give the person any medication unless prescribed.',
      name: 'heartConditionNote1',
      desc: '',
      args: [],
    );
  }

  /// `Stay calm and provide reassurance.`
  String get heartConditionNote2 {
    return Intl.message(
      'Stay calm and provide reassurance.',
      name: 'heartConditionNote2',
      desc: '',
      args: [],
    );
  }

  /// `Added to saved topics`
  String get addedToSavedTopicsText {
    return Intl.message(
      'Added to saved topics',
      name: 'addedToSavedTopicsText',
      desc: '',
      args: [],
    );
  }

  /// `Removed from saved topics`
  String get removedFromSavedTopicsText {
    return Intl.message(
      'Removed from saved topics',
      name: 'removedFromSavedTopicsText',
      desc: '',
      args: [],
    );
  }

  /// `Poisons`
  String get poisonTitle {
    return Intl.message('Poisons', name: 'poisonTitle', desc: '', args: []);
  }

  /// `Poisoning First Aid`
  String get poisonHeading {
    return Intl.message(
      'Poisoning First Aid',
      name: 'poisonHeading',
      desc: '',
      args: [],
    );
  }

  /// `Immediate actions to take in case of poisoning.`
  String get poisonIntro {
    return Intl.message(
      'Immediate actions to take in case of poisoning.',
      name: 'poisonIntro',
      desc: '',
      args: [],
    );
  }

  /// `First Aid Steps:`
  String get poisonStepsHeading {
    return Intl.message(
      'First Aid Steps:',
      name: 'poisonStepsHeading',
      desc: '',
      args: [],
    );
  }

  /// `Important Notes:`
  String get poisonNotesHeading {
    return Intl.message(
      'Important Notes:',
      name: 'poisonNotesHeading',
      desc: '',
      args: [],
    );
  }

  /// `Remove the person from the source of poison if safe to do so.`
  String get poisonStep1 {
    return Intl.message(
      'Remove the person from the source of poison if safe to do so.',
      name: 'poisonStep1',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services immediately or a poison control center.`
  String get poisonStep2 {
    return Intl.message(
      'Call emergency services immediately or a poison control center.',
      name: 'poisonStep2',
      desc: '',
      args: [],
    );
  }

  /// `Check the person’s airway, breathing, and circulation.`
  String get poisonStep3 {
    return Intl.message(
      'Check the person’s airway, breathing, and circulation.',
      name: 'poisonStep3',
      desc: '',
      args: [],
    );
  }

  /// `If the person is unconscious and not breathing, begin CPR.`
  String get poisonStep4 {
    return Intl.message(
      'If the person is unconscious and not breathing, begin CPR.',
      name: 'poisonStep4',
      desc: '',
      args: [],
    );
  }

  /// `Do not induce vomiting unless instructed by a medical professional.`
  String get poisonStep5 {
    return Intl.message(
      'Do not induce vomiting unless instructed by a medical professional.',
      name: 'poisonStep5',
      desc: '',
      args: [],
    );
  }

  /// `Try to identify the poison and keep the container or sample for medical staff.`
  String get poisonNote1 {
    return Intl.message(
      'Try to identify the poison and keep the container or sample for medical staff.',
      name: 'poisonNote1',
      desc: '',
      args: [],
    );
  }

  /// `Avoid giving food, drinks, or medications without medical advice.`
  String get poisonNote2 {
    return Intl.message(
      'Avoid giving food, drinks, or medications without medical advice.',
      name: 'poisonNote2',
      desc: '',
      args: [],
    );
  }

  /// `Recovery Position`
  String get recoveryPositionTitle {
    return Intl.message(
      'Recovery Position',
      name: 'recoveryPositionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Recovery Position`
  String get recoveryPositionHeading {
    return Intl.message(
      'Recovery Position',
      name: 'recoveryPositionHeading',
      desc: '',
      args: [],
    );
  }

  /// `The recovery position helps keep the airway clear and open. It also ensures that any fluids can drain from the mouth and prevents choking.`
  String get recoveryPositionIntro {
    return Intl.message(
      'The recovery position helps keep the airway clear and open. It also ensures that any fluids can drain from the mouth and prevents choking.',
      name: 'recoveryPositionIntro',
      desc: '',
      args: [],
    );
  }

  /// `Steps to place someone in the recovery position:`
  String get recoveryPositionStepsHeading {
    return Intl.message(
      'Steps to place someone in the recovery position:',
      name: 'recoveryPositionStepsHeading',
      desc: '',
      args: [],
    );
  }

  /// `Important:`
  String get recoveryPositionImportantHeading {
    return Intl.message(
      'Important:',
      name: 'recoveryPositionImportantHeading',
      desc: '',
      args: [],
    );
  }

  /// `Kneel beside the person.`
  String get recoveryPositionStep1 {
    return Intl.message(
      'Kneel beside the person.',
      name: 'recoveryPositionStep1',
      desc: '',
      args: [],
    );
  }

  /// `Place the arm nearest to you at a right angle to their body, with the elbow bent and the palm facing upwards.`
  String get recoveryPositionStep2 {
    return Intl.message(
      'Place the arm nearest to you at a right angle to their body, with the elbow bent and the palm facing upwards.',
      name: 'recoveryPositionStep2',
      desc: '',
      args: [],
    );
  }

  /// `Bring their far arm across the chest and hold the back of their hand against their cheek closest to you.`
  String get recoveryPositionStep3 {
    return Intl.message(
      'Bring their far arm across the chest and hold the back of their hand against their cheek closest to you.',
      name: 'recoveryPositionStep3',
      desc: '',
      args: [],
    );
  }

  /// `Bend the far knee up to a right angle.`
  String get recoveryPositionStep4 {
    return Intl.message(
      'Bend the far knee up to a right angle.',
      name: 'recoveryPositionStep4',
      desc: '',
      args: [],
    );
  }

  /// `Carefully roll the person onto their side by pulling on the bent knee.`
  String get recoveryPositionStep5 {
    return Intl.message(
      'Carefully roll the person onto their side by pulling on the bent knee.',
      name: 'recoveryPositionStep5',
      desc: '',
      args: [],
    );
  }

  /// `Adjust the top leg so that both the hip and knee are bent at right angles.`
  String get recoveryPositionStep6 {
    return Intl.message(
      'Adjust the top leg so that both the hip and knee are bent at right angles.',
      name: 'recoveryPositionStep6',
      desc: '',
      args: [],
    );
  }

  /// `Tilt the head back slightly to keep the airway open.`
  String get recoveryPositionStep7 {
    return Intl.message(
      'Tilt the head back slightly to keep the airway open.',
      name: 'recoveryPositionStep7',
      desc: '',
      args: [],
    );
  }

  /// `Make sure their mouth is open to allow any fluids to drain.`
  String get recoveryPositionStep8 {
    return Intl.message(
      'Make sure their mouth is open to allow any fluids to drain.',
      name: 'recoveryPositionStep8',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services if the person is unconscious.`
  String get recoveryPositionNote1 {
    return Intl.message(
      'Call emergency services if the person is unconscious.',
      name: 'recoveryPositionNote1',
      desc: '',
      args: [],
    );
  }

  /// `Stay with the person until help arrives.`
  String get recoveryPositionNote2 {
    return Intl.message(
      'Stay with the person until help arrives.',
      name: 'recoveryPositionNote2',
      desc: '',
      args: [],
    );
  }

  /// `Check breathing regularly.`
  String get recoveryPositionNote3 {
    return Intl.message(
      'Check breathing regularly.',
      name: 'recoveryPositionNote3',
      desc: '',
      args: [],
    );
  }

  /// `Seizures`
  String get seizuresTitle {
    return Intl.message('Seizures', name: 'seizuresTitle', desc: '', args: []);
  }

  /// `Seizures`
  String get seizuresHeading {
    return Intl.message(
      'Seizures',
      name: 'seizuresHeading',
      desc: '',
      args: [],
    );
  }

  /// `A seizure is a sudden, uncontrolled electrical disturbance in the brain. It can cause changes in behavior, movements, or consciousness.`
  String get seizuresIntro {
    return Intl.message(
      'A seizure is a sudden, uncontrolled electrical disturbance in the brain. It can cause changes in behavior, movements, or consciousness.',
      name: 'seizuresIntro',
      desc: '',
      args: [],
    );
  }

  /// `First Aid for Seizures:`
  String get seizuresFirstAidHeading {
    return Intl.message(
      'First Aid for Seizures:',
      name: 'seizuresFirstAidHeading',
      desc: '',
      args: [],
    );
  }

  /// `Important:`
  String get seizuresImportantHeading {
    return Intl.message(
      'Important:',
      name: 'seizuresImportantHeading',
      desc: '',
      args: [],
    );
  }

  /// `Stay calm and keep others away from the person to avoid injury.`
  String get seizuresStep1 {
    return Intl.message(
      'Stay calm and keep others away from the person to avoid injury.',
      name: 'seizuresStep1',
      desc: '',
      args: [],
    );
  }

  /// `Protect their head by placing something soft underneath.`
  String get seizuresStep2 {
    return Intl.message(
      'Protect their head by placing something soft underneath.',
      name: 'seizuresStep2',
      desc: '',
      args: [],
    );
  }

  /// `Turn the person onto their side to keep the airway clear.`
  String get seizuresStep3 {
    return Intl.message(
      'Turn the person onto their side to keep the airway clear.',
      name: 'seizuresStep3',
      desc: '',
      args: [],
    );
  }

  /// `Do not restrain their movements or put anything in their mouth.`
  String get seizuresStep4 {
    return Intl.message(
      'Do not restrain their movements or put anything in their mouth.',
      name: 'seizuresStep4',
      desc: '',
      args: [],
    );
  }

  /// `Time the seizure. If it lasts longer than 5 minutes, call emergency services.`
  String get seizuresStep5 {
    return Intl.message(
      'Time the seizure. If it lasts longer than 5 minutes, call emergency services.',
      name: 'seizuresStep5',
      desc: '',
      args: [],
    );
  }

  /// `After the seizure, comfort and reassure the person as they regain consciousness.`
  String get seizuresStep6 {
    return Intl.message(
      'After the seizure, comfort and reassure the person as they regain consciousness.',
      name: 'seizuresStep6',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services if this is the person’s first seizure.`
  String get seizuresNote1 {
    return Intl.message(
      'Call emergency services if this is the person’s first seizure.',
      name: 'seizuresNote1',
      desc: '',
      args: [],
    );
  }

  /// `Seek medical help if the person has trouble breathing or does not wake up after the seizure.`
  String get seizuresNote2 {
    return Intl.message(
      'Seek medical help if the person has trouble breathing or does not wake up after the seizure.',
      name: 'seizuresNote2',
      desc: '',
      args: [],
    );
  }

  /// `Shock`
  String get shockTitle {
    return Intl.message('Shock', name: 'shockTitle', desc: '', args: []);
  }

  /// `Shock`
  String get shockHeading {
    return Intl.message('Shock', name: 'shockHeading', desc: '', args: []);
  }

  /// `Shock is a life-threatening condition that occurs when the body is not getting enough blood flow, leading to organ failure.`
  String get shockIntro {
    return Intl.message(
      'Shock is a life-threatening condition that occurs when the body is not getting enough blood flow, leading to organ failure.',
      name: 'shockIntro',
      desc: '',
      args: [],
    );
  }

  /// `Signs of Shock:`
  String get shockSignsHeading {
    return Intl.message(
      'Signs of Shock:',
      name: 'shockSignsHeading',
      desc: '',
      args: [],
    );
  }

  /// `First Aid for Shock:`
  String get shockFirstAidHeading {
    return Intl.message(
      'First Aid for Shock:',
      name: 'shockFirstAidHeading',
      desc: '',
      args: [],
    );
  }

  /// `Pale, cold, clammy skin`
  String get shockSign1 {
    return Intl.message(
      'Pale, cold, clammy skin',
      name: 'shockSign1',
      desc: '',
      args: [],
    );
  }

  /// `Rapid, weak pulse`
  String get shockSign2 {
    return Intl.message(
      'Rapid, weak pulse',
      name: 'shockSign2',
      desc: '',
      args: [],
    );
  }

  /// `Shallow breathing`
  String get shockSign3 {
    return Intl.message(
      'Shallow breathing',
      name: 'shockSign3',
      desc: '',
      args: [],
    );
  }

  /// `Confusion or loss of consciousness`
  String get shockSign4 {
    return Intl.message(
      'Confusion or loss of consciousness',
      name: 'shockSign4',
      desc: '',
      args: [],
    );
  }

  /// `Nausea or vomiting`
  String get shockSign5 {
    return Intl.message(
      'Nausea or vomiting',
      name: 'shockSign5',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services immediately.`
  String get shockStep1 {
    return Intl.message(
      'Call emergency services immediately.',
      name: 'shockStep1',
      desc: '',
      args: [],
    );
  }

  /// `Lay the person down on their back.`
  String get shockStep2 {
    return Intl.message(
      'Lay the person down on their back.',
      name: 'shockStep2',
      desc: '',
      args: [],
    );
  }

  /// `Elevate the legs about 12 inches unless there is an injury that prevents this.`
  String get shockStep3 {
    return Intl.message(
      'Elevate the legs about 12 inches unless there is an injury that prevents this.',
      name: 'shockStep3',
      desc: '',
      args: [],
    );
  }

  /// `Keep the person warm and comfortable.`
  String get shockStep4 {
    return Intl.message(
      'Keep the person warm and comfortable.',
      name: 'shockStep4',
      desc: '',
      args: [],
    );
  }

  /// `Do not give the person anything to eat or drink.`
  String get shockStep5 {
    return Intl.message(
      'Do not give the person anything to eat or drink.',
      name: 'shockStep5',
      desc: '',
      args: [],
    );
  }

  /// `Monitor breathing and be prepared to perform CPR if necessary.`
  String get shockStep6 {
    return Intl.message(
      'Monitor breathing and be prepared to perform CPR if necessary.',
      name: 'shockStep6',
      desc: '',
      args: [],
    );
  }

  /// `Spinal Injury`
  String get spinalTitle {
    return Intl.message(
      'Spinal Injury',
      name: 'spinalTitle',
      desc: '',
      args: [],
    );
  }

  /// `A spinal injury involves damage to the spinal cord or bones of the spine, potentially leading to paralysis or loss of sensation.`
  String get spinalIntro {
    return Intl.message(
      'A spinal injury involves damage to the spinal cord or bones of the spine, potentially leading to paralysis or loss of sensation.',
      name: 'spinalIntro',
      desc: '',
      args: [],
    );
  }

  /// `Signs of Spinal Injury:`
  String get spinalSignsHeading {
    return Intl.message(
      'Signs of Spinal Injury:',
      name: 'spinalSignsHeading',
      desc: '',
      args: [],
    );
  }

  /// `Severe pain or pressure in neck or back`
  String get spinalSign1 {
    return Intl.message(
      'Severe pain or pressure in neck or back',
      name: 'spinalSign1',
      desc: '',
      args: [],
    );
  }

  /// `Weakness, paralysis, or loss of sensation in limbs`
  String get spinalSign2 {
    return Intl.message(
      'Weakness, paralysis, or loss of sensation in limbs',
      name: 'spinalSign2',
      desc: '',
      args: [],
    );
  }

  /// `Loss of bladder or bowel control`
  String get spinalSign3 {
    return Intl.message(
      'Loss of bladder or bowel control',
      name: 'spinalSign3',
      desc: '',
      args: [],
    );
  }

  /// `Unusual positioning of head or neck`
  String get spinalSign4 {
    return Intl.message(
      'Unusual positioning of head or neck',
      name: 'spinalSign4',
      desc: '',
      args: [],
    );
  }

  /// `Difficulty breathing`
  String get spinalSign5 {
    return Intl.message(
      'Difficulty breathing',
      name: 'spinalSign5',
      desc: '',
      args: [],
    );
  }

  /// `First Aid for Spinal Injury:`
  String get spinalFirstAidHeading {
    return Intl.message(
      'First Aid for Spinal Injury:',
      name: 'spinalFirstAidHeading',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services immediately.`
  String get spinalStep1 {
    return Intl.message(
      'Call emergency services immediately.',
      name: 'spinalStep1',
      desc: '',
      args: [],
    );
  }

  /// `Do not move the injured person unless absolutely necessary.`
  String get spinalStep2 {
    return Intl.message(
      'Do not move the injured person unless absolutely necessary.',
      name: 'spinalStep2',
      desc: '',
      args: [],
    );
  }

  /// `If movement is necessary, stabilize the head and neck to prevent further injury.`
  String get spinalStep3 {
    return Intl.message(
      'If movement is necessary, stabilize the head and neck to prevent further injury.',
      name: 'spinalStep3',
      desc: '',
      args: [],
    );
  }

  /// `Keep the person lying flat and still.`
  String get spinalStep4 {
    return Intl.message(
      'Keep the person lying flat and still.',
      name: 'spinalStep4',
      desc: '',
      args: [],
    );
  }

  /// `Monitor breathing and be prepared to perform CPR if necessary.`
  String get spinalStep5 {
    return Intl.message(
      'Monitor breathing and be prepared to perform CPR if necessary.',
      name: 'spinalStep5',
      desc: '',
      args: [],
    );
  }

  /// `Reassure the injured person and keep them calm.`
  String get spinalStep6 {
    return Intl.message(
      'Reassure the injured person and keep them calm.',
      name: 'spinalStep6',
      desc: '',
      args: [],
    );
  }

  /// `Sprains and Strains`
  String get sprainsStrainsTitle {
    return Intl.message(
      'Sprains and Strains',
      name: 'sprainsStrainsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Sprains are injuries to ligaments (tissue connecting bones), and strains are injuries to muscles or tendons.`
  String get sprainsStrainsIntro {
    return Intl.message(
      'Sprains are injuries to ligaments (tissue connecting bones), and strains are injuries to muscles or tendons.',
      name: 'sprainsStrainsIntro',
      desc: '',
      args: [],
    );
  }

  /// `Signs:`
  String get sprainsStrainsSignsHeading {
    return Intl.message(
      'Signs:',
      name: 'sprainsStrainsSignsHeading',
      desc: '',
      args: [],
    );
  }

  /// `Pain and swelling`
  String get sprainsStrainsSign1 {
    return Intl.message(
      'Pain and swelling',
      name: 'sprainsStrainsSign1',
      desc: '',
      args: [],
    );
  }

  /// `Bruising or discoloration`
  String get sprainsStrainsSign2 {
    return Intl.message(
      'Bruising or discoloration',
      name: 'sprainsStrainsSign2',
      desc: '',
      args: [],
    );
  }

  /// `Limited ability to move the affected joint or muscle`
  String get sprainsStrainsSign3 {
    return Intl.message(
      'Limited ability to move the affected joint or muscle',
      name: 'sprainsStrainsSign3',
      desc: '',
      args: [],
    );
  }

  /// `Muscle spasms or weakness`
  String get sprainsStrainsSign4 {
    return Intl.message(
      'Muscle spasms or weakness',
      name: 'sprainsStrainsSign4',
      desc: '',
      args: [],
    );
  }

  /// `First Aid for Sprains and Strains:`
  String get sprainsStrainsFirstAidHeading {
    return Intl.message(
      'First Aid for Sprains and Strains:',
      name: 'sprainsStrainsFirstAidHeading',
      desc: '',
      args: [],
    );
  }

  /// `Rest the injured area and avoid putting weight on it.`
  String get sprainsStrainsStep1 {
    return Intl.message(
      'Rest the injured area and avoid putting weight on it.',
      name: 'sprainsStrainsStep1',
      desc: '',
      args: [],
    );
  }

  /// `Apply ice packs for 15-20 minutes every 2-3 hours to reduce swelling.`
  String get sprainsStrainsStep2 {
    return Intl.message(
      'Apply ice packs for 15-20 minutes every 2-3 hours to reduce swelling.',
      name: 'sprainsStrainsStep2',
      desc: '',
      args: [],
    );
  }

  /// `Compress the area with an elastic bandage, but not too tightly.`
  String get sprainsStrainsStep3 {
    return Intl.message(
      'Compress the area with an elastic bandage, but not too tightly.',
      name: 'sprainsStrainsStep3',
      desc: '',
      args: [],
    );
  }

  /// `Elevate the injured limb above heart level to reduce swelling.`
  String get sprainsStrainsStep4 {
    return Intl.message(
      'Elevate the injured limb above heart level to reduce swelling.',
      name: 'sprainsStrainsStep4',
      desc: '',
      args: [],
    );
  }

  /// `Take over-the-counter pain relief if needed.`
  String get sprainsStrainsStep5 {
    return Intl.message(
      'Take over-the-counter pain relief if needed.',
      name: 'sprainsStrainsStep5',
      desc: '',
      args: [],
    );
  }

  /// `Seek medical help if severe pain, swelling, or inability to move persists.`
  String get sprainsStrainsStep6 {
    return Intl.message(
      'Seek medical help if severe pain, swelling, or inability to move persists.',
      name: 'sprainsStrainsStep6',
      desc: '',
      args: [],
    );
  }

  /// `Stroke`
  String get strokeTitle {
    return Intl.message('Stroke', name: 'strokeTitle', desc: '', args: []);
  }

  /// `A stroke occurs when blood flow to part of the brain is interrupted or reduced, depriving brain tissue of oxygen and nutrients.`
  String get strokeIntro {
    return Intl.message(
      'A stroke occurs when blood flow to part of the brain is interrupted or reduced, depriving brain tissue of oxygen and nutrients.',
      name: 'strokeIntro',
      desc: '',
      args: [],
    );
  }

  /// `Signs and Symptoms:`
  String get strokeSignsHeading {
    return Intl.message(
      'Signs and Symptoms:',
      name: 'strokeSignsHeading',
      desc: '',
      args: [],
    );
  }

  /// `Sudden numbness or weakness of face, arm, or leg, especially on one side of the body`
  String get strokeSign1 {
    return Intl.message(
      'Sudden numbness or weakness of face, arm, or leg, especially on one side of the body',
      name: 'strokeSign1',
      desc: '',
      args: [],
    );
  }

  /// `Confusion, trouble speaking or understanding speech`
  String get strokeSign2 {
    return Intl.message(
      'Confusion, trouble speaking or understanding speech',
      name: 'strokeSign2',
      desc: '',
      args: [],
    );
  }

  /// `Trouble seeing in one or both eyes`
  String get strokeSign3 {
    return Intl.message(
      'Trouble seeing in one or both eyes',
      name: 'strokeSign3',
      desc: '',
      args: [],
    );
  }

  /// `Difficulty walking, dizziness, loss of balance or coordination`
  String get strokeSign4 {
    return Intl.message(
      'Difficulty walking, dizziness, loss of balance or coordination',
      name: 'strokeSign4',
      desc: '',
      args: [],
    );
  }

  /// `Severe headache with no known cause`
  String get strokeSign5 {
    return Intl.message(
      'Severe headache with no known cause',
      name: 'strokeSign5',
      desc: '',
      args: [],
    );
  }

  /// `First Aid for Stroke:`
  String get strokeFirstAidHeading {
    return Intl.message(
      'First Aid for Stroke:',
      name: 'strokeFirstAidHeading',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services immediately. Time is critical.`
  String get strokeStep1 {
    return Intl.message(
      'Call emergency services immediately. Time is critical.',
      name: 'strokeStep1',
      desc: '',
      args: [],
    );
  }

  /// `Keep the person safe and comfortable, help them sit or lie down.`
  String get strokeStep2 {
    return Intl.message(
      'Keep the person safe and comfortable, help them sit or lie down.',
      name: 'strokeStep2',
      desc: '',
      args: [],
    );
  }

  /// `If unconscious but breathing, place in the recovery position.`
  String get strokeStep3 {
    return Intl.message(
      'If unconscious but breathing, place in the recovery position.',
      name: 'strokeStep3',
      desc: '',
      args: [],
    );
  }

  /// `Do not give food, drink, or medication.`
  String get strokeStep4 {
    return Intl.message(
      'Do not give food, drink, or medication.',
      name: 'strokeStep4',
      desc: '',
      args: [],
    );
  }

  /// `Monitor their breathing and responsiveness until help arrives.`
  String get strokeStep5 {
    return Intl.message(
      'Monitor their breathing and responsiveness until help arrives.',
      name: 'strokeStep5',
      desc: '',
      args: [],
    );
  }

  /// `Wound Care`
  String get woundCareTitle {
    return Intl.message(
      'Wound Care',
      name: 'woundCareTitle',
      desc: '',
      args: [],
    );
  }

  /// `Proper wound care helps prevent infection and promotes faster healing.`
  String get woundCareIntro {
    return Intl.message(
      'Proper wound care helps prevent infection and promotes faster healing.',
      name: 'woundCareIntro',
      desc: '',
      args: [],
    );
  }

  /// `Steps for Basic Wound Care:`
  String get woundCareStepsHeading {
    return Intl.message(
      'Steps for Basic Wound Care:',
      name: 'woundCareStepsHeading',
      desc: '',
      args: [],
    );
  }

  /// `Wash your hands thoroughly before touching the wound.`
  String get woundCareStep1 {
    return Intl.message(
      'Wash your hands thoroughly before touching the wound.',
      name: 'woundCareStep1',
      desc: '',
      args: [],
    );
  }

  /// `Stop the bleeding by applying gentle pressure with a clean cloth.`
  String get woundCareStep2 {
    return Intl.message(
      'Stop the bleeding by applying gentle pressure with a clean cloth.',
      name: 'woundCareStep2',
      desc: '',
      args: [],
    );
  }

  /// `Clean the wound with clean water. Avoid using hydrogen peroxide or iodine directly as they may damage tissue.`
  String get woundCareStep3 {
    return Intl.message(
      'Clean the wound with clean water. Avoid using hydrogen peroxide or iodine directly as they may damage tissue.',
      name: 'woundCareStep3',
      desc: '',
      args: [],
    );
  }

  /// `Apply an antibiotic ointment to prevent infection.`
  String get woundCareStep4 {
    return Intl.message(
      'Apply an antibiotic ointment to prevent infection.',
      name: 'woundCareStep4',
      desc: '',
      args: [],
    );
  }

  /// `Cover the wound with a sterile bandage or dressing.`
  String get woundCareStep5 {
    return Intl.message(
      'Cover the wound with a sterile bandage or dressing.',
      name: 'woundCareStep5',
      desc: '',
      args: [],
    );
  }

  /// `Change the dressing daily or whenever it becomes wet or dirty.`
  String get woundCareStep6 {
    return Intl.message(
      'Change the dressing daily or whenever it becomes wet or dirty.',
      name: 'woundCareStep6',
      desc: '',
      args: [],
    );
  }

  /// `Watch for signs of infection: increased redness, swelling, warmth, pain, or pus.`
  String get woundCareStep7 {
    return Intl.message(
      'Watch for signs of infection: increased redness, swelling, warmth, pain, or pus.',
      name: 'woundCareStep7',
      desc: '',
      args: [],
    );
  }

  /// `When to Seek Medical Help:`
  String get woundCareMedicalHelpHeading {
    return Intl.message(
      'When to Seek Medical Help:',
      name: 'woundCareMedicalHelpHeading',
      desc: '',
      args: [],
    );
  }

  /// `The wound is deep, large, or won’t stop bleeding.`
  String get woundCareMedicalHelp1 {
    return Intl.message(
      'The wound is deep, large, or won’t stop bleeding.',
      name: 'woundCareMedicalHelp1',
      desc: '',
      args: [],
    );
  }

  /// `You see signs of infection.`
  String get woundCareMedicalHelp2 {
    return Intl.message(
      'You see signs of infection.',
      name: 'woundCareMedicalHelp2',
      desc: '',
      args: [],
    );
  }

  /// `The wound was caused by a dirty or rusty object, or an animal bite.`
  String get woundCareMedicalHelp3 {
    return Intl.message(
      'The wound was caused by a dirty or rusty object, or an animal bite.',
      name: 'woundCareMedicalHelp3',
      desc: '',
      args: [],
    );
  }

  /// `You have not had a tetanus shot in the last 5 years.`
  String get woundCareMedicalHelp4 {
    return Intl.message(
      'You have not had a tetanus shot in the last 5 years.',
      name: 'woundCareMedicalHelp4',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
