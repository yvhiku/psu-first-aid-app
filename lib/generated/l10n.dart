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

  /// `After eating peanuts, a person develops wheezing, swollen lips, and dizziness. What should you suspect?`
  String get allergic_reactions_q1 {
    return Intl.message(
      'After eating peanuts, a person develops wheezing, swollen lips, and dizziness. What should you suspect?',
      name: 'allergic_reactions_q1',
      desc: '',
      args: [],
    );
  }

  /// `A mild bruise`
  String get allergic_reactions_q1_opt1 {
    return Intl.message(
      'A mild bruise',
      name: 'allergic_reactions_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `A sprain`
  String get allergic_reactions_q1_opt2 {
    return Intl.message(
      'A sprain',
      name: 'allergic_reactions_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Possible anaphylaxis`
  String get allergic_reactions_q1_opt3 {
    return Intl.message(
      'Possible anaphylaxis',
      name: 'allergic_reactions_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Simple thirst`
  String get allergic_reactions_q1_opt4 {
    return Intl.message(
      'Simple thirst',
      name: 'allergic_reactions_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is the first-line medicine for a person with anaphylaxis who has a prescribed auto-injector?`
  String get allergic_reactions_q2 {
    return Intl.message(
      'What is the first-line medicine for a person with anaphylaxis who has a prescribed auto-injector?',
      name: 'allergic_reactions_q2',
      desc: '',
      args: [],
    );
  }

  /// `Adrenaline/epinephrine`
  String get allergic_reactions_q2_opt1 {
    return Intl.message(
      'Adrenaline/epinephrine',
      name: 'allergic_reactions_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `A random painkiller`
  String get allergic_reactions_q2_opt2 {
    return Intl.message(
      'A random painkiller',
      name: 'allergic_reactions_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Antibiotics from a friend`
  String get allergic_reactions_q2_opt3 {
    return Intl.message(
      'Antibiotics from a friend',
      name: 'allergic_reactions_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `A sleeping tablet`
  String get allergic_reactions_q2_opt4 {
    return Intl.message(
      'A sleeping tablet',
      name: 'allergic_reactions_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Where is an adrenaline auto-injector generally administered?`
  String get allergic_reactions_q3 {
    return Intl.message(
      'Where is an adrenaline auto-injector generally administered?',
      name: 'allergic_reactions_q3',
      desc: '',
      args: [],
    );
  }

  /// `Into the hand`
  String get allergic_reactions_q3_opt1 {
    return Intl.message(
      'Into the hand',
      name: 'allergic_reactions_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Into the outer mid-thigh, following its instructions`
  String get allergic_reactions_q3_opt2 {
    return Intl.message(
      'Into the outer mid-thigh, following its instructions',
      name: 'allergic_reactions_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Into the eye`
  String get allergic_reactions_q3_opt3 {
    return Intl.message(
      'Into the eye',
      name: 'allergic_reactions_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Into the mouth`
  String get allergic_reactions_q3_opt4 {
    return Intl.message(
      'Into the mouth',
      name: 'allergic_reactions_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do after using an auto-injector for suspected anaphylaxis?`
  String get allergic_reactions_q4 {
    return Intl.message(
      'What should you do after using an auto-injector for suspected anaphylaxis?',
      name: 'allergic_reactions_q4',
      desc: '',
      args: [],
    );
  }

  /// `Let the person leave alone`
  String get allergic_reactions_q4_opt1 {
    return Intl.message(
      'Let the person leave alone',
      name: 'allergic_reactions_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Give them a large meal`
  String get allergic_reactions_q4_opt2 {
    return Intl.message(
      'Give them a large meal',
      name: 'allergic_reactions_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Wait until tomorrow to report it`
  String get allergic_reactions_q4_opt3 {
    return Intl.message(
      'Wait until tomorrow to report it',
      name: 'allergic_reactions_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services and monitor them`
  String get allergic_reactions_q4_opt4 {
    return Intl.message(
      'Call emergency services and monitor them',
      name: 'allergic_reactions_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which symptom is especially concerning for anaphylaxis?`
  String get allergic_reactions_q5 {
    return Intl.message(
      'Which symptom is especially concerning for anaphylaxis?',
      name: 'allergic_reactions_q5',
      desc: '',
      args: [],
    );
  }

  /// `A small old scar`
  String get allergic_reactions_q5_opt1 {
    return Intl.message(
      'A small old scar',
      name: 'allergic_reactions_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Mild dry skin only`
  String get allergic_reactions_q5_opt2 {
    return Intl.message(
      'Mild dry skin only',
      name: 'allergic_reactions_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Difficulty breathing or swelling of the tongue/throat`
  String get allergic_reactions_q5_opt3 {
    return Intl.message(
      'Difficulty breathing or swelling of the tongue/throat',
      name: 'allergic_reactions_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `A paper cut`
  String get allergic_reactions_q5_opt4 {
    return Intl.message(
      'A paper cut',
      name: 'allergic_reactions_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Why are antihistamines not a substitute for adrenaline in anaphylaxis?`
  String get allergic_reactions_q6 {
    return Intl.message(
      'Why are antihistamines not a substitute for adrenaline in anaphylaxis?',
      name: 'allergic_reactions_q6',
      desc: '',
      args: [],
    );
  }

  /// `They work instantly on airway collapse`
  String get allergic_reactions_q6_opt1 {
    return Intl.message(
      'They work instantly on airway collapse',
      name: 'allergic_reactions_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `They do not treat the life-threatening airway/breathing/circulation problems as rapidly or reliably`
  String get allergic_reactions_q6_opt2 {
    return Intl.message(
      'They do not treat the life-threatening airway/breathing/circulation problems as rapidly or reliably',
      name: 'allergic_reactions_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `They always cause anaphylaxis`
  String get allergic_reactions_q6_opt3 {
    return Intl.message(
      'They always cause anaphylaxis',
      name: 'allergic_reactions_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `They replace emergency care`
  String get allergic_reactions_q6_opt4 {
    return Intl.message(
      'They replace emergency care',
      name: 'allergic_reactions_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you check before approaching an injured person?`
  String get assess_q1 {
    return Intl.message(
      'What should you check before approaching an injured person?',
      name: 'assess_q1',
      desc: '',
      args: [],
    );
  }

  /// `Whether the scene is safe for you and them`
  String get assess_q1_opt1 {
    return Intl.message(
      'Whether the scene is safe for you and them',
      name: 'assess_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Their phone model`
  String get assess_q1_opt2 {
    return Intl.message(
      'Their phone model',
      name: 'assess_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Their shoe size`
  String get assess_q1_opt3 {
    return Intl.message(
      'Their shoe size',
      name: 'assess_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Whether they can pay`
  String get assess_q1_opt4 {
    return Intl.message(
      'Whether they can pay',
      name: 'assess_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person does not respond when you speak loudly and gently tap their shoulders. What should you do next?`
  String get assess_q2 {
    return Intl.message(
      'A person does not respond when you speak loudly and gently tap their shoulders. What should you do next?',
      name: 'assess_q2',
      desc: '',
      args: [],
    );
  }

  /// `Give them a drink`
  String get assess_q2_opt1 {
    return Intl.message(
      'Give them a drink',
      name: 'assess_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services/get help and check whether they are breathing normally`
  String get assess_q2_opt2 {
    return Intl.message(
      'Call emergency services/get help and check whether they are breathing normally',
      name: 'assess_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Make them stand`
  String get assess_q2_opt3 {
    return Intl.message(
      'Make them stand',
      name: 'assess_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Leave them alone`
  String get assess_q2_opt4 {
    return Intl.message(
      'Leave them alone',
      name: 'assess_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `How do you check normal breathing in an unresponsive adult?`
  String get assess_q3 {
    return Intl.message(
      'How do you check normal breathing in an unresponsive adult?',
      name: 'assess_q3',
      desc: '',
      args: [],
    );
  }

  /// `Ask them to describe it`
  String get assess_q3_opt1 {
    return Intl.message(
      'Ask them to describe it',
      name: 'assess_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Look only at their hands`
  String get assess_q3_opt2 {
    return Intl.message(
      'Look only at their hands',
      name: 'assess_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Open the airway as appropriate and look for normal chest movement and breathing`
  String get assess_q3_opt3 {
    return Intl.message(
      'Open the airway as appropriate and look for normal chest movement and breathing',
      name: 'assess_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Wait ten minutes`
  String get assess_q3_opt4 {
    return Intl.message(
      'Wait ten minutes',
      name: 'assess_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which is a life-threatening warning sign?`
  String get assess_q4 {
    return Intl.message(
      'Which is a life-threatening warning sign?',
      name: 'assess_q4',
      desc: '',
      args: [],
    );
  }

  /// `A small old bruise`
  String get assess_q4_opt1 {
    return Intl.message(
      'A small old bruise',
      name: 'assess_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `A healed scar`
  String get assess_q4_opt2 {
    return Intl.message(
      'A healed scar',
      name: 'assess_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `A mild itch`
  String get assess_q4_opt3 {
    return Intl.message(
      'A mild itch',
      name: 'assess_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Severe bleeding, abnormal breathing, or unresponsiveness`
  String get assess_q4_opt4 {
    return Intl.message(
      'Severe bleeding, abnormal breathing, or unresponsiveness',
      name: 'assess_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is useful to ask a responsive injured person?`
  String get assess_q5 {
    return Intl.message(
      'What is useful to ask a responsive injured person?',
      name: 'assess_q5',
      desc: '',
      args: [],
    );
  }

  /// `What happened and where they feel pain, if they can answer`
  String get assess_q5_opt1 {
    return Intl.message(
      'What happened and where they feel pain, if they can answer',
      name: 'assess_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Only their income`
  String get assess_q5_opt2 {
    return Intl.message(
      'Only their income',
      name: 'assess_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Only their favourite food`
  String get assess_q5_opt3 {
    return Intl.message(
      'Only their favourite food',
      name: 'assess_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Nothing ever`
  String get assess_q5_opt4 {
    return Intl.message(
      'Nothing ever',
      name: 'assess_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Why should you compare both sides of the body when appropriate?`
  String get assess_q6 {
    return Intl.message(
      'Why should you compare both sides of the body when appropriate?',
      name: 'assess_q6',
      desc: '',
      args: [],
    );
  }

  /// `To make the casualty move repeatedly`
  String get assess_q6_opt1 {
    return Intl.message(
      'To make the casualty move repeatedly',
      name: 'assess_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `To notice differences such as swelling, movement, or sensation`
  String get assess_q6_opt2 {
    return Intl.message(
      'To notice differences such as swelling, movement, or sensation',
      name: 'assess_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `To diagnose every illness`
  String get assess_q6_opt3 {
    return Intl.message(
      'To diagnose every illness',
      name: 'assess_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `To avoid calling help`
  String get assess_q6_opt4 {
    return Intl.message(
      'To avoid calling help',
      name: 'assess_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A student with asthma is wheezing and struggling during exercise. What should you do?`
  String get asthma_q1 {
    return Intl.message(
      'A student with asthma is wheezing and struggling during exercise. What should you do?',
      name: 'asthma_q1',
      desc: '',
      args: [],
    );
  }

  /// `Help them sit upright and use their prescribed reliever according to their plan`
  String get asthma_q1_opt1 {
    return Intl.message(
      'Help them sit upright and use their prescribed reliever according to their plan',
      name: 'asthma_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Make them lie flat`
  String get asthma_q1_opt2 {
    return Intl.message(
      'Make them lie flat',
      name: 'asthma_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Tell them to keep running`
  String get asthma_q1_opt3 {
    return Intl.message(
      'Tell them to keep running',
      name: 'asthma_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Give food`
  String get asthma_q1_opt4 {
    return Intl.message(
      'Give food',
      name: 'asthma_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which can be a sign of an asthma attack?`
  String get asthma_q2 {
    return Intl.message(
      'Which can be a sign of an asthma attack?',
      name: 'asthma_q2',
      desc: '',
      args: [],
    );
  }

  /// `A healed scar`
  String get asthma_q2_opt1 {
    return Intl.message(
      'A healed scar',
      name: 'asthma_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `A painless bruise`
  String get asthma_q2_opt2 {
    return Intl.message(
      'A painless bruise',
      name: 'asthma_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Wheezing, coughing, chest tightness, or breathlessness`
  String get asthma_q2_opt3 {
    return Intl.message(
      'Wheezing, coughing, chest tightness, or breathlessness',
      name: 'asthma_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `A broken fingernail`
  String get asthma_q2_opt4 {
    return Intl.message(
      'A broken fingernail',
      name: 'asthma_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do if the person has a prescribed reliever inhaler?`
  String get asthma_q3 {
    return Intl.message(
      'What should you do if the person has a prescribed reliever inhaler?',
      name: 'asthma_q3',
      desc: '',
      args: [],
    );
  }

  /// `Hide it`
  String get asthma_q3_opt1 {
    return Intl.message('Hide it', name: 'asthma_q3_opt1', desc: '', args: []);
  }

  /// `Help them use it according to their asthma plan; a spacer may help if available`
  String get asthma_q3_opt2 {
    return Intl.message(
      'Help them use it according to their asthma plan; a spacer may help if available',
      name: 'asthma_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Use a stranger's medication without checking`
  String get asthma_q3_opt3 {
    return Intl.message(
      'Use a stranger\'s medication without checking',
      name: 'asthma_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Wait until they collapse`
  String get asthma_q3_opt4 {
    return Intl.message(
      'Wait until they collapse',
      name: 'asthma_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which is a red flag during an asthma attack?`
  String get asthma_q4 {
    return Intl.message(
      'Which is a red flag during an asthma attack?',
      name: 'asthma_q4',
      desc: '',
      args: [],
    );
  }

  /// `Mild itch on one finger`
  String get asthma_q4_opt1 {
    return Intl.message(
      'Mild itch on one finger',
      name: 'asthma_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `A normal conversation`
  String get asthma_q4_opt2 {
    return Intl.message(
      'A normal conversation',
      name: 'asthma_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `A small bruise`
  String get asthma_q4_opt3 {
    return Intl.message(
      'A small bruise',
      name: 'asthma_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Severe breathing difficulty, blue/grey lips, confusion, or inability to speak normally`
  String get asthma_q4_opt4 {
    return Intl.message(
      'Severe breathing difficulty, blue/grey lips, confusion, or inability to speak normally',
      name: 'asthma_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Should a person having a significant asthma attack be left alone?`
  String get asthma_q5 {
    return Intl.message(
      'Should a person having a significant asthma attack be left alone?',
      name: 'asthma_q5',
      desc: '',
      args: [],
    );
  }

  /// `No; stay with them and monitor their condition`
  String get asthma_q5_opt1 {
    return Intl.message(
      'No; stay with them and monitor their condition',
      name: 'asthma_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Yes, to let them rest`
  String get asthma_q5_opt2 {
    return Intl.message(
      'Yes, to let them rest',
      name: 'asthma_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Only if they are a child`
  String get asthma_q5_opt3 {
    return Intl.message(
      'Only if they are a child',
      name: 'asthma_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Yes, if they are wheezing`
  String get asthma_q5_opt4 {
    return Intl.message(
      'Yes, if they are wheezing',
      name: 'asthma_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do if symptoms are severe or not improving with the person's reliever plan?`
  String get asthma_q6 {
    return Intl.message(
      'What should you do if symptoms are severe or not improving with the person\'s reliever plan?',
      name: 'asthma_q6',
      desc: '',
      args: [],
    );
  }

  /// `Tell them to sleep`
  String get asthma_q6_opt1 {
    return Intl.message(
      'Tell them to sleep',
      name: 'asthma_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Give them a heavy meal`
  String get asthma_q6_opt2 {
    return Intl.message(
      'Give them a heavy meal',
      name: 'asthma_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services and continue following their action plan`
  String get asthma_q6_opt3 {
    return Intl.message(
      'Call emergency services and continue following their action plan',
      name: 'asthma_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Make them walk`
  String get asthma_q6_opt4 {
    return Intl.message(
      'Make them walk',
      name: 'asthma_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person is bitten by an unknown snake while hiking. What should you do?`
  String get bites_q1 {
    return Intl.message(
      'A person is bitten by an unknown snake while hiking. What should you do?',
      name: 'bites_q1',
      desc: '',
      args: [],
    );
  }

  /// `Keep them still, immobilize the limb, and call emergency services`
  String get bites_q1_opt1 {
    return Intl.message(
      'Keep them still, immobilize the limb, and call emergency services',
      name: 'bites_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Cut the bite open`
  String get bites_q1_opt2 {
    return Intl.message(
      'Cut the bite open',
      name: 'bites_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Suck out venom`
  String get bites_q1_opt3 {
    return Intl.message(
      'Suck out venom',
      name: 'bites_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Make them run for help`
  String get bites_q1_opt4 {
    return Intl.message(
      'Make them run for help',
      name: 'bites_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you avoid for a suspected snakebite?`
  String get bites_q2 {
    return Intl.message(
      'What should you avoid for a suspected snakebite?',
      name: 'bites_q2',
      desc: '',
      args: [],
    );
  }

  /// `Calling emergency services`
  String get bites_q2_opt1 {
    return Intl.message(
      'Calling emergency services',
      name: 'bites_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Keeping the person still`
  String get bites_q2_opt2 {
    return Intl.message(
      'Keeping the person still',
      name: 'bites_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Cutting or sucking the wound or applying an improvised tight tourniquet`
  String get bites_q2_opt3 {
    return Intl.message(
      'Cutting or sucking the wound or applying an improvised tight tourniquet',
      name: 'bites_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Noting the time of the bite`
  String get bites_q2_opt4 {
    return Intl.message(
      'Noting the time of the bite',
      name: 'bites_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `How should an ordinary animal bite wound generally be cleaned?`
  String get bites_q3 {
    return Intl.message(
      'How should an ordinary animal bite wound generally be cleaned?',
      name: 'bites_q3',
      desc: '',
      args: [],
    );
  }

  /// `With soil`
  String get bites_q3_opt1 {
    return Intl.message('With soil', name: 'bites_q3_opt1', desc: '', args: []);
  }

  /// `With soap and running water, followed by medical advice`
  String get bites_q3_opt2 {
    return Intl.message(
      'With soap and running water, followed by medical advice',
      name: 'bites_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `By sealing it immediately with glue`
  String get bites_q3_opt3 {
    return Intl.message(
      'By sealing it immediately with glue',
      name: 'bites_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `By sucking it clean`
  String get bites_q3_opt4 {
    return Intl.message(
      'By sucking it clean',
      name: 'bites_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person develops breathing difficulty and facial swelling after an insect sting. What is this?`
  String get bites_q4 {
    return Intl.message(
      'A person develops breathing difficulty and facial swelling after an insect sting. What is this?',
      name: 'bites_q4',
      desc: '',
      args: [],
    );
  }

  /// `A normal local reaction only`
  String get bites_q4_opt1 {
    return Intl.message(
      'A normal local reaction only',
      name: 'bites_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `A simple bruise`
  String get bites_q4_opt2 {
    return Intl.message(
      'A simple bruise',
      name: 'bites_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `A minor scratch`
  String get bites_q4_opt3 {
    return Intl.message(
      'A minor scratch',
      name: 'bites_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Possible anaphylaxis requiring emergency help and prescribed adrenaline`
  String get bites_q4_opt4 {
    return Intl.message(
      'Possible anaphylaxis requiring emergency help and prescribed adrenaline',
      name: 'bites_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do if a tick is attached to skin?`
  String get bites_q5 {
    return Intl.message(
      'What should you do if a tick is attached to skin?',
      name: 'bites_q5',
      desc: '',
      args: [],
    );
  }

  /// `Burn it off`
  String get bites_q5_opt1 {
    return Intl.message(
      'Burn it off',
      name: 'bites_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Cover it with paint`
  String get bites_q5_opt2 {
    return Intl.message(
      'Cover it with paint',
      name: 'bites_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Use fine-tipped tweezers to grasp close to the skin and pull steadily, then clean the area`
  String get bites_q5_opt3 {
    return Intl.message(
      'Use fine-tipped tweezers to grasp close to the skin and pull steadily, then clean the area',
      name: 'bites_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Twist it forcefully with bare fingers`
  String get bites_q5_opt4 {
    return Intl.message(
      'Twist it forcefully with bare fingers',
      name: 'bites_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A bite is deep, on the hand, or shows increasing redness and swelling. What is sensible?`
  String get bites_q6 {
    return Intl.message(
      'A bite is deep, on the hand, or shows increasing redness and swelling. What is sensible?',
      name: 'bites_q6',
      desc: '',
      args: [],
    );
  }

  /// `Seek prompt medical assessment`
  String get bites_q6_opt1 {
    return Intl.message(
      'Seek prompt medical assessment',
      name: 'bites_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Ignore it if bleeding stops`
  String get bites_q6_opt2 {
    return Intl.message(
      'Ignore it if bleeding stops',
      name: 'bites_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Apply household bleach`
  String get bites_q6_opt3 {
    return Intl.message(
      'Apply household bleach',
      name: 'bites_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Cut around the wound`
  String get bites_q6_opt4 {
    return Intl.message(
      'Cut around the wound',
      name: 'bites_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person's forearm is bleeding heavily from a deep cut. What should you do first?`
  String get bleeding_q1 {
    return Intl.message(
      'A person\'s forearm is bleeding heavily from a deep cut. What should you do first?',
      name: 'bleeding_q1',
      desc: '',
      args: [],
    );
  }

  /// `Apply firm, continuous direct pressure and call for help`
  String get bleeding_q1_opt1 {
    return Intl.message(
      'Apply firm, continuous direct pressure and call for help',
      name: 'bleeding_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Wash it for ten minutes before pressing`
  String get bleeding_q1_opt2 {
    return Intl.message(
      'Wash it for ten minutes before pressing',
      name: 'bleeding_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Let it bleed freely`
  String get bleeding_q1_opt3 {
    return Intl.message(
      'Let it bleed freely',
      name: 'bleeding_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Apply a loose bandage only`
  String get bleeding_q1_opt4 {
    return Intl.message(
      'Apply a loose bandage only',
      name: 'bleeding_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Blood soaks through the dressing. What should you do?`
  String get bleeding_q2 {
    return Intl.message(
      'Blood soaks through the dressing. What should you do?',
      name: 'bleeding_q2',
      desc: '',
      args: [],
    );
  }

  /// `Remove all dressings and start over`
  String get bleeding_q2_opt1 {
    return Intl.message(
      'Remove all dressings and start over',
      name: 'bleeding_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Add more material on top and keep pressing`
  String get bleeding_q2_opt2 {
    return Intl.message(
      'Add more material on top and keep pressing',
      name: 'bleeding_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Stop pressure to inspect the wound`
  String get bleeding_q2_opt3 {
    return Intl.message(
      'Stop pressure to inspect the wound',
      name: 'bleeding_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Wash the wound again`
  String get bleeding_q2_opt4 {
    return Intl.message(
      'Wash the wound again',
      name: 'bleeding_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A knife is embedded in someone's leg. What should you do?`
  String get bleeding_q3 {
    return Intl.message(
      'A knife is embedded in someone\'s leg. What should you do?',
      name: 'bleeding_q3',
      desc: '',
      args: [],
    );
  }

  /// `Pull it out quickly`
  String get bleeding_q3_opt1 {
    return Intl.message(
      'Pull it out quickly',
      name: 'bleeding_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Push it deeper to stop movement`
  String get bleeding_q3_opt2 {
    return Intl.message(
      'Push it deeper to stop movement',
      name: 'bleeding_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Apply pressure directly onto the object`
  String get bleeding_q3_opt3 {
    return Intl.message(
      'Apply pressure directly onto the object',
      name: 'bleeding_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Do not remove it; apply pressure around it and get emergency help`
  String get bleeding_q3_opt4 {
    return Intl.message(
      'Do not remove it; apply pressure around it and get emergency help',
      name: 'bleeding_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which may indicate life-threatening bleeding?`
  String get bleeding_q4 {
    return Intl.message(
      'Which may indicate life-threatening bleeding?',
      name: 'bleeding_q4',
      desc: '',
      args: [],
    );
  }

  /// `A tiny paper cut`
  String get bleeding_q4_opt1 {
    return Intl.message(
      'A tiny paper cut',
      name: 'bleeding_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `A small bruise`
  String get bleeding_q4_opt2 {
    return Intl.message(
      'A small bruise',
      name: 'bleeding_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Blood spurting or rapidly pooling`
  String get bleeding_q4_opt3 {
    return Intl.message(
      'Blood spurting or rapidly pooling',
      name: 'bleeding_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `A healed scar`
  String get bleeding_q4_opt4 {
    return Intl.message(
      'A healed scar',
      name: 'bleeding_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do after putting pressure on a bleeding wound?`
  String get bleeding_q5 {
    return Intl.message(
      'What should you do after putting pressure on a bleeding wound?',
      name: 'bleeding_q5',
      desc: '',
      args: [],
    );
  }

  /// `Keep pressure continuous until bleeding is controlled or help takes over`
  String get bleeding_q5_opt1 {
    return Intl.message(
      'Keep pressure continuous until bleeding is controlled or help takes over',
      name: 'bleeding_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Check it every five seconds by lifting the dressing`
  String get bleeding_q5_opt2 {
    return Intl.message(
      'Check it every five seconds by lifting the dressing',
      name: 'bleeding_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Ask the person to exercise`
  String get bleeding_q5_opt3 {
    return Intl.message(
      'Ask the person to exercise',
      name: 'bleeding_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Leave the person alone`
  String get bleeding_q5_opt4 {
    return Intl.message(
      'Leave the person alone',
      name: 'bleeding_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When can a tourniquet be appropriate?`
  String get bleeding_q6 {
    return Intl.message(
      'When can a tourniquet be appropriate?',
      name: 'bleeding_q6',
      desc: '',
      args: [],
    );
  }

  /// `For every small cut`
  String get bleeding_q6_opt1 {
    return Intl.message(
      'For every small cut',
      name: 'bleeding_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `For life-threatening bleeding from an arm or leg, if available and you know how or are instructed`
  String get bleeding_q6_opt2 {
    return Intl.message(
      'For life-threatening bleeding from an arm or leg, if available and you know how or are instructed',
      name: 'bleeding_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `For nosebleeds`
  String get bleeding_q6_opt3 {
    return Intl.message(
      'For nosebleeds',
      name: 'bleeding_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `For bruises`
  String get bleeding_q6_opt4 {
    return Intl.message(
      'For bruises',
      name: 'bleeding_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Hot tea spills onto a person's hand. What is the best immediate action?`
  String get burns_q1 {
    return Intl.message(
      'Hot tea spills onto a person\'s hand. What is the best immediate action?',
      name: 'burns_q1',
      desc: '',
      args: [],
    );
  }

  /// `Apply ice directly`
  String get burns_q1_opt1 {
    return Intl.message(
      'Apply ice directly',
      name: 'burns_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Rub butter onto it`
  String get burns_q1_opt2 {
    return Intl.message(
      'Rub butter onto it',
      name: 'burns_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Cool under cool running water for 20 minutes`
  String get burns_q1_opt3 {
    return Intl.message(
      'Cool under cool running water for 20 minutes',
      name: 'burns_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Break any blisters`
  String get burns_q1_opt4 {
    return Intl.message(
      'Break any blisters',
      name: 'burns_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which should not be applied to a fresh burn?`
  String get burns_q2 {
    return Intl.message(
      'Which should not be applied to a fresh burn?',
      name: 'burns_q2',
      desc: '',
      args: [],
    );
  }

  /// `Cool running water`
  String get burns_q2_opt1 {
    return Intl.message(
      'Cool running water',
      name: 'burns_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `A clean non-fluffy covering after cooling`
  String get burns_q2_opt2 {
    return Intl.message(
      'A clean non-fluffy covering after cooling',
      name: 'burns_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Removal of nearby jewellery if not stuck`
  String get burns_q2_opt3 {
    return Intl.message(
      'Removal of nearby jewellery if not stuck',
      name: 'burns_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ice, butter, or oil`
  String get burns_q2_opt4 {
    return Intl.message(
      'Ice, butter, or oil',
      name: 'burns_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Clothing is stuck to a burn. What should you do?`
  String get burns_q3 {
    return Intl.message(
      'Clothing is stuck to a burn. What should you do?',
      name: 'burns_q3',
      desc: '',
      args: [],
    );
  }

  /// `Pull it off quickly`
  String get burns_q3_opt1 {
    return Intl.message(
      'Pull it off quickly',
      name: 'burns_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Leave stuck fabric in place and get medical help as needed`
  String get burns_q3_opt2 {
    return Intl.message(
      'Leave stuck fabric in place and get medical help as needed',
      name: 'burns_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Scrub the skin`
  String get burns_q3_opt3 {
    return Intl.message(
      'Scrub the skin',
      name: 'burns_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Cut into the blister`
  String get burns_q3_opt4 {
    return Intl.message(
      'Cut into the blister',
      name: 'burns_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which burn needs urgent medical assessment?`
  String get burns_q4 {
    return Intl.message(
      'Which burn needs urgent medical assessment?',
      name: 'burns_q4',
      desc: '',
      args: [],
    );
  }

  /// `A large, deep, chemical, electrical, or airway-related burn`
  String get burns_q4_opt1 {
    return Intl.message(
      'A large, deep, chemical, electrical, or airway-related burn',
      name: 'burns_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `A tiny superficial red patch only`
  String get burns_q4_opt2 {
    return Intl.message(
      'A tiny superficial red patch only',
      name: 'burns_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `A healed old scar`
  String get burns_q4_opt3 {
    return Intl.message(
      'A healed old scar',
      name: 'burns_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Mild redness with no pain or other concern`
  String get burns_q4_opt4 {
    return Intl.message(
      'Mild redness with no pain or other concern',
      name: 'burns_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do with blisters caused by a burn?`
  String get burns_q5 {
    return Intl.message(
      'What should you do with blisters caused by a burn?',
      name: 'burns_q5',
      desc: '',
      args: [],
    );
  }

  /// `Pop them with a needle`
  String get burns_q5_opt1 {
    return Intl.message(
      'Pop them with a needle',
      name: 'burns_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Rub them until they flatten`
  String get burns_q5_opt2 {
    return Intl.message(
      'Rub them until they flatten',
      name: 'burns_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Leave them intact`
  String get burns_q5_opt3 {
    return Intl.message(
      'Leave them intact',
      name: 'burns_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Cover them with glue`
  String get burns_q5_opt4 {
    return Intl.message(
      'Cover them with glue',
      name: 'burns_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person has a chemical powder on their skin. What is a safe initial approach?`
  String get burns_q6 {
    return Intl.message(
      'A person has a chemical powder on their skin. What is a safe initial approach?',
      name: 'burns_q6',
      desc: '',
      args: [],
    );
  }

  /// `Rub it into the skin`
  String get burns_q6_opt1 {
    return Intl.message(
      'Rub it into the skin',
      name: 'burns_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Pour another chemical on it`
  String get burns_q6_opt2 {
    return Intl.message(
      'Pour another chemical on it',
      name: 'burns_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Cover it with oil`
  String get burns_q6_opt3 {
    return Intl.message(
      'Cover it with oil',
      name: 'burns_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Protect yourself and brush off dry powder before irrigation when appropriate; follow emergency guidance`
  String get burns_q6_opt4 {
    return Intl.message(
      'Protect yourself and brush off dry powder before irrigation when appropriate; follow emergency guidance',
      name: 'burns_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A conscious adult cannot speak, breathe, or cough effectively while eating. What should you do?`
  String get choking_q1 {
    return Intl.message(
      'A conscious adult cannot speak, breathe, or cough effectively while eating. What should you do?',
      name: 'choking_q1',
      desc: '',
      args: [],
    );
  }

  /// `Give appropriate choking first aid and call for help`
  String get choking_q1_opt1 {
    return Intl.message(
      'Give appropriate choking first aid and call for help',
      name: 'choking_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Offer a glass of water`
  String get choking_q1_opt2 {
    return Intl.message(
      'Offer a glass of water',
      name: 'choking_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Put fingers blindly into the throat`
  String get choking_q1_opt3 {
    return Intl.message(
      'Put fingers blindly into the throat',
      name: 'choking_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Tell them to lie down and wait`
  String get choking_q1_opt4 {
    return Intl.message(
      'Tell them to lie down and wait',
      name: 'choking_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a sign of severe choking?`
  String get choking_q2 {
    return Intl.message(
      'What is a sign of severe choking?',
      name: 'choking_q2',
      desc: '',
      args: [],
    );
  }

  /// `Speaking clearly`
  String get choking_q2_opt1 {
    return Intl.message(
      'Speaking clearly',
      name: 'choking_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `A strong, effective cough`
  String get choking_q2_opt2 {
    return Intl.message(
      'A strong, effective cough',
      name: 'choking_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Inability to speak or breathe normally`
  String get choking_q2_opt3 {
    return Intl.message(
      'Inability to speak or breathe normally',
      name: 'choking_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Sneezing once`
  String get choking_q2_opt4 {
    return Intl.message(
      'Sneezing once',
      name: 'choking_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `For a conscious adult with severe choking, what sequence is commonly recommended?`
  String get choking_q3 {
    return Intl.message(
      'For a conscious adult with severe choking, what sequence is commonly recommended?',
      name: 'choking_q3',
      desc: '',
      args: [],
    );
  }

  /// `Only give water`
  String get choking_q3_opt1 {
    return Intl.message(
      'Only give water',
      name: 'choking_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Up to five back blows, then up to five abdominal thrusts; repeat and seek help`
  String get choking_q3_opt2 {
    return Intl.message(
      'Up to five back blows, then up to five abdominal thrusts; repeat and seek help',
      name: 'choking_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Make them run`
  String get choking_q3_opt3 {
    return Intl.message(
      'Make them run',
      name: 'choking_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Put them upside down`
  String get choking_q3_opt4 {
    return Intl.message(
      'Put them upside down',
      name: 'choking_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Why should you avoid blind finger sweeps?`
  String get choking_q4 {
    return Intl.message(
      'Why should you avoid blind finger sweeps?',
      name: 'choking_q4',
      desc: '',
      args: [],
    );
  }

  /// `They always cure choking`
  String get choking_q4_opt1 {
    return Intl.message(
      'They always cure choking',
      name: 'choking_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `They help the object move deeper`
  String get choking_q4_opt2 {
    return Intl.message(
      'They help the object move deeper',
      name: 'choking_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `They are required for every choking case`
  String get choking_q4_opt3 {
    return Intl.message(
      'They are required for every choking case',
      name: 'choking_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `They may push an object farther into the airway`
  String get choking_q4_opt4 {
    return Intl.message(
      'They may push an object farther into the airway',
      name: 'choking_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person can cough forcefully and speak while coughing. What should you encourage?`
  String get choking_q5 {
    return Intl.message(
      'A person can cough forcefully and speak while coughing. What should you encourage?',
      name: 'choking_q5',
      desc: '',
      args: [],
    );
  }

  /// `Effective coughing while monitoring them`
  String get choking_q5_opt1 {
    return Intl.message(
      'Effective coughing while monitoring them',
      name: 'choking_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Immediate blind finger sweep`
  String get choking_q5_opt2 {
    return Intl.message(
      'Immediate blind finger sweep',
      name: 'choking_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Abdominal thrusts regardless of severity`
  String get choking_q5_opt3 {
    return Intl.message(
      'Abdominal thrusts regardless of severity',
      name: 'choking_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Giving solid food`
  String get choking_q5_opt4 {
    return Intl.message(
      'Giving solid food',
      name: 'choking_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A choking person becomes unresponsive. What should you do?`
  String get choking_q6 {
    return Intl.message(
      'A choking person becomes unresponsive. What should you do?',
      name: 'choking_q6',
      desc: '',
      args: [],
    );
  }

  /// `Keep them standing`
  String get choking_q6_opt1 {
    return Intl.message(
      'Keep them standing',
      name: 'choking_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Give water`
  String get choking_q6_opt2 {
    return Intl.message(
      'Give water',
      name: 'choking_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Lower them safely, call emergency services, and begin CPR as indicated`
  String get choking_q6_opt3 {
    return Intl.message(
      'Lower them safely, call emergency services, and begin CPR as indicated',
      name: 'choking_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Search their throat blindly`
  String get choking_q6_opt4 {
    return Intl.message(
      'Search their throat blindly',
      name: 'choking_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `An adult collapses, does not respond, and only gasps. What should you do?`
  String get cpr_q1 {
    return Intl.message(
      'An adult collapses, does not respond, and only gasps. What should you do?',
      name: 'cpr_q1',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services, get an AED, and start CPR`
  String get cpr_q1_opt1 {
    return Intl.message(
      'Call emergency services, get an AED, and start CPR',
      name: 'cpr_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Give water and wait`
  String get cpr_q1_opt2 {
    return Intl.message(
      'Give water and wait',
      name: 'cpr_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Put the person on their feet`
  String get cpr_q1_opt3 {
    return Intl.message(
      'Put the person on their feet',
      name: 'cpr_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Place a pillow under their head`
  String get cpr_q1_opt4 {
    return Intl.message(
      'Place a pillow under their head',
      name: 'cpr_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What does CPR stand for?`
  String get cpr_q2 {
    return Intl.message(
      'What does CPR stand for?',
      name: 'cpr_q2',
      desc: '',
      args: [],
    );
  }

  /// `Cardiac Pressure Recovery`
  String get cpr_q2_opt1 {
    return Intl.message(
      'Cardiac Pressure Recovery',
      name: 'cpr_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Cardiopulmonary Resuscitation`
  String get cpr_q2_opt2 {
    return Intl.message(
      'Cardiopulmonary Resuscitation',
      name: 'cpr_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Circulation Pulse Repair`
  String get cpr_q2_opt3 {
    return Intl.message(
      'Circulation Pulse Repair',
      name: 'cpr_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Critical Patient Response`
  String get cpr_q2_opt4 {
    return Intl.message(
      'Critical Patient Response',
      name: 'cpr_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Where should you place your hands for adult chest compressions?`
  String get cpr_q3 {
    return Intl.message(
      'Where should you place your hands for adult chest compressions?',
      name: 'cpr_q3',
      desc: '',
      args: [],
    );
  }

  /// `On the upper abdomen`
  String get cpr_q3_opt1 {
    return Intl.message(
      'On the upper abdomen',
      name: 'cpr_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Over the left ribs`
  String get cpr_q3_opt2 {
    return Intl.message(
      'Over the left ribs',
      name: 'cpr_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `In the center of the chest on the lower half of the breastbone`
  String get cpr_q3_opt3 {
    return Intl.message(
      'In the center of the chest on the lower half of the breastbone',
      name: 'cpr_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `At the base of the neck`
  String get cpr_q3_opt4 {
    return Intl.message(
      'At the base of the neck',
      name: 'cpr_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is the recommended adult chest-compression rate?`
  String get cpr_q4 {
    return Intl.message(
      'What is the recommended adult chest-compression rate?',
      name: 'cpr_q4',
      desc: '',
      args: [],
    );
  }

  /// `40–60 per minute`
  String get cpr_q4_opt1 {
    return Intl.message(
      '40–60 per minute',
      name: 'cpr_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `60–80 per minute`
  String get cpr_q4_opt2 {
    return Intl.message(
      '60–80 per minute',
      name: 'cpr_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `80–90 per minute`
  String get cpr_q4_opt3 {
    return Intl.message(
      '80–90 per minute',
      name: 'cpr_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `100–120 per minute`
  String get cpr_q4_opt4 {
    return Intl.message(
      '100–120 per minute',
      name: 'cpr_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `How deep should adult chest compressions generally be?`
  String get cpr_q5 {
    return Intl.message(
      'How deep should adult chest compressions generally be?',
      name: 'cpr_q5',
      desc: '',
      args: [],
    );
  }

  /// `About 1 cm`
  String get cpr_q5_opt1 {
    return Intl.message('About 1 cm', name: 'cpr_q5_opt1', desc: '', args: []);
  }

  /// `At least 5 cm, avoiding depths over 6 cm`
  String get cpr_q5_opt2 {
    return Intl.message(
      'At least 5 cm, avoiding depths over 6 cm',
      name: 'cpr_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `About 2 cm`
  String get cpr_q5_opt3 {
    return Intl.message('About 2 cm', name: 'cpr_q5_opt3', desc: '', args: []);
  }

  /// `As deep as possible`
  String get cpr_q5_opt4 {
    return Intl.message(
      'As deep as possible',
      name: 'cpr_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `An AED arrives while you are doing CPR. What should you do?`
  String get cpr_q6 {
    return Intl.message(
      'An AED arrives while you are doing CPR. What should you do?',
      name: 'cpr_q6',
      desc: '',
      args: [],
    );
  }

  /// `Ignore it until the ambulance arrives`
  String get cpr_q6_opt1 {
    return Intl.message(
      'Ignore it until the ambulance arrives',
      name: 'cpr_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Use it only if the person wakes up`
  String get cpr_q6_opt2 {
    return Intl.message(
      'Use it only if the person wakes up',
      name: 'cpr_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Turn it on and follow its voice prompts`
  String get cpr_q6_opt3 {
    return Intl.message(
      'Turn it on and follow its voice prompts',
      name: 'cpr_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Put the pads over clothing`
  String get cpr_q6_opt4 {
    return Intl.message(
      'Put the pads over clothing',
      name: 'cpr_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person with diabetes is shaky, sweaty, and confused but awake and able to swallow. What should you do?`
  String get diabetics_q1 {
    return Intl.message(
      'A person with diabetes is shaky, sweaty, and confused but awake and able to swallow. What should you do?',
      name: 'diabetics_q1',
      desc: '',
      args: [],
    );
  }

  /// `Give insulin immediately`
  String get diabetics_q1_opt1 {
    return Intl.message(
      'Give insulin immediately',
      name: 'diabetics_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Give fast-acting sugar and reassess promptly`
  String get diabetics_q1_opt2 {
    return Intl.message(
      'Give fast-acting sugar and reassess promptly',
      name: 'diabetics_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Make them exercise`
  String get diabetics_q1_opt3 {
    return Intl.message(
      'Make them exercise',
      name: 'diabetics_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ignore the symptoms`
  String get diabetics_q1_opt4 {
    return Intl.message(
      'Ignore the symptoms',
      name: 'diabetics_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you never give by mouth to someone who is unconscious or unable to swallow safely?`
  String get diabetics_q2 {
    return Intl.message(
      'What should you never give by mouth to someone who is unconscious or unable to swallow safely?',
      name: 'diabetics_q2',
      desc: '',
      args: [],
    );
  }

  /// `Emergency help`
  String get diabetics_q2_opt1 {
    return Intl.message(
      'Emergency help',
      name: 'diabetics_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Nothing; protect the airway`
  String get diabetics_q2_opt2 {
    return Intl.message(
      'Nothing; protect the airway',
      name: 'diabetics_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Food, drink, or glucose gel`
  String get diabetics_q2_opt3 {
    return Intl.message(
      'Food, drink, or glucose gel',
      name: 'diabetics_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `A call to emergency services`
  String get diabetics_q2_opt4 {
    return Intl.message(
      'A call to emergency services',
      name: 'diabetics_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which can indicate low blood glucose?`
  String get diabetics_q3 {
    return Intl.message(
      'Which can indicate low blood glucose?',
      name: 'diabetics_q3',
      desc: '',
      args: [],
    );
  }

  /// `A healed scar`
  String get diabetics_q3_opt1 {
    return Intl.message(
      'A healed scar',
      name: 'diabetics_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `A sprained ankle only`
  String get diabetics_q3_opt2 {
    return Intl.message(
      'A sprained ankle only',
      name: 'diabetics_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Normal breathing only`
  String get diabetics_q3_opt3 {
    return Intl.message(
      'Normal breathing only',
      name: 'diabetics_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Sweating, shaking, hunger, confusion, or unusual behaviour`
  String get diabetics_q3_opt4 {
    return Intl.message(
      'Sweating, shaking, hunger, confusion, or unusual behaviour',
      name: 'diabetics_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person with diabetes becomes unconscious. What is the safest response?`
  String get diabetics_q4 {
    return Intl.message(
      'A person with diabetes becomes unconscious. What is the safest response?',
      name: 'diabetics_q4',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services, check breathing, and give nothing by mouth`
  String get diabetics_q4_opt1 {
    return Intl.message(
      'Call emergency services, check breathing, and give nothing by mouth',
      name: 'diabetics_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Pour a sugary drink into their mouth`
  String get diabetics_q4_opt2 {
    return Intl.message(
      'Pour a sugary drink into their mouth',
      name: 'diabetics_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Force them to eat`
  String get diabetics_q4_opt3 {
    return Intl.message(
      'Force them to eat',
      name: 'diabetics_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Make them stand`
  String get diabetics_q4_opt4 {
    return Intl.message(
      'Make them stand',
      name: 'diabetics_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `After giving fast-acting sugar to a conscious person with suspected hypoglycaemia, what next?`
  String get diabetics_q5 {
    return Intl.message(
      'After giving fast-acting sugar to a conscious person with suspected hypoglycaemia, what next?',
      name: 'diabetics_q5',
      desc: '',
      args: [],
    );
  }

  /// `Send them to exercise`
  String get diabetics_q5_opt1 {
    return Intl.message(
      'Send them to exercise',
      name: 'diabetics_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Reassess after about 10–15 minutes and follow their plan or local guidance`
  String get diabetics_q5_opt2 {
    return Intl.message(
      'Reassess after about 10–15 minutes and follow their plan or local guidance',
      name: 'diabetics_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Give insulin immediately`
  String get diabetics_q5_opt3 {
    return Intl.message(
      'Give insulin immediately',
      name: 'diabetics_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Leave them alone`
  String get diabetics_q5_opt4 {
    return Intl.message(
      'Leave them alone',
      name: 'diabetics_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Why should you not give insulin as a first-aid guess when someone is confused?`
  String get diabetics_q6 {
    return Intl.message(
      'Why should you not give insulin as a first-aid guess when someone is confused?',
      name: 'diabetics_q6',
      desc: '',
      args: [],
    );
  }

  /// `It always cures confusion`
  String get diabetics_q6_opt1 {
    return Intl.message(
      'It always cures confusion',
      name: 'diabetics_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `It is a drink`
  String get diabetics_q6_opt2 {
    return Intl.message(
      'It is a drink',
      name: 'diabetics_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `It has no effect on glucose`
  String get diabetics_q6_opt3 {
    return Intl.message(
      'It has no effect on glucose',
      name: 'diabetics_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Wrong insulin use can dangerously lower blood glucose; assess and get appropriate help`
  String get diabetics_q6_opt4 {
    return Intl.message(
      'Wrong insulin use can dangerously lower blood glucose; assess and get appropriate help',
      name: 'diabetics_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `You find a person unconscious beside an open pill bottle. What should you do?`
  String get drug_overdose_q1 {
    return Intl.message(
      'You find a person unconscious beside an open pill bottle. What should you do?',
      name: 'drug_overdose_q1',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services, check breathing, and follow dispatcher instructions`
  String get drug_overdose_q1_opt1 {
    return Intl.message(
      'Call emergency services, check breathing, and follow dispatcher instructions',
      name: 'drug_overdose_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Make them vomit`
  String get drug_overdose_q1_opt2 {
    return Intl.message(
      'Make them vomit',
      name: 'drug_overdose_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Give coffee`
  String get drug_overdose_q1_opt3 {
    return Intl.message(
      'Give coffee',
      name: 'drug_overdose_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Let them sleep it off`
  String get drug_overdose_q1_opt4 {
    return Intl.message(
      'Let them sleep it off',
      name: 'drug_overdose_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which is a possible sign of opioid overdose?`
  String get drug_overdose_q2 {
    return Intl.message(
      'Which is a possible sign of opioid overdose?',
      name: 'drug_overdose_q2',
      desc: '',
      args: [],
    );
  }

  /// `A small paper cut`
  String get drug_overdose_q2_opt1 {
    return Intl.message(
      'A small paper cut',
      name: 'drug_overdose_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Slow or absent breathing and reduced responsiveness`
  String get drug_overdose_q2_opt2 {
    return Intl.message(
      'Slow or absent breathing and reduced responsiveness',
      name: 'drug_overdose_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `A healed bruise`
  String get drug_overdose_q2_opt3 {
    return Intl.message(
      'A healed bruise',
      name: 'drug_overdose_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Normal alertness`
  String get drug_overdose_q2_opt4 {
    return Intl.message(
      'Normal alertness',
      name: 'drug_overdose_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do if opioid overdose is suspected and naloxone is available?`
  String get drug_overdose_q3 {
    return Intl.message(
      'What should you do if opioid overdose is suspected and naloxone is available?',
      name: 'drug_overdose_q3',
      desc: '',
      args: [],
    );
  }

  /// `Wait until tomorrow`
  String get drug_overdose_q3_opt1 {
    return Intl.message(
      'Wait until tomorrow',
      name: 'drug_overdose_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Give food`
  String get drug_overdose_q3_opt2 {
    return Intl.message(
      'Give food',
      name: 'drug_overdose_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Use naloxone according to its instructions, call emergency services, and support breathing as directed`
  String get drug_overdose_q3_opt3 {
    return Intl.message(
      'Use naloxone according to its instructions, call emergency services, and support breathing as directed',
      name: 'drug_overdose_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Make the person walk`
  String get drug_overdose_q3_opt4 {
    return Intl.message(
      'Make the person walk',
      name: 'drug_overdose_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you avoid in a suspected overdose?`
  String get drug_overdose_q4 {
    return Intl.message(
      'What should you avoid in a suspected overdose?',
      name: 'drug_overdose_q4',
      desc: '',
      args: [],
    );
  }

  /// `Calling emergency services`
  String get drug_overdose_q4_opt1 {
    return Intl.message(
      'Calling emergency services',
      name: 'drug_overdose_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Keeping the medicine packaging`
  String get drug_overdose_q4_opt2 {
    return Intl.message(
      'Keeping the medicine packaging',
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

  /// `Inducing vomiting or giving anything by mouth to an unconscious person`
  String get drug_overdose_q4_opt4 {
    return Intl.message(
      'Inducing vomiting or giving anything by mouth to an unconscious person',
      name: 'drug_overdose_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person is very drowsy after taking unknown tablets but is still breathing. What should you do?`
  String get drug_overdose_q5 {
    return Intl.message(
      'A person is very drowsy after taking unknown tablets but is still breathing. What should you do?',
      name: 'drug_overdose_q5',
      desc: '',
      args: [],
    );
  }

  /// `Call poison/emergency services, monitor breathing, and follow instructions`
  String get drug_overdose_q5_opt1 {
    return Intl.message(
      'Call poison/emergency services, monitor breathing, and follow instructions',
      name: 'drug_overdose_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Leave them alone`
  String get drug_overdose_q5_opt2 {
    return Intl.message(
      'Leave them alone',
      name: 'drug_overdose_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Give alcohol`
  String get drug_overdose_q5_opt3 {
    return Intl.message(
      'Give alcohol',
      name: 'drug_overdose_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Make them vomit`
  String get drug_overdose_q5_opt4 {
    return Intl.message(
      'Make them vomit',
      name: 'drug_overdose_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What details should you share with responders?`
  String get drug_overdose_q6 {
    return Intl.message(
      'What details should you share with responders?',
      name: 'drug_overdose_q6',
      desc: '',
      args: [],
    );
  }

  /// `Only your opinion`
  String get drug_overdose_q6_opt1 {
    return Intl.message(
      'Only your opinion',
      name: 'drug_overdose_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Substance, estimated amount, time taken, and symptoms if known`
  String get drug_overdose_q6_opt2 {
    return Intl.message(
      'Substance, estimated amount, time taken, and symptoms if known',
      name: 'drug_overdose_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Only the person's age`
  String get drug_overdose_q6_opt3 {
    return Intl.message(
      'Only the person\'s age',
      name: 'drug_overdose_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Nothing`
  String get drug_overdose_q6_opt4 {
    return Intl.message(
      'Nothing',
      name: 'drug_overdose_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A cleaning product splashes into someone's eye. What should you do immediately?`
  String get eye_injury_q1 {
    return Intl.message(
      'A cleaning product splashes into someone\'s eye. What should you do immediately?',
      name: 'eye_injury_q1',
      desc: '',
      args: [],
    );
  }

  /// `Rub the eye`
  String get eye_injury_q1_opt1 {
    return Intl.message(
      'Rub the eye',
      name: 'eye_injury_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Rinse with clean, gently flowing water and seek urgent advice`
  String get eye_injury_q1_opt2 {
    return Intl.message(
      'Rinse with clean, gently flowing water and seek urgent advice',
      name: 'eye_injury_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Cover it without rinsing`
  String get eye_injury_q1_opt3 {
    return Intl.message(
      'Cover it without rinsing',
      name: 'eye_injury_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Put another chemical in the eye`
  String get eye_injury_q1_opt4 {
    return Intl.message(
      'Put another chemical in the eye',
      name: 'eye_injury_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A sharp object is embedded in an eye. What should you do?`
  String get eye_injury_q2 {
    return Intl.message(
      'A sharp object is embedded in an eye. What should you do?',
      name: 'eye_injury_q2',
      desc: '',
      args: [],
    );
  }

  /// `Pull it out`
  String get eye_injury_q2_opt1 {
    return Intl.message(
      'Pull it out',
      name: 'eye_injury_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Press on the eyeball`
  String get eye_injury_q2_opt2 {
    return Intl.message(
      'Press on the eyeball',
      name: 'eye_injury_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Do not remove it; shield the eye without pressure and seek emergency care`
  String get eye_injury_q2_opt3 {
    return Intl.message(
      'Do not remove it; shield the eye without pressure and seek emergency care',
      name: 'eye_injury_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ask the person to rub it`
  String get eye_injury_q2_opt4 {
    return Intl.message(
      'Ask the person to rub it',
      name: 'eye_injury_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A loose speck of dust is in the eye and there is no serious pain. What may help?`
  String get eye_injury_q3 {
    return Intl.message(
      'A loose speck of dust is in the eye and there is no serious pain. What may help?',
      name: 'eye_injury_q3',
      desc: '',
      args: [],
    );
  }

  /// `Scrape the eye with a blade`
  String get eye_injury_q3_opt1 {
    return Intl.message(
      'Scrape the eye with a blade',
      name: 'eye_injury_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Rub hard`
  String get eye_injury_q3_opt2 {
    return Intl.message(
      'Rub hard',
      name: 'eye_injury_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Use glue to trap it`
  String get eye_injury_q3_opt3 {
    return Intl.message(
      'Use glue to trap it',
      name: 'eye_injury_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Gently rinse with clean water`
  String get eye_injury_q3_opt4 {
    return Intl.message(
      'Gently rinse with clean water',
      name: 'eye_injury_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which eye-injury symptom needs urgent care?`
  String get eye_injury_q4 {
    return Intl.message(
      'Which eye-injury symptom needs urgent care?',
      name: 'eye_injury_q4',
      desc: '',
      args: [],
    );
  }

  /// `Sudden vision loss or severe eye pain`
  String get eye_injury_q4_opt1 {
    return Intl.message(
      'Sudden vision loss or severe eye pain',
      name: 'eye_injury_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `A small old scar near the eyebrow`
  String get eye_injury_q4_opt2 {
    return Intl.message(
      'A small old scar near the eyebrow',
      name: 'eye_injury_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Normal vision and no pain`
  String get eye_injury_q4_opt3 {
    return Intl.message(
      'Normal vision and no pain',
      name: 'eye_injury_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `A healed scratch`
  String get eye_injury_q4_opt4 {
    return Intl.message(
      'A healed scratch',
      name: 'eye_injury_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do if the eye is bruised after a blunt impact?`
  String get eye_injury_q5 {
    return Intl.message(
      'What should you do if the eye is bruised after a blunt impact?',
      name: 'eye_injury_q5',
      desc: '',
      args: [],
    );
  }

  /// `Press firmly on the eyeball`
  String get eye_injury_q5_opt1 {
    return Intl.message(
      'Press firmly on the eyeball',
      name: 'eye_injury_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Avoid pressure and seek assessment if pain, vision changes, or serious injury is present`
  String get eye_injury_q5_opt2 {
    return Intl.message(
      'Avoid pressure and seek assessment if pain, vision changes, or serious injury is present',
      name: 'eye_injury_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Rub it vigorously`
  String get eye_injury_q5_opt3 {
    return Intl.message(
      'Rub it vigorously',
      name: 'eye_injury_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Put medication in without advice`
  String get eye_injury_q5_opt4 {
    return Intl.message(
      'Put medication in without advice',
      name: 'eye_injury_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is unsafe when a foreign body may be embedded in the eye?`
  String get eye_injury_q6 {
    return Intl.message(
      'What is unsafe when a foreign body may be embedded in the eye?',
      name: 'eye_injury_q6',
      desc: '',
      args: [],
    );
  }

  /// `Protecting the eye`
  String get eye_injury_q6_opt1 {
    return Intl.message(
      'Protecting the eye',
      name: 'eye_injury_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Seeking medical help`
  String get eye_injury_q6_opt2 {
    return Intl.message(
      'Seeking medical help',
      name: 'eye_injury_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Trying to dig it out with tweezers`
  String get eye_injury_q6_opt3 {
    return Intl.message(
      'Trying to dig it out with tweezers',
      name: 'eye_injury_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Avoiding pressure`
  String get eye_injury_q6_opt4 {
    return Intl.message(
      'Avoiding pressure',
      name: 'eye_injury_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A cyclist has a visibly deformed forearm after a fall. What should you do?`
  String get fractures_q1 {
    return Intl.message(
      'A cyclist has a visibly deformed forearm after a fall. What should you do?',
      name: 'fractures_q1',
      desc: '',
      args: [],
    );
  }

  /// `Force it straight`
  String get fractures_q1_opt1 {
    return Intl.message(
      'Force it straight',
      name: 'fractures_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Support it in the position found and seek medical help`
  String get fractures_q1_opt2 {
    return Intl.message(
      'Support it in the position found and seek medical help',
      name: 'fractures_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Ask them to lift a heavy object`
  String get fractures_q1_opt3 {
    return Intl.message(
      'Ask them to lift a heavy object',
      name: 'fractures_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Massage it firmly`
  String get fractures_q1_opt4 {
    return Intl.message(
      'Massage it firmly',
      name: 'fractures_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Bone is visible through a wound. What should you do?`
  String get fractures_q2 {
    return Intl.message(
      'Bone is visible through a wound. What should you do?',
      name: 'fractures_q2',
      desc: '',
      args: [],
    );
  }

  /// `Push the bone back in`
  String get fractures_q2_opt1 {
    return Intl.message(
      'Push the bone back in',
      name: 'fractures_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Wash it with household bleach`
  String get fractures_q2_opt2 {
    return Intl.message(
      'Wash it with household bleach',
      name: 'fractures_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Apply pressure directly to the exposed bone`
  String get fractures_q2_opt3 {
    return Intl.message(
      'Apply pressure directly to the exposed bone',
      name: 'fractures_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Cover the wound with a sterile dressing and seek emergency care; do not push bone in`
  String get fractures_q2_opt4 {
    return Intl.message(
      'Cover the wound with a sterile dressing and seek emergency care; do not push bone in',
      name: 'fractures_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which can be a sign of fracture?`
  String get fractures_q3 {
    return Intl.message(
      'Which can be a sign of fracture?',
      name: 'fractures_q3',
      desc: '',
      args: [],
    );
  }

  /// `Pain, swelling, bruising, deformity, or loss of function`
  String get fractures_q3_opt1 {
    return Intl.message(
      'Pain, swelling, bruising, deformity, or loss of function',
      name: 'fractures_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `A normal painless movement`
  String get fractures_q3_opt2 {
    return Intl.message(
      'A normal painless movement',
      name: 'fractures_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `A healed scar`
  String get fractures_q3_opt3 {
    return Intl.message(
      'A healed scar',
      name: 'fractures_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `A mild sneeze`
  String get fractures_q3_opt4 {
    return Intl.message(
      'A mild sneeze',
      name: 'fractures_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Why support a suspected fracture?`
  String get fractures_q4 {
    return Intl.message(
      'Why support a suspected fracture?',
      name: 'fractures_q4',
      desc: '',
      args: [],
    );
  }

  /// `To test how much it can move`
  String get fractures_q4_opt1 {
    return Intl.message(
      'To test how much it can move',
      name: 'fractures_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `To make the bone rub`
  String get fractures_q4_opt2 {
    return Intl.message(
      'To make the bone rub',
      name: 'fractures_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `To reduce movement and pain while awaiting care`
  String get fractures_q4_opt3 {
    return Intl.message(
      'To reduce movement and pain while awaiting care',
      name: 'fractures_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `To force alignment`
  String get fractures_q4_opt4 {
    return Intl.message(
      'To force alignment',
      name: 'fractures_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person may have a broken leg after a serious fall. Should you make them walk to the car?`
  String get fractures_q5 {
    return Intl.message(
      'A person may have a broken leg after a serious fall. Should you make them walk to the car?',
      name: 'fractures_q5',
      desc: '',
      args: [],
    );
  }

  /// `Yes, to test the injury`
  String get fractures_q5_opt1 {
    return Intl.message(
      'Yes, to test the injury',
      name: 'fractures_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `No; keep them still and arrange appropriate emergency help`
  String get fractures_q5_opt2 {
    return Intl.message(
      'No; keep them still and arrange appropriate emergency help',
      name: 'fractures_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Only if you pull the leg`
  String get fractures_q5_opt3 {
    return Intl.message(
      'Only if you pull the leg',
      name: 'fractures_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Yes, if they are embarrassed`
  String get fractures_q5_opt4 {
    return Intl.message(
      'Yes, if they are embarrassed',
      name: 'fractures_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do if severe bleeding accompanies an open fracture?`
  String get fractures_q6 {
    return Intl.message(
      'What should you do if severe bleeding accompanies an open fracture?',
      name: 'fractures_q6',
      desc: '',
      args: [],
    );
  }

  /// `Ignore the bleeding`
  String get fractures_q6_opt1 {
    return Intl.message(
      'Ignore the bleeding',
      name: 'fractures_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Push bone back in first`
  String get fractures_q6_opt2 {
    return Intl.message(
      'Push bone back in first',
      name: 'fractures_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Make the person exercise`
  String get fractures_q6_opt3 {
    return Intl.message(
      'Make the person exercise',
      name: 'fractures_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Control life-threatening bleeding while avoiding pressure directly on exposed bone, and call for help`
  String get fractures_q6_opt4 {
    return Intl.message(
      'Control life-threatening bleeding while avoiding pressure directly on exposed bone, and call for help',
      name: 'fractures_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `After a fall, a person becomes increasingly confused and vomits repeatedly. What should you do?`
  String get head_injury_q1 {
    return Intl.message(
      'After a fall, a person becomes increasingly confused and vomits repeatedly. What should you do?',
      name: 'head_injury_q1',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services and monitor them`
  String get head_injury_q1_opt1 {
    return Intl.message(
      'Call emergency services and monitor them',
      name: 'head_injury_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Let them drive home`
  String get head_injury_q1_opt2 {
    return Intl.message(
      'Let them drive home',
      name: 'head_injury_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Give alcohol`
  String get head_injury_q1_opt3 {
    return Intl.message(
      'Give alcohol',
      name: 'head_injury_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Shake them`
  String get head_injury_q1_opt4 {
    return Intl.message(
      'Shake them',
      name: 'head_injury_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which symptom after head trauma is concerning?`
  String get head_injury_q2 {
    return Intl.message(
      'Which symptom after head trauma is concerning?',
      name: 'head_injury_q2',
      desc: '',
      args: [],
    );
  }

  /// `A healed scar`
  String get head_injury_q2_opt1 {
    return Intl.message(
      'A healed scar',
      name: 'head_injury_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Repeated vomiting, seizure, worsening headache, or confusion`
  String get head_injury_q2_opt2 {
    return Intl.message(
      'Repeated vomiting, seizure, worsening headache, or confusion',
      name: 'head_injury_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `A normal conversation`
  String get head_injury_q2_opt3 {
    return Intl.message(
      'A normal conversation',
      name: 'head_injury_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `A minor old bruise`
  String get head_injury_q2_opt4 {
    return Intl.message(
      'A minor old bruise',
      name: 'head_injury_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person has a head injury and possible neck injury. What should you do?`
  String get head_injury_q3 {
    return Intl.message(
      'A person has a head injury and possible neck injury. What should you do?',
      name: 'head_injury_q3',
      desc: '',
      args: [],
    );
  }

  /// `Twist the neck to test it`
  String get head_injury_q3_opt1 {
    return Intl.message(
      'Twist the neck to test it',
      name: 'head_injury_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Make them stand`
  String get head_injury_q3_opt2 {
    return Intl.message(
      'Make them stand',
      name: 'head_injury_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Minimize movement, monitor breathing, and call for help as needed`
  String get head_injury_q3_opt3 {
    return Intl.message(
      'Minimize movement, monitor breathing, and call for help as needed',
      name: 'head_injury_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Let them continue sport`
  String get head_injury_q3_opt4 {
    return Intl.message(
      'Let them continue sport',
      name: 'head_injury_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Can a serious head injury occur without a visible wound?`
  String get head_injury_q4 {
    return Intl.message(
      'Can a serious head injury occur without a visible wound?',
      name: 'head_injury_q4',
      desc: '',
      args: [],
    );
  }

  /// `No, never`
  String get head_injury_q4_opt1 {
    return Intl.message(
      'No, never',
      name: 'head_injury_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Only if there is bleeding`
  String get head_injury_q4_opt2 {
    return Intl.message(
      'Only if there is bleeding',
      name: 'head_injury_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Only in children`
  String get head_injury_q4_opt3 {
    return Intl.message(
      'Only in children',
      name: 'head_injury_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Yes; internal injury may exist without an obvious external wound`
  String get head_injury_q4_opt4 {
    return Intl.message(
      'Yes; internal injury may exist without an obvious external wound',
      name: 'head_injury_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do if a head-injured person becomes unresponsive and is not breathing normally?`
  String get head_injury_q5 {
    return Intl.message(
      'What should you do if a head-injured person becomes unresponsive and is not breathing normally?',
      name: 'head_injury_q5',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services and begin CPR`
  String get head_injury_q5_opt1 {
    return Intl.message(
      'Call emergency services and begin CPR',
      name: 'head_injury_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Give water`
  String get head_injury_q5_opt2 {
    return Intl.message(
      'Give water',
      name: 'head_injury_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Leave them alone`
  String get head_injury_q5_opt3 {
    return Intl.message(
      'Leave them alone',
      name: 'head_injury_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Place a pillow over their face`
  String get head_injury_q5_opt4 {
    return Intl.message(
      'Place a pillow over their face',
      name: 'head_injury_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Should a person return to sport immediately after a suspected concussion?`
  String get head_injury_q6 {
    return Intl.message(
      'Should a person return to sport immediately after a suspected concussion?',
      name: 'head_injury_q6',
      desc: '',
      args: [],
    );
  }

  /// `Yes, if they want`
  String get head_injury_q6_opt1 {
    return Intl.message(
      'Yes, if they want',
      name: 'head_injury_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `No; stop activity and arrange appropriate medical assessment`
  String get head_injury_q6_opt2 {
    return Intl.message(
      'No; stop activity and arrange appropriate medical assessment',
      name: 'head_injury_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Only after drinking water`
  String get head_injury_q6_opt3 {
    return Intl.message(
      'Only after drinking water',
      name: 'head_injury_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Yes, if there is no blood`
  String get head_injury_q6_opt4 {
    return Intl.message(
      'Yes, if there is no blood',
      name: 'head_injury_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person has chest pressure, sweating, and shortness of breath. What should you do?`
  String get heart_condition_q1 {
    return Intl.message(
      'A person has chest pressure, sweating, and shortness of breath. What should you do?',
      name: 'heart_condition_q1',
      desc: '',
      args: [],
    );
  }

  /// `Tell them to walk around`
  String get heart_condition_q1_opt1 {
    return Intl.message(
      'Tell them to walk around',
      name: 'heart_condition_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services and help them rest comfortably`
  String get heart_condition_q1_opt2 {
    return Intl.message(
      'Call emergency services and help them rest comfortably',
      name: 'heart_condition_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Wait an hour`
  String get heart_condition_q1_opt3 {
    return Intl.message(
      'Wait an hour',
      name: 'heart_condition_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Give a large meal`
  String get heart_condition_q1_opt4 {
    return Intl.message(
      'Give a large meal',
      name: 'heart_condition_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which symptom can occur during a heart attack?`
  String get heart_condition_q2 {
    return Intl.message(
      'Which symptom can occur during a heart attack?',
      name: 'heart_condition_q2',
      desc: '',
      args: [],
    );
  }

  /// `Only an itchy toe`
  String get heart_condition_q2_opt1 {
    return Intl.message(
      'Only an itchy toe',
      name: 'heart_condition_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `A paper cut`
  String get heart_condition_q2_opt2 {
    return Intl.message(
      'A paper cut',
      name: 'heart_condition_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Chest discomfort spreading to the arm, jaw, back, or shoulder`
  String get heart_condition_q2_opt3 {
    return Intl.message(
      'Chest discomfort spreading to the arm, jaw, back, or shoulder',
      name: 'heart_condition_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `A healed scar`
  String get heart_condition_q2_opt4 {
    return Intl.message(
      'A healed scar',
      name: 'heart_condition_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person with suspected heart attack becomes unresponsive and is not breathing normally. What now?`
  String get heart_condition_q3 {
    return Intl.message(
      'A person with suspected heart attack becomes unresponsive and is not breathing normally. What now?',
      name: 'heart_condition_q3',
      desc: '',
      args: [],
    );
  }

  /// `Give them a drink`
  String get heart_condition_q3_opt1 {
    return Intl.message(
      'Give them a drink',
      name: 'heart_condition_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Wait for the pain to stop`
  String get heart_condition_q3_opt2 {
    return Intl.message(
      'Wait for the pain to stop',
      name: 'heart_condition_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Drive them alone`
  String get heart_condition_q3_opt3 {
    return Intl.message(
      'Drive them alone',
      name: 'heart_condition_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services, start CPR, and use an AED if available`
  String get heart_condition_q3_opt4 {
    return Intl.message(
      'Call emergency services, start CPR, and use an AED if available',
      name: 'heart_condition_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Should a person with possible heart attack drive themselves to hospital?`
  String get heart_condition_q4 {
    return Intl.message(
      'Should a person with possible heart attack drive themselves to hospital?',
      name: 'heart_condition_q4',
      desc: '',
      args: [],
    );
  }

  /// `No; call emergency services`
  String get heart_condition_q4_opt1 {
    return Intl.message(
      'No; call emergency services',
      name: 'heart_condition_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Yes, at high speed`
  String get heart_condition_q4_opt2 {
    return Intl.message(
      'Yes, at high speed',
      name: 'heart_condition_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Only if pain is severe`
  String get heart_condition_q4_opt3 {
    return Intl.message(
      'Only if pain is severe',
      name: 'heart_condition_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Yes, if they feel dizzy`
  String get heart_condition_q4_opt4 {
    return Intl.message(
      'Yes, if they feel dizzy',
      name: 'heart_condition_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do while waiting for emergency help for suspected heart attack?`
  String get heart_condition_q5 {
    return Intl.message(
      'What should you do while waiting for emergency help for suspected heart attack?',
      name: 'heart_condition_q5',
      desc: '',
      args: [],
    );
  }

  /// `Make them exercise`
  String get heart_condition_q5_opt1 {
    return Intl.message(
      'Make them exercise',
      name: 'heart_condition_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Help them rest comfortably and monitor breathing and responsiveness`
  String get heart_condition_q5_opt2 {
    return Intl.message(
      'Help them rest comfortably and monitor breathing and responsiveness',
      name: 'heart_condition_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Give alcohol`
  String get heart_condition_q5_opt3 {
    return Intl.message(
      'Give alcohol',
      name: 'heart_condition_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Leave them alone`
  String get heart_condition_q5_opt4 {
    return Intl.message(
      'Leave them alone',
      name: 'heart_condition_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Should you give aspirin to every person with chest pain without checking anything?`
  String get heart_condition_q6 {
    return Intl.message(
      'Should you give aspirin to every person with chest pain without checking anything?',
      name: 'heart_condition_q6',
      desc: '',
      args: [],
    );
  }

  /// `Yes, always`
  String get heart_condition_q6_opt1 {
    return Intl.message(
      'Yes, always',
      name: 'heart_condition_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Only with food`
  String get heart_condition_q6_opt2 {
    return Intl.message(
      'Only with food',
      name: 'heart_condition_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `No; follow dispatcher/local guidance and consider allergy or contraindications`
  String get heart_condition_q6_opt3 {
    return Intl.message(
      'No; follow dispatcher/local guidance and consider allergy or contraindications',
      name: 'heart_condition_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Replace emergency services with aspirin`
  String get heart_condition_q6_opt4 {
    return Intl.message(
      'Replace emergency services with aspirin',
      name: 'heart_condition_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A child may have swallowed household cleaner but seems well. What should you do?`
  String get poisons_q1 {
    return Intl.message(
      'A child may have swallowed household cleaner but seems well. What should you do?',
      name: 'poisons_q1',
      desc: '',
      args: [],
    );
  }

  /// `Make them vomit`
  String get poisons_q1_opt1 {
    return Intl.message(
      'Make them vomit',
      name: 'poisons_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Contact a poison centre or emergency service promptly and keep the container`
  String get poisons_q1_opt2 {
    return Intl.message(
      'Contact a poison centre or emergency service promptly and keep the container',
      name: 'poisons_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Give milk to neutralize it`
  String get poisons_q1_opt3 {
    return Intl.message(
      'Give milk to neutralize it',
      name: 'poisons_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Wait until symptoms begin`
  String get poisons_q1_opt4 {
    return Intl.message(
      'Wait until symptoms begin',
      name: 'poisons_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Why should you not induce vomiting after a suspected poisoning?`
  String get poisons_q2 {
    return Intl.message(
      'Why should you not induce vomiting after a suspected poisoning?',
      name: 'poisons_q2',
      desc: '',
      args: [],
    );
  }

  /// `Vomiting always removes all poison`
  String get poisons_q2_opt1 {
    return Intl.message(
      'Vomiting always removes all poison',
      name: 'poisons_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `It is needed only for children`
  String get poisons_q2_opt2 {
    return Intl.message(
      'It is needed only for children',
      name: 'poisons_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `It makes every poison harmless`
  String get poisons_q2_opt3 {
    return Intl.message(
      'It makes every poison harmless',
      name: 'poisons_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `It can cause further injury or aspiration`
  String get poisons_q2_opt4 {
    return Intl.message(
      'It can cause further injury or aspiration',
      name: 'poisons_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person has collapsed after inhaling fumes in an enclosed room. What should you do?`
  String get poisons_q3 {
    return Intl.message(
      'A person has collapsed after inhaling fumes in an enclosed room. What should you do?',
      name: 'poisons_q3',
      desc: '',
      args: [],
    );
  }

  /// `Enter immediately without protection`
  String get poisons_q3_opt1 {
    return Intl.message(
      'Enter immediately without protection',
      name: 'poisons_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Light a match to check the air`
  String get poisons_q3_opt2 {
    return Intl.message(
      'Light a match to check the air',
      name: 'poisons_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Stay out of danger, call emergency services, and follow hazardous-material guidance`
  String get poisons_q3_opt3 {
    return Intl.message(
      'Stay out of danger, call emergency services, and follow hazardous-material guidance',
      name: 'poisons_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Open containers to identify the chemical`
  String get poisons_q3_opt4 {
    return Intl.message(
      'Open containers to identify the chemical',
      name: 'poisons_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A poison splashes into someone's eye. What should you do?`
  String get poisons_q4 {
    return Intl.message(
      'A poison splashes into someone\'s eye. What should you do?',
      name: 'poisons_q4',
      desc: '',
      args: [],
    );
  }

  /// `Immediately rinse with clean flowing water and seek poison/medical advice`
  String get poisons_q4_opt1 {
    return Intl.message(
      'Immediately rinse with clean flowing water and seek poison/medical advice',
      name: 'poisons_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Rub the eye`
  String get poisons_q4_opt2 {
    return Intl.message(
      'Rub the eye',
      name: 'poisons_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Cover it without rinsing`
  String get poisons_q4_opt3 {
    return Intl.message(
      'Cover it without rinsing',
      name: 'poisons_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Apply neutralizing chemicals`
  String get poisons_q4_opt4 {
    return Intl.message(
      'Apply neutralizing chemicals',
      name: 'poisons_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What information is useful when contacting a poison centre?`
  String get poisons_q5 {
    return Intl.message(
      'What information is useful when contacting a poison centre?',
      name: 'poisons_q5',
      desc: '',
      args: [],
    );
  }

  /// `Only the person's favourite food`
  String get poisons_q5_opt1 {
    return Intl.message(
      'Only the person\'s favourite food',
      name: 'poisons_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Substance name, estimated amount, time, and symptoms if known`
  String get poisons_q5_opt2 {
    return Intl.message(
      'Substance name, estimated amount, time, and symptoms if known',
      name: 'poisons_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Only the weather`
  String get poisons_q5_opt3 {
    return Intl.message(
      'Only the weather',
      name: 'poisons_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Nothing; discard the package`
  String get poisons_q5_opt4 {
    return Intl.message(
      'Nothing; discard the package',
      name: 'poisons_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `An unconscious person may have swallowed poison. What should you avoid?`
  String get poisons_q6 {
    return Intl.message(
      'An unconscious person may have swallowed poison. What should you avoid?',
      name: 'poisons_q6',
      desc: '',
      args: [],
    );
  }

  /// `Calling emergency services`
  String get poisons_q6_opt1 {
    return Intl.message(
      'Calling emergency services',
      name: 'poisons_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Monitoring breathing`
  String get poisons_q6_opt2 {
    return Intl.message(
      'Monitoring breathing',
      name: 'poisons_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Following dispatcher instructions`
  String get poisons_q6_opt3 {
    return Intl.message(
      'Following dispatcher instructions',
      name: 'poisons_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Giving anything by mouth`
  String get poisons_q6_opt4 {
    return Intl.message(
      'Giving anything by mouth',
      name: 'poisons_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `An adult is unconscious but breathing normally, with no suspected major trauma. What may be appropriate?`
  String get recovery_pos_q1 {
    return Intl.message(
      'An adult is unconscious but breathing normally, with no suspected major trauma. What may be appropriate?',
      name: 'recovery_pos_q1',
      desc: '',
      args: [],
    );
  }

  /// `Give them water`
  String get recovery_pos_q1_opt1 {
    return Intl.message(
      'Give them water',
      name: 'recovery_pos_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Make them sit upright alone`
  String get recovery_pos_q1_opt2 {
    return Intl.message(
      'Make them sit upright alone',
      name: 'recovery_pos_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Place them in the recovery position and monitor breathing`
  String get recovery_pos_q1_opt3 {
    return Intl.message(
      'Place them in the recovery position and monitor breathing',
      name: 'recovery_pos_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Begin abdominal thrusts`
  String get recovery_pos_q1_opt4 {
    return Intl.message(
      'Begin abdominal thrusts',
      name: 'recovery_pos_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is the main purpose of the recovery position?`
  String get recovery_pos_q2 {
    return Intl.message(
      'What is the main purpose of the recovery position?',
      name: 'recovery_pos_q2',
      desc: '',
      args: [],
    );
  }

  /// `To treat a broken bone`
  String get recovery_pos_q2_opt1 {
    return Intl.message(
      'To treat a broken bone',
      name: 'recovery_pos_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `To stop all seizures`
  String get recovery_pos_q2_opt2 {
    return Intl.message(
      'To stop all seizures',
      name: 'recovery_pos_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `To make the person wake instantly`
  String get recovery_pos_q2_opt3 {
    return Intl.message(
      'To make the person wake instantly',
      name: 'recovery_pos_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `To help maintain an open airway and allow fluids to drain`
  String get recovery_pos_q2_opt4 {
    return Intl.message(
      'To help maintain an open airway and allow fluids to drain',
      name: 'recovery_pos_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Should you use the recovery position for someone who is unresponsive and not breathing normally?`
  String get recovery_pos_q3 {
    return Intl.message(
      'Should you use the recovery position for someone who is unresponsive and not breathing normally?',
      name: 'recovery_pos_q3',
      desc: '',
      args: [],
    );
  }

  /// `No; call emergency services and begin CPR`
  String get recovery_pos_q3_opt1 {
    return Intl.message(
      'No; call emergency services and begin CPR',
      name: 'recovery_pos_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Yes, then leave them`
  String get recovery_pos_q3_opt2 {
    return Intl.message(
      'Yes, then leave them',
      name: 'recovery_pos_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Yes, instead of CPR`
  String get recovery_pos_q3_opt3 {
    return Intl.message(
      'Yes, instead of CPR',
      name: 'recovery_pos_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Only if they are elderly`
  String get recovery_pos_q3_opt4 {
    return Intl.message(
      'Only if they are elderly',
      name: 'recovery_pos_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do after placing someone in the recovery position?`
  String get recovery_pos_q4 {
    return Intl.message(
      'What should you do after placing someone in the recovery position?',
      name: 'recovery_pos_q4',
      desc: '',
      args: [],
    );
  }

  /// `Leave immediately`
  String get recovery_pos_q4_opt1 {
    return Intl.message(
      'Leave immediately',
      name: 'recovery_pos_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Continue monitoring their breathing and responsiveness`
  String get recovery_pos_q4_opt2 {
    return Intl.message(
      'Continue monitoring their breathing and responsiveness',
      name: 'recovery_pos_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Give them a drink`
  String get recovery_pos_q4_opt3 {
    return Intl.message(
      'Give them a drink',
      name: 'recovery_pos_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Assume they are fully safe`
  String get recovery_pos_q4_opt4 {
    return Intl.message(
      'Assume they are fully safe',
      name: 'recovery_pos_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person has a suspected spinal injury and is unconscious but breathing. What should you do?`
  String get recovery_pos_q5 {
    return Intl.message(
      'A person has a suspected spinal injury and is unconscious but breathing. What should you do?',
      name: 'recovery_pos_q5',
      desc: '',
      args: [],
    );
  }

  /// `Roll them alone without thought`
  String get recovery_pos_q5_opt1 {
    return Intl.message(
      'Roll them alone without thought',
      name: 'recovery_pos_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Ignore their airway`
  String get recovery_pos_q5_opt2 {
    return Intl.message(
      'Ignore their airway',
      name: 'recovery_pos_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services and follow dispatcher guidance; airway protection takes priority`
  String get recovery_pos_q5_opt3 {
    return Intl.message(
      'Call emergency services and follow dispatcher guidance; airway protection takes priority',
      name: 'recovery_pos_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Give food`
  String get recovery_pos_q5_opt4 {
    return Intl.message(
      'Give food',
      name: 'recovery_pos_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Why may the recovery position be useful after a seizure has stopped?`
  String get recovery_pos_q6 {
    return Intl.message(
      'Why may the recovery position be useful after a seizure has stopped?',
      name: 'recovery_pos_q6',
      desc: '',
      args: [],
    );
  }

  /// `It cures epilepsy`
  String get recovery_pos_q6_opt1 {
    return Intl.message(
      'It cures epilepsy',
      name: 'recovery_pos_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `It prevents all future seizures`
  String get recovery_pos_q6_opt2 {
    return Intl.message(
      'It prevents all future seizures',
      name: 'recovery_pos_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `It replaces emergency care in every case`
  String get recovery_pos_q6_opt3 {
    return Intl.message(
      'It replaces emergency care in every case',
      name: 'recovery_pos_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `If the person is breathing normally, it can help protect the airway during recovery`
  String get recovery_pos_q6_opt4 {
    return Intl.message(
      'If the person is breathing normally, it can help protect the airway during recovery',
      name: 'recovery_pos_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person collapses and begins jerking on the floor. What should you do?`
  String get seizures_q1 {
    return Intl.message(
      'A person collapses and begins jerking on the floor. What should you do?',
      name: 'seizures_q1',
      desc: '',
      args: [],
    );
  }

  /// `Protect them from nearby hazards, cushion their head, and time the seizure`
  String get seizures_q1_opt1 {
    return Intl.message(
      'Protect them from nearby hazards, cushion their head, and time the seizure',
      name: 'seizures_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Hold their limbs down`
  String get seizures_q1_opt2 {
    return Intl.message(
      'Hold their limbs down',
      name: 'seizures_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Put a spoon in their mouth`
  String get seizures_q1_opt3 {
    return Intl.message(
      'Put a spoon in their mouth',
      name: 'seizures_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Give water`
  String get seizures_q1_opt4 {
    return Intl.message(
      'Give water',
      name: 'seizures_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should never be placed in a person's mouth during a seizure?`
  String get seizures_q2 {
    return Intl.message(
      'What should never be placed in a person\'s mouth during a seizure?',
      name: 'seizures_q2',
      desc: '',
      args: [],
    );
  }

  /// `A soft cushion nearby`
  String get seizures_q2_opt1 {
    return Intl.message(
      'A soft cushion nearby',
      name: 'seizures_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Nothing; never put objects or fingers in the mouth`
  String get seizures_q2_opt2 {
    return Intl.message(
      'Nothing; never put objects or fingers in the mouth',
      name: 'seizures_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `A call to emergency services`
  String get seizures_q2_opt3 {
    return Intl.message(
      'A call to emergency services',
      name: 'seizures_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `A timer`
  String get seizures_q2_opt4 {
    return Intl.message(
      'A timer',
      name: 'seizures_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When should emergency services be called for a seizure?`
  String get seizures_q3 {
    return Intl.message(
      'When should emergency services be called for a seizure?',
      name: 'seizures_q3',
      desc: '',
      args: [],
    );
  }

  /// `Only if the person asks tomorrow`
  String get seizures_q3_opt1 {
    return Intl.message(
      'Only if the person asks tomorrow',
      name: 'seizures_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Never`
  String get seizures_q3_opt2 {
    return Intl.message('Never', name: 'seizures_q3_opt2', desc: '', args: []);
  }

  /// `If it lasts 5 minutes or longer, repeats without recovery, is a first seizure, or other danger signs occur`
  String get seizures_q3_opt3 {
    return Intl.message(
      'If it lasts 5 minutes or longer, repeats without recovery, is a first seizure, or other danger signs occur',
      name: 'seizures_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Only if they bite their tongue`
  String get seizures_q3_opt4 {
    return Intl.message(
      'Only if they bite their tongue',
      name: 'seizures_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do after the jerking stops if the person is breathing normally and no major trauma is suspected?`
  String get seizures_q4 {
    return Intl.message(
      'What should you do after the jerking stops if the person is breathing normally and no major trauma is suspected?',
      name: 'seizures_q4',
      desc: '',
      args: [],
    );
  }

  /// `Make them stand immediately`
  String get seizures_q4_opt1 {
    return Intl.message(
      'Make them stand immediately',
      name: 'seizures_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Give food at once`
  String get seizures_q4_opt2 {
    return Intl.message(
      'Give food at once',
      name: 'seizures_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Leave them alone`
  String get seizures_q4_opt3 {
    return Intl.message(
      'Leave them alone',
      name: 'seizures_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Place them in the recovery position and monitor them`
  String get seizures_q4_opt4 {
    return Intl.message(
      'Place them in the recovery position and monitor them',
      name: 'seizures_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Should you restrain someone having a seizure?`
  String get seizures_q5 {
    return Intl.message(
      'Should you restrain someone having a seizure?',
      name: 'seizures_q5',
      desc: '',
      args: [],
    );
  }

  /// `No; clear hazards and protect them instead`
  String get seizures_q5_opt1 {
    return Intl.message(
      'No; clear hazards and protect them instead',
      name: 'seizures_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Yes, hold them down tightly`
  String get seizures_q5_opt2 {
    return Intl.message(
      'Yes, hold them down tightly',
      name: 'seizures_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Tie their arms`
  String get seizures_q5_opt3 {
    return Intl.message(
      'Tie their arms',
      name: 'seizures_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Sit on their legs`
  String get seizures_q5_opt4 {
    return Intl.message(
      'Sit on their legs',
      name: 'seizures_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Why is timing a seizure useful?`
  String get seizures_q6 {
    return Intl.message(
      'Why is timing a seizure useful?',
      name: 'seizures_q6',
      desc: '',
      args: [],
    );
  }

  /// `It makes the seizure stop`
  String get seizures_q6_opt1 {
    return Intl.message(
      'It makes the seizure stop',
      name: 'seizures_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Duration helps determine whether emergency treatment is needed`
  String get seizures_q6_opt2 {
    return Intl.message(
      'Duration helps determine whether emergency treatment is needed',
      name: 'seizures_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `It replaces all assessment`
  String get seizures_q6_opt3 {
    return Intl.message(
      'It replaces all assessment',
      name: 'seizures_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `It prevents recurrence`
  String get seizures_q6_opt4 {
    return Intl.message(
      'It prevents recurrence',
      name: 'seizures_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `After a serious injury, a person is pale, clammy, and confused. What may this indicate?`
  String get shock_q1 {
    return Intl.message(
      'After a serious injury, a person is pale, clammy, and confused. What may this indicate?',
      name: 'shock_q1',
      desc: '',
      args: [],
    );
  }

  /// `A mild sunburn`
  String get shock_q1_opt1 {
    return Intl.message(
      'A mild sunburn',
      name: 'shock_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Normal relaxation`
  String get shock_q1_opt2 {
    return Intl.message(
      'Normal relaxation',
      name: 'shock_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Possible medical shock`
  String get shock_q1_opt3 {
    return Intl.message(
      'Possible medical shock',
      name: 'shock_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `A healed bruise`
  String get shock_q1_opt4 {
    return Intl.message(
      'A healed bruise',
      name: 'shock_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do if you suspect shock?`
  String get shock_q2 {
    return Intl.message(
      'What should you do if you suspect shock?',
      name: 'shock_q2',
      desc: '',
      args: [],
    );
  }

  /// `Give alcohol`
  String get shock_q2_opt1 {
    return Intl.message(
      'Give alcohol',
      name: 'shock_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Make the person walk`
  String get shock_q2_opt2 {
    return Intl.message(
      'Make the person walk',
      name: 'shock_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Give a large meal`
  String get shock_q2_opt3 {
    return Intl.message(
      'Give a large meal',
      name: 'shock_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services, treat the cause when possible, keep them warm, and monitor breathing`
  String get shock_q2_opt4 {
    return Intl.message(
      'Call emergency services, treat the cause when possible, keep them warm, and monitor breathing',
      name: 'shock_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Should you give food or drink to someone in shock?`
  String get shock_q3 {
    return Intl.message(
      'Should you give food or drink to someone in shock?',
      name: 'shock_q3',
      desc: '',
      args: [],
    );
  }

  /// `No; avoid oral intake and follow emergency guidance`
  String get shock_q3_opt1 {
    return Intl.message(
      'No; avoid oral intake and follow emergency guidance',
      name: 'shock_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Yes, always`
  String get shock_q3_opt2 {
    return Intl.message(
      'Yes, always',
      name: 'shock_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Only alcohol`
  String get shock_q3_opt3 {
    return Intl.message(
      'Only alcohol',
      name: 'shock_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Give a large meal`
  String get shock_q3_opt4 {
    return Intl.message(
      'Give a large meal',
      name: 'shock_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person in shock is bleeding heavily. What should you prioritize?`
  String get shock_q4 {
    return Intl.message(
      'A person in shock is bleeding heavily. What should you prioritize?',
      name: 'shock_q4',
      desc: '',
      args: [],
    );
  }

  /// `Ask them to stand`
  String get shock_q4_opt1 {
    return Intl.message(
      'Ask them to stand',
      name: 'shock_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Control severe bleeding and call emergency services`
  String get shock_q4_opt2 {
    return Intl.message(
      'Control severe bleeding and call emergency services',
      name: 'shock_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Give coffee`
  String get shock_q4_opt3 {
    return Intl.message(
      'Give coffee',
      name: 'shock_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Leave them alone`
  String get shock_q4_opt4 {
    return Intl.message(
      'Leave them alone',
      name: 'shock_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do to help maintain body warmth?`
  String get shock_q5 {
    return Intl.message(
      'What should you do to help maintain body warmth?',
      name: 'shock_q5',
      desc: '',
      args: [],
    );
  }

  /// `Put them in an ice bath`
  String get shock_q5_opt1 {
    return Intl.message(
      'Put them in an ice bath',
      name: 'shock_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Make them exercise`
  String get shock_q5_opt2 {
    return Intl.message(
      'Make them exercise',
      name: 'shock_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Cover them with a blanket or clothing if appropriate`
  String get shock_q5_opt3 {
    return Intl.message(
      'Cover them with a blanket or clothing if appropriate',
      name: 'shock_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Pour cold water on them`
  String get shock_q5_opt4 {
    return Intl.message(
      'Pour cold water on them',
      name: 'shock_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Should you always raise a person's legs if you suspect shock?`
  String get shock_q6 {
    return Intl.message(
      'Should you always raise a person\'s legs if you suspect shock?',
      name: 'shock_q6',
      desc: '',
      args: [],
    );
  }

  /// `Yes, even if they have a spinal injury`
  String get shock_q6_opt1 {
    return Intl.message(
      'Yes, even if they have a spinal injury',
      name: 'shock_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Yes, even if breathing worsens`
  String get shock_q6_opt2 {
    return Intl.message(
      'Yes, even if breathing worsens',
      name: 'shock_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Only if they are unconscious`
  String get shock_q6_opt3 {
    return Intl.message(
      'Only if they are unconscious',
      name: 'shock_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `No; position them safely and avoid elevation if it worsens breathing or injury`
  String get shock_q6_opt4 {
    return Intl.message(
      'No; position them safely and avoid elevation if it worsens breathing or injury',
      name: 'shock_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person falls from a ladder and reports neck pain with tingling in both hands. What should you do?`
  String get spinal_injury_q1 {
    return Intl.message(
      'A person falls from a ladder and reports neck pain with tingling in both hands. What should you do?',
      name: 'spinal_injury_q1',
      desc: '',
      args: [],
    );
  }

  /// `Tell them to stay still, support the head without forcing alignment, and call emergency services`
  String get spinal_injury_q1_opt1 {
    return Intl.message(
      'Tell them to stay still, support the head without forcing alignment, and call emergency services',
      name: 'spinal_injury_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Help them stand`
  String get spinal_injury_q1_opt2 {
    return Intl.message(
      'Help them stand',
      name: 'spinal_injury_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Twist the neck to test it`
  String get spinal_injury_q1_opt3 {
    return Intl.message(
      'Twist the neck to test it',
      name: 'spinal_injury_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Massage the neck`
  String get spinal_injury_q1_opt4 {
    return Intl.message(
      'Massage the neck',
      name: 'spinal_injury_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you avoid when spinal injury is suspected?`
  String get spinal_injury_q2 {
    return Intl.message(
      'What should you avoid when spinal injury is suspected?',
      name: 'spinal_injury_q2',
      desc: '',
      args: [],
    );
  }

  /// `Calling for help`
  String get spinal_injury_q2_opt1 {
    return Intl.message(
      'Calling for help',
      name: 'spinal_injury_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Unnecessary bending, twisting, or movement of the head, neck, or back`
  String get spinal_injury_q2_opt2 {
    return Intl.message(
      'Unnecessary bending, twisting, or movement of the head, neck, or back',
      name: 'spinal_injury_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Monitoring breathing`
  String get spinal_injury_q2_opt3 {
    return Intl.message(
      'Monitoring breathing',
      name: 'spinal_injury_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Reassuring the person`
  String get spinal_injury_q2_opt4 {
    return Intl.message(
      'Reassuring the person',
      name: 'spinal_injury_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which may indicate spinal cord involvement?`
  String get spinal_injury_q3 {
    return Intl.message(
      'Which may indicate spinal cord involvement?',
      name: 'spinal_injury_q3',
      desc: '',
      args: [],
    );
  }

  /// `A small bruise only`
  String get spinal_injury_q3_opt1 {
    return Intl.message(
      'A small bruise only',
      name: 'spinal_injury_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `A healed scar`
  String get spinal_injury_q3_opt2 {
    return Intl.message(
      'A healed scar',
      name: 'spinal_injury_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Numbness, tingling, weakness, or loss of movement after trauma`
  String get spinal_injury_q3_opt3 {
    return Intl.message(
      'Numbness, tingling, weakness, or loss of movement after trauma',
      name: 'spinal_injury_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `A normal appetite`
  String get spinal_injury_q3_opt4 {
    return Intl.message(
      'A normal appetite',
      name: 'spinal_injury_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What takes priority if a person with suspected spinal injury is not breathing normally?`
  String get spinal_injury_q4 {
    return Intl.message(
      'What takes priority if a person with suspected spinal injury is not breathing normally?',
      name: 'spinal_injury_q4',
      desc: '',
      args: [],
    );
  }

  /// `Keeping them perfectly still regardless of breathing`
  String get spinal_injury_q4_opt1 {
    return Intl.message(
      'Keeping them perfectly still regardless of breathing',
      name: 'spinal_injury_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Waiting for a specialist without action`
  String get spinal_injury_q4_opt2 {
    return Intl.message(
      'Waiting for a specialist without action',
      name: 'spinal_injury_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Moving them only to make them comfortable`
  String get spinal_injury_q4_opt3 {
    return Intl.message(
      'Moving them only to make them comfortable',
      name: 'spinal_injury_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Airway and breathing; follow dispatcher instructions and move if needed to save life`
  String get spinal_injury_q4_opt4 {
    return Intl.message(
      'Airway and breathing; follow dispatcher instructions and move if needed to save life',
      name: 'spinal_injury_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Should you try to straighten a person's neck after a crash?`
  String get spinal_injury_q5 {
    return Intl.message(
      'Should you try to straighten a person\'s neck after a crash?',
      name: 'spinal_injury_q5',
      desc: '',
      args: [],
    );
  }

  /// `No; support in the position found without forcing movement`
  String get spinal_injury_q5_opt1 {
    return Intl.message(
      'No; support in the position found without forcing movement',
      name: 'spinal_injury_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Yes, quickly`
  String get spinal_injury_q5_opt2 {
    return Intl.message(
      'Yes, quickly',
      name: 'spinal_injury_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Only by twisting it`
  String get spinal_injury_q5_opt3 {
    return Intl.message(
      'Only by twisting it',
      name: 'spinal_injury_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ask them to rotate repeatedly`
  String get spinal_injury_q5_opt4 {
    return Intl.message(
      'Ask them to rotate repeatedly',
      name: 'spinal_injury_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person with possible spinal injury is in immediate danger from fire. What should you do?`
  String get spinal_injury_q6 {
    return Intl.message(
      'A person with possible spinal injury is in immediate danger from fire. What should you do?',
      name: 'spinal_injury_q6',
      desc: '',
      args: [],
    );
  }

  /// `Never move them under any circumstances`
  String get spinal_injury_q6_opt1 {
    return Intl.message(
      'Never move them under any circumstances',
      name: 'spinal_injury_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Get them away from immediate danger as safely as possible and call emergency services`
  String get spinal_injury_q6_opt2 {
    return Intl.message(
      'Get them away from immediate danger as safely as possible and call emergency services',
      name: 'spinal_injury_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Wait for the fire to reach them`
  String get spinal_injury_q6_opt3 {
    return Intl.message(
      'Wait for the fire to reach them',
      name: 'spinal_injury_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ask them to crawl alone`
  String get spinal_injury_q6_opt4 {
    return Intl.message(
      'Ask them to crawl alone',
      name: 'spinal_injury_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A runner twists an ankle and develops pain and swelling. What is a reasonable initial response?`
  String get sprainstrains_q1 {
    return Intl.message(
      'A runner twists an ankle and develops pain and swelling. What is a reasonable initial response?',
      name: 'sprainstrains_q1',
      desc: '',
      args: [],
    );
  }

  /// `Continue running to loosen it`
  String get sprainstrains_q1_opt1 {
    return Intl.message(
      'Continue running to loosen it',
      name: 'sprainstrains_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Massage forcefully`
  String get sprainstrains_q1_opt2 {
    return Intl.message(
      'Massage forcefully',
      name: 'sprainstrains_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Stop activity, protect the injury, and use a wrapped cold pack for short periods`
  String get sprainstrains_q1_opt3 {
    return Intl.message(
      'Stop activity, protect the injury, and use a wrapped cold pack for short periods',
      name: 'sprainstrains_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Apply direct heat immediately`
  String get sprainstrains_q1_opt4 {
    return Intl.message(
      'Apply direct heat immediately',
      name: 'sprainstrains_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a sprain?`
  String get sprainstrains_q2 {
    return Intl.message(
      'What is a sprain?',
      name: 'sprainstrains_q2',
      desc: '',
      args: [],
    );
  }

  /// `A bone infection`
  String get sprainstrains_q2_opt1 {
    return Intl.message(
      'A bone infection',
      name: 'sprainstrains_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `A burn`
  String get sprainstrains_q2_opt2 {
    return Intl.message(
      'A burn',
      name: 'sprainstrains_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `A skin rash`
  String get sprainstrains_q2_opt3 {
    return Intl.message(
      'A skin rash',
      name: 'sprainstrains_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `An injury to a ligament around a joint`
  String get sprainstrains_q2_opt4 {
    return Intl.message(
      'An injury to a ligament around a joint',
      name: 'sprainstrains_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a strain?`
  String get sprainstrains_q3 {
    return Intl.message(
      'What is a strain?',
      name: 'sprainstrains_q3',
      desc: '',
      args: [],
    );
  }

  /// `An injury to a muscle or tendon`
  String get sprainstrains_q3_opt1 {
    return Intl.message(
      'An injury to a muscle or tendon',
      name: 'sprainstrains_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `A broken bone only`
  String get sprainstrains_q3_opt2 {
    return Intl.message(
      'A broken bone only',
      name: 'sprainstrains_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `A cut to the skin`
  String get sprainstrains_q3_opt3 {
    return Intl.message(
      'A cut to the skin',
      name: 'sprainstrains_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `An allergic reaction`
  String get sprainstrains_q3_opt4 {
    return Intl.message(
      'An allergic reaction',
      name: 'sprainstrains_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `How should a cold pack be applied?`
  String get sprainstrains_q4 {
    return Intl.message(
      'How should a cold pack be applied?',
      name: 'sprainstrains_q4',
      desc: '',
      args: [],
    );
  }

  /// `Directly on bare skin for hours`
  String get sprainstrains_q4_opt1 {
    return Intl.message(
      'Directly on bare skin for hours',
      name: 'sprainstrains_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Wrapped in cloth for short intervals`
  String get sprainstrains_q4_opt2 {
    return Intl.message(
      'Wrapped in cloth for short intervals',
      name: 'sprainstrains_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Inside an open wound`
  String get sprainstrains_q4_opt3 {
    return Intl.message(
      'Inside an open wound',
      name: 'sprainstrains_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `While the person sleeps with it attached`
  String get sprainstrains_q4_opt4 {
    return Intl.message(
      'While the person sleeps with it attached',
      name: 'sprainstrains_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which sign suggests the injury needs medical assessment?`
  String get sprainstrains_q5 {
    return Intl.message(
      'Which sign suggests the injury needs medical assessment?',
      name: 'sprainstrains_q5',
      desc: '',
      args: [],
    );
  }

  /// `Mild discomfort that quickly improves`
  String get sprainstrains_q5_opt1 {
    return Intl.message(
      'Mild discomfort that quickly improves',
      name: 'sprainstrains_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `A small old bruise`
  String get sprainstrains_q5_opt2 {
    return Intl.message(
      'A small old bruise',
      name: 'sprainstrains_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Severe pain, deformity, numbness, or inability to bear weight`
  String get sprainstrains_q5_opt3 {
    return Intl.message(
      'Severe pain, deformity, numbness, or inability to bear weight',
      name: 'sprainstrains_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Normal movement without pain`
  String get sprainstrains_q5_opt4 {
    return Intl.message(
      'Normal movement without pain',
      name: 'sprainstrains_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Should you force a joint through painful movement to test it?`
  String get sprainstrains_q6 {
    return Intl.message(
      'Should you force a joint through painful movement to test it?',
      name: 'sprainstrains_q6',
      desc: '',
      args: [],
    );
  }

  /// `Yes, repeatedly`
  String get sprainstrains_q6_opt1 {
    return Intl.message(
      'Yes, repeatedly',
      name: 'sprainstrains_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Yes, with a sudden twist`
  String get sprainstrains_q6_opt2 {
    return Intl.message(
      'Yes, with a sudden twist',
      name: 'sprainstrains_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Only after swelling worsens`
  String get sprainstrains_q6_opt3 {
    return Intl.message(
      'Only after swelling worsens',
      name: 'sprainstrains_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `No; avoid painful movement and protect the injury`
  String get sprainstrains_q6_opt4 {
    return Intl.message(
      'No; avoid painful movement and protect the injury',
      name: 'sprainstrains_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person's face droops on one side and one arm becomes weak suddenly. What should you do?`
  String get stroke_q1 {
    return Intl.message(
      'A person\'s face droops on one side and one arm becomes weak suddenly. What should you do?',
      name: 'stroke_q1',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services immediately and note when symptoms began`
  String get stroke_q1_opt1 {
    return Intl.message(
      'Call emergency services immediately and note when symptoms began',
      name: 'stroke_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Let them sleep`
  String get stroke_q1_opt2 {
    return Intl.message(
      'Let them sleep',
      name: 'stroke_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Give food and drink`
  String get stroke_q1_opt3 {
    return Intl.message(
      'Give food and drink',
      name: 'stroke_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Wait an hour`
  String get stroke_q1_opt4 {
    return Intl.message(
      'Wait an hour',
      name: 'stroke_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What does FAST commonly help identify?`
  String get stroke_q2 {
    return Intl.message(
      'What does FAST commonly help identify?',
      name: 'stroke_q2',
      desc: '',
      args: [],
    );
  }

  /// `A broken ankle`
  String get stroke_q2_opt1 {
    return Intl.message(
      'A broken ankle',
      name: 'stroke_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Face drooping, Arm weakness, Speech difficulty, Time to call emergency services`
  String get stroke_q2_opt2 {
    return Intl.message(
      'Face drooping, Arm weakness, Speech difficulty, Time to call emergency services',
      name: 'stroke_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `A burn depth`
  String get stroke_q2_opt3 {
    return Intl.message(
      'A burn depth',
      name: 'stroke_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Low temperature`
  String get stroke_q2_opt4 {
    return Intl.message(
      'Low temperature',
      name: 'stroke_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person's speech suddenly becomes slurred, but symptoms improve after five minutes. What should you do?`
  String get stroke_q3 {
    return Intl.message(
      'A person\'s speech suddenly becomes slurred, but symptoms improve after five minutes. What should you do?',
      name: 'stroke_q3',
      desc: '',
      args: [],
    );
  }

  /// `Ignore it because it stopped`
  String get stroke_q3_opt1 {
    return Intl.message(
      'Ignore it because it stopped',
      name: 'stroke_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Give them a snack`
  String get stroke_q3_opt2 {
    return Intl.message(
      'Give them a snack',
      name: 'stroke_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Seek emergency medical help; transient symptoms may still be serious`
  String get stroke_q3_opt3 {
    return Intl.message(
      'Seek emergency medical help; transient symptoms may still be serious',
      name: 'stroke_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ask them to drive`
  String get stroke_q3_opt4 {
    return Intl.message(
      'Ask them to drive',
      name: 'stroke_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Should you give food, drink, or medication to a person with suspected stroke before assessment?`
  String get stroke_q4 {
    return Intl.message(
      'Should you give food, drink, or medication to a person with suspected stroke before assessment?',
      name: 'stroke_q4',
      desc: '',
      args: [],
    );
  }

  /// `Yes, always`
  String get stroke_q4_opt1 {
    return Intl.message(
      'Yes, always',
      name: 'stroke_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Give water to test swallowing`
  String get stroke_q4_opt2 {
    return Intl.message(
      'Give water to test swallowing',
      name: 'stroke_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Give any available aspirin`
  String get stroke_q4_opt3 {
    return Intl.message(
      'Give any available aspirin',
      name: 'stroke_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `No; swallowing may be unsafe and treatment decisions need professionals`
  String get stroke_q4_opt4 {
    return Intl.message(
      'No; swallowing may be unsafe and treatment decisions need professionals',
      name: 'stroke_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Why should you note the time symptoms started or when the person was last well?`
  String get stroke_q5 {
    return Intl.message(
      'Why should you note the time symptoms started or when the person was last well?',
      name: 'stroke_q5',
      desc: '',
      args: [],
    );
  }

  /// `It helps clinicians determine treatment options`
  String get stroke_q5_opt1 {
    return Intl.message(
      'It helps clinicians determine treatment options',
      name: 'stroke_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `It replaces calling emergency services`
  String get stroke_q5_opt2 {
    return Intl.message(
      'It replaces calling emergency services',
      name: 'stroke_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `It makes symptoms stop`
  String get stroke_q5_opt3 {
    return Intl.message(
      'It makes symptoms stop',
      name: 'stroke_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `It identifies the person's blood type`
  String get stroke_q5_opt4 {
    return Intl.message(
      'It identifies the person\'s blood type',
      name: 'stroke_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which can be a stroke symptom besides facial droop?`
  String get stroke_q6 {
    return Intl.message(
      'Which can be a stroke symptom besides facial droop?',
      name: 'stroke_q6',
      desc: '',
      args: [],
    );
  }

  /// `A healed scar`
  String get stroke_q6_opt1 {
    return Intl.message(
      'A healed scar',
      name: 'stroke_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Sudden vision problems, balance difficulty, or severe unexplained headache`
  String get stroke_q6_opt2 {
    return Intl.message(
      'Sudden vision problems, balance difficulty, or severe unexplained headache',
      name: 'stroke_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `A small paper cut`
  String get stroke_q6_opt3 {
    return Intl.message(
      'A small paper cut',
      name: 'stroke_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Mild thirst only`
  String get stroke_q6_opt4 {
    return Intl.message(
      'Mild thirst only',
      name: 'stroke_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do before treating a minor wound if possible?`
  String get wound_care_q1 {
    return Intl.message(
      'What should you do before treating a minor wound if possible?',
      name: 'wound_care_q1',
      desc: '',
      args: [],
    );
  }

  /// `Touch it with dirty hands`
  String get wound_care_q1_opt1 {
    return Intl.message(
      'Touch it with dirty hands',
      name: 'wound_care_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Apply soil`
  String get wound_care_q1_opt2 {
    return Intl.message(
      'Apply soil',
      name: 'wound_care_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Clean your hands and use gloves or a barrier if available`
  String get wound_care_q1_opt3 {
    return Intl.message(
      'Clean your hands and use gloves or a barrier if available',
      name: 'wound_care_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Pour bleach on it`
  String get wound_care_q1_opt4 {
    return Intl.message(
      'Pour bleach on it',
      name: 'wound_care_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `How should a small superficial cut generally be cleaned?`
  String get wound_care_q2 {
    return Intl.message(
      'How should a small superficial cut generally be cleaned?',
      name: 'wound_care_q2',
      desc: '',
      args: [],
    );
  }

  /// `With household bleach`
  String get wound_care_q2_opt1 {
    return Intl.message(
      'With household bleach',
      name: 'wound_care_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `By scraping it deeply`
  String get wound_care_q2_opt2 {
    return Intl.message(
      'By scraping it deeply',
      name: 'wound_care_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `By sucking on it`
  String get wound_care_q2_opt3 {
    return Intl.message(
      'By sucking on it',
      name: 'wound_care_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Rinse with clean running water and gently clean around it`
  String get wound_care_q2_opt4 {
    return Intl.message(
      'Rinse with clean running water and gently clean around it',
      name: 'wound_care_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A wound is bleeding heavily. What comes first?`
  String get wound_care_q3 {
    return Intl.message(
      'A wound is bleeding heavily. What comes first?',
      name: 'wound_care_q3',
      desc: '',
      args: [],
    );
  }

  /// `Firm, continuous direct pressure and emergency help as needed`
  String get wound_care_q3_opt1 {
    return Intl.message(
      'Firm, continuous direct pressure and emergency help as needed',
      name: 'wound_care_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Apply ointment before pressure`
  String get wound_care_q3_opt2 {
    return Intl.message(
      'Apply ointment before pressure',
      name: 'wound_care_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Let it bleed`
  String get wound_care_q3_opt3 {
    return Intl.message(
      'Let it bleed',
      name: 'wound_care_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Wash it for a long time first`
  String get wound_care_q3_opt4 {
    return Intl.message(
      'Wash it for a long time first',
      name: 'wound_care_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do with dirt in a shallow wound?`
  String get wound_care_q4 {
    return Intl.message(
      'What should you do with dirt in a shallow wound?',
      name: 'wound_care_q4',
      desc: '',
      args: [],
    );
  }

  /// `Push it deeper`
  String get wound_care_q4_opt1 {
    return Intl.message(
      'Push it deeper',
      name: 'wound_care_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Rinse it with clean water; seek care if debris cannot be removed or the wound is serious`
  String get wound_care_q4_opt2 {
    return Intl.message(
      'Rinse it with clean water; seek care if debris cannot be removed or the wound is serious',
      name: 'wound_care_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Seal it under glue immediately`
  String get wound_care_q4_opt3 {
    return Intl.message(
      'Seal it under glue immediately',
      name: 'wound_care_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Use a sharp object to dig deeply`
  String get wound_care_q4_opt4 {
    return Intl.message(
      'Use a sharp object to dig deeply',
      name: 'wound_care_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When may a wound need professional assessment?`
  String get wound_care_q5 {
    return Intl.message(
      'When may a wound need professional assessment?',
      name: 'wound_care_q5',
      desc: '',
      args: [],
    );
  }

  /// `Every healed scar`
  String get wound_care_q5_opt1 {
    return Intl.message(
      'Every healed scar',
      name: 'wound_care_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `A tiny scratch that has stopped bleeding and is clean`
  String get wound_care_q5_opt2 {
    return Intl.message(
      'A tiny scratch that has stopped bleeding and is clean',
      name: 'wound_care_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `A deep, gaping, contaminated wound or one with signs of infection`
  String get wound_care_q5_opt3 {
    return Intl.message(
      'A deep, gaping, contaminated wound or one with signs of infection',
      name: 'wound_care_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `A clean fingernail`
  String get wound_care_q5_opt4 {
    return Intl.message(
      'A clean fingernail',
      name: 'wound_care_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which may be a sign of wound infection?`
  String get wound_care_q6 {
    return Intl.message(
      'Which may be a sign of wound infection?',
      name: 'wound_care_q6',
      desc: '',
      args: [],
    );
  }

  /// `A healed scar`
  String get wound_care_q6_opt1 {
    return Intl.message(
      'A healed scar',
      name: 'wound_care_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Normal skin colour only`
  String get wound_care_q6_opt2 {
    return Intl.message(
      'Normal skin colour only',
      name: 'wound_care_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `A clean dry dressing`
  String get wound_care_q6_opt3 {
    return Intl.message(
      'A clean dry dressing',
      name: 'wound_care_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Increasing redness, warmth, swelling, pain, pus, or fever`
  String get wound_care_q6_opt4 {
    return Intl.message(
      'Increasing redness, warmth, swelling, pain, pus, or fever',
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

  /// `Universal First Aid Algorithm`
  String get ufaa_title {
    return Intl.message(
      'Universal First Aid Algorithm',
      name: 'ufaa_title',
      desc: '',
      args: [],
    );
  }

  /// `(Law No. 220, September 1, 2024)`
  String get ufaa_law {
    return Intl.message(
      '(Law No. 220, September 1, 2024)',
      name: 'ufaa_law',
      desc: '',
      args: [],
    );
  }

  /// `Eliminate dangerous factors and create safe conditions for first aid.`
  String get ufaa_step1 {
    return Intl.message(
      'Eliminate dangerous factors and create safe conditions for first aid.',
      name: 'ufaa_step1',
      desc: '',
      args: [],
    );
  }

  /// `Conduct a general examination to identify any ongoing external bleeding and, if present, temporarily stop it.`
  String get ufaa_step2 {
    return Intl.message(
      'Conduct a general examination to identify any ongoing external bleeding and, if present, temporarily stop it.',
      name: 'ufaa_step2',
      desc: '',
      args: [],
    );
  }

  /// `Check for signs of life (consciousness and breathing).`
  String get ufaa_step3 {
    return Intl.message(
      'Check for signs of life (consciousness and breathing).',
      name: 'ufaa_step3',
      desc: '',
      args: [],
    );
  }

  /// `If the victim is:`
  String get ufaa_step4_title {
    return Intl.message(
      'If the victim is:',
      name: 'ufaa_step4_title',
      desc: '',
      args: [],
    );
  }

  /// `Unconscious and not breathing: — Call 112 — Provide CPR — Use an AED if available.`
  String get ufaa_step4_1 {
    return Intl.message(
      'Unconscious and not breathing: — Call 112 — Provide CPR — Use an AED if available.',
      name: 'ufaa_step4_1',
      desc: '',
      args: [],
    );
  }

  /// `Unconscious and breathing: — Maintain airway patency.`
  String get ufaa_step4_2 {
    return Intl.message(
      'Unconscious and breathing: — Maintain airway patency.',
      name: 'ufaa_step4_2',
      desc: '',
      args: [],
    );
  }

  /// `Conscious and breathing: — Proceed to step five.`
  String get ufaa_step4_3 {
    return Intl.message(
      'Conscious and breathing: — Proceed to step five.',
      name: 'ufaa_step4_3',
      desc: '',
      args: [],
    );
  }

  /// `Conduct a detailed examination and interview the victim to identify any life-threatening or health-threatening conditions.`
  String get ufaa_step5 {
    return Intl.message(
      'Conduct a detailed examination and interview the victim to identify any life-threatening or health-threatening conditions.',
      name: 'ufaa_step5',
      desc: '',
      args: [],
    );
  }

  /// `Provide first aid based on the nature of the identified conditions.`
  String get ufaa_step6 {
    return Intl.message(
      'Provide first aid based on the nature of the identified conditions.',
      name: 'ufaa_step6',
      desc: '',
      args: [],
    );
  }

  /// `If the victim has prescribed medication, assist them in taking it. Be aware of the actual laws about it.`
  String get ufaa_step7 {
    return Intl.message(
      'If the victim has prescribed medication, assist them in taking it. Be aware of the actual laws about it.',
      name: 'ufaa_step7',
      desc: '',
      args: [],
    );
  }

  /// `Position the victim optimally for their condition.`
  String get ufaa_step8 {
    return Intl.message(
      'Position the victim optimally for their condition.',
      name: 'ufaa_step8',
      desc: '',
      args: [],
    );
  }

  /// `If not already done, call 112, monitor the victim's condition, provide psychological support, and prepare for movement and transport or transfer to the ambulance team.`
  String get ufaa_step9 {
    return Intl.message(
      'If not already done, call 112, monitor the victim\'s condition, provide psychological support, and prepare for movement and transport or transfer to the ambulance team.',
      name: 'ufaa_step9',
      desc: '',
      args: [],
    );
  }

  /// `Take Quiz`
  String get ufaa_takeQuiz {
    return Intl.message('Take Quiz', name: 'ufaa_takeQuiz', desc: '', args: []);
  }

  /// `Gasping is not normal breathing. Activate emergency help and begin CPR.`
  String get cpr_q1_explanation {
    return Intl.message(
      'Gasping is not normal breathing. Activate emergency help and begin CPR.',
      name: 'cpr_q1_explanation',
      desc: '',
      args: [],
    );
  }

  /// `CPR means cardiopulmonary resuscitation.`
  String get cpr_q2_explanation {
    return Intl.message(
      'CPR means cardiopulmonary resuscitation.',
      name: 'cpr_q2_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Use the lower half of the sternum, in the center of the chest.`
  String get cpr_q3_explanation {
    return Intl.message(
      'Use the lower half of the sternum, in the center of the chest.',
      name: 'cpr_q3_explanation',
      desc: '',
      args: [],
    );
  }

  /// `The recommended adult rate is 100–120 compressions per minute.`
  String get cpr_q4_explanation {
    return Intl.message(
      'The recommended adult rate is 100–120 compressions per minute.',
      name: 'cpr_q4_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Aim for at least 5 cm and avoid excessive depth beyond 6 cm.`
  String get cpr_q5_explanation {
    return Intl.message(
      'Aim for at least 5 cm and avoid excessive depth beyond 6 cm.',
      name: 'cpr_q5_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Use an AED as soon as available and follow its prompts.`
  String get cpr_q6_explanation {
    return Intl.message(
      'Use an AED as soon as available and follow its prompts.',
      name: 'cpr_q6_explanation',
      desc: '',
      args: [],
    );
  }

  /// `You are alone with a phone and an adult who is unresponsive and not breathing normally. What is best?`
  String get cpr_q7 {
    return Intl.message(
      'You are alone with a phone and an adult who is unresponsive and not breathing normally. What is best?',
      name: 'cpr_q7',
      desc: '',
      args: [],
    );
  }

  /// `Speakerphone lets you summon help while beginning CPR.`
  String get cpr_q7_explanation {
    return Intl.message(
      'Speakerphone lets you summon help while beginning CPR.',
      name: 'cpr_q7_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services on speakerphone and start CPR`
  String get cpr_q7_opt1 {
    return Intl.message(
      'Call emergency services on speakerphone and start CPR',
      name: 'cpr_q7_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Leave for several minutes to find help`
  String get cpr_q7_opt2 {
    return Intl.message(
      'Leave for several minutes to find help',
      name: 'cpr_q7_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Wait for another person`
  String get cpr_q7_opt3 {
    return Intl.message(
      'Wait for another person',
      name: 'cpr_q7_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Give the person a drink`
  String get cpr_q7_opt4 {
    return Intl.message(
      'Give the person a drink',
      name: 'cpr_q7_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When should rescuers switch the person doing compressions, if another rescuer is available?`
  String get cpr_q8 {
    return Intl.message(
      'When should rescuers switch the person doing compressions, if another rescuer is available?',
      name: 'cpr_q8',
      desc: '',
      args: [],
    );
  }

  /// `Switching about every two minutes can reduce fatigue and maintain quality.`
  String get cpr_q8_explanation {
    return Intl.message(
      'Switching about every two minutes can reduce fatigue and maintain quality.',
      name: 'cpr_q8_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Every 10 minutes`
  String get cpr_q8_opt1 {
    return Intl.message(
      'Every 10 minutes',
      name: 'cpr_q8_opt1',
      desc: '',
      args: [],
    );
  }

  /// `About every 2 minutes, with minimal interruption`
  String get cpr_q8_opt2 {
    return Intl.message(
      'About every 2 minutes, with minimal interruption',
      name: 'cpr_q8_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Only after 15 minutes`
  String get cpr_q8_opt3 {
    return Intl.message(
      'Only after 15 minutes',
      name: 'cpr_q8_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Never switch`
  String get cpr_q8_opt4 {
    return Intl.message(
      'Never switch',
      name: 'cpr_q8_opt4',
      desc: '',
      args: [],
    );
  }

  /// `You are not trained or willing to give rescue breaths to an adult in sudden cardiac arrest. What can you do?`
  String get cpr_q9 {
    return Intl.message(
      'You are not trained or willing to give rescue breaths to an adult in sudden cardiac arrest. What can you do?',
      name: 'cpr_q9',
      desc: '',
      args: [],
    );
  }

  /// `Hands-only CPR is appropriate for an untrained bystander responding to an adult collapse.`
  String get cpr_q9_explanation {
    return Intl.message(
      'Hands-only CPR is appropriate for an untrained bystander responding to an adult collapse.',
      name: 'cpr_q9_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Do nothing`
  String get cpr_q9_opt1 {
    return Intl.message('Do nothing', name: 'cpr_q9_opt1', desc: '', args: []);
  }

  /// `Give abdominal thrusts`
  String get cpr_q9_opt2 {
    return Intl.message(
      'Give abdominal thrusts',
      name: 'cpr_q9_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Perform hands-only chest compressions and follow dispatcher instructions`
  String get cpr_q9_opt3 {
    return Intl.message(
      'Perform hands-only chest compressions and follow dispatcher instructions',
      name: 'cpr_q9_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Place the person face down`
  String get cpr_q9_opt4 {
    return Intl.message(
      'Place the person face down',
      name: 'cpr_q9_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When may a lay rescuer stop CPR?`
  String get cpr_q10 {
    return Intl.message(
      'When may a lay rescuer stop CPR?',
      name: 'cpr_q10',
      desc: '',
      args: [],
    );
  }

  /// `Continue until recovery signs, trained handover, danger, or inability to continue.`
  String get cpr_q10_explanation {
    return Intl.message(
      'Continue until recovery signs, trained handover, danger, or inability to continue.',
      name: 'cpr_q10_explanation',
      desc: '',
      args: [],
    );
  }

  /// `As soon as help is called`
  String get cpr_q10_opt1 {
    return Intl.message(
      'As soon as help is called',
      name: 'cpr_q10_opt1',
      desc: '',
      args: [],
    );
  }

  /// `After exactly 2 minutes`
  String get cpr_q10_opt2 {
    return Intl.message(
      'After exactly 2 minutes',
      name: 'cpr_q10_opt2',
      desc: '',
      args: [],
    );
  }

  /// `When tired for a few seconds`
  String get cpr_q10_opt3 {
    return Intl.message(
      'When tired for a few seconds',
      name: 'cpr_q10_opt3',
      desc: '',
      args: [],
    );
  }

  /// `When the person breathes normally, trained help takes over, the scene becomes unsafe, or the rescuer cannot continue`
  String get cpr_q10_opt4 {
    return Intl.message(
      'When the person breathes normally, trained help takes over, the scene becomes unsafe, or the rescuer cannot continue',
      name: 'cpr_q10_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Firm, continuous pressure is the first action for severe external bleeding.`
  String get bleeding_q1_explanation {
    return Intl.message(
      'Firm, continuous pressure is the first action for severe external bleeding.',
      name: 'bleeding_q1_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Maintain pressure and add more dressing on top rather than repeatedly removing the first layer.`
  String get bleeding_q2_explanation {
    return Intl.message(
      'Maintain pressure and add more dressing on top rather than repeatedly removing the first layer.',
      name: 'bleeding_q2_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Removing an embedded object may worsen bleeding. Apply pressure around it.`
  String get bleeding_q3_explanation {
    return Intl.message(
      'Removing an embedded object may worsen bleeding. Apply pressure around it.',
      name: 'bleeding_q3_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Spurting or rapidly pooling blood may indicate severe bleeding.`
  String get bleeding_q4_explanation {
    return Intl.message(
      'Spurting or rapidly pooling blood may indicate severe bleeding.',
      name: 'bleeding_q4_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Repeatedly lifting the dressing can disrupt clot formation.`
  String get bleeding_q5_explanation {
    return Intl.message(
      'Repeatedly lifting the dressing can disrupt clot formation.',
      name: 'bleeding_q5_explanation',
      desc: '',
      args: [],
    );
  }

  /// `A tourniquet can control life-threatening limb bleeding; follow training and emergency instructions.`
  String get bleeding_q6_explanation {
    return Intl.message(
      'A tourniquet can control life-threatening limb bleeding; follow training and emergency instructions.',
      name: 'bleeding_q6_explanation',
      desc: '',
      args: [],
    );
  }

  /// `What is a sensible way to protect yourself while treating blood loss?`
  String get bleeding_q7 {
    return Intl.message(
      'What is a sensible way to protect yourself while treating blood loss?',
      name: 'bleeding_q7',
      desc: '',
      args: [],
    );
  }

  /// `Use gloves or a suitable barrier when available and wash hands afterward.`
  String get bleeding_q7_explanation {
    return Intl.message(
      'Use gloves or a suitable barrier when available and wash hands afterward.',
      name: 'bleeding_q7_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Touch blood with bare hands whenever possible`
  String get bleeding_q7_opt1 {
    return Intl.message(
      'Touch blood with bare hands whenever possible',
      name: 'bleeding_q7_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Use a shared cloth for every casualty`
  String get bleeding_q7_opt2 {
    return Intl.message(
      'Use a shared cloth for every casualty',
      name: 'bleeding_q7_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Avoid all help even if safe gloves are available`
  String get bleeding_q7_opt3 {
    return Intl.message(
      'Avoid all help even if safe gloves are available',
      name: 'bleeding_q7_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Use gloves or another barrier if available`
  String get bleeding_q7_opt4 {
    return Intl.message(
      'Use gloves or another barrier if available',
      name: 'bleeding_q7_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person with severe bleeding becomes pale, clammy, and confused. What does this suggest?`
  String get bleeding_q8 {
    return Intl.message(
      'A person with severe bleeding becomes pale, clammy, and confused. What does this suggest?',
      name: 'bleeding_q8',
      desc: '',
      args: [],
    );
  }

  /// `Pale, clammy skin and confusion may be signs of shock.`
  String get bleeding_q8_explanation {
    return Intl.message(
      'Pale, clammy skin and confusion may be signs of shock.',
      name: 'bleeding_q8_explanation',
      desc: '',
      args: [],
    );
  }

  /// `They are hungry`
  String get bleeding_q8_opt1 {
    return Intl.message(
      'They are hungry',
      name: 'bleeding_q8_opt1',
      desc: '',
      args: [],
    );
  }

  /// `They are embarrassed`
  String get bleeding_q8_opt2 {
    return Intl.message(
      'They are embarrassed',
      name: 'bleeding_q8_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Possible shock; call emergency services and continue bleeding control`
  String get bleeding_q8_opt3 {
    return Intl.message(
      'Possible shock; call emergency services and continue bleeding control',
      name: 'bleeding_q8_opt3',
      desc: '',
      args: [],
    );
  }

  /// `The bleeding is definitely harmless`
  String get bleeding_q8_opt4 {
    return Intl.message(
      'The bleeding is definitely harmless',
      name: 'bleeding_q8_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do if a wound has a small object stuck in it?`
  String get bleeding_q9 {
    return Intl.message(
      'What should you do if a wound has a small object stuck in it?',
      name: 'bleeding_q9',
      desc: '',
      args: [],
    );
  }

  /// `Avoid digging into wounds or removing embedded objects.`
  String get bleeding_q9_explanation {
    return Intl.message(
      'Avoid digging into wounds or removing embedded objects.',
      name: 'bleeding_q9_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Press around it and seek appropriate medical advice; do not dig it out`
  String get bleeding_q9_opt1 {
    return Intl.message(
      'Press around it and seek appropriate medical advice; do not dig it out',
      name: 'bleeding_q9_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Probe deeply with tweezers`
  String get bleeding_q9_opt2 {
    return Intl.message(
      'Probe deeply with tweezers',
      name: 'bleeding_q9_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Pour household cleaner into it`
  String get bleeding_q9_opt3 {
    return Intl.message(
      'Pour household cleaner into it',
      name: 'bleeding_q9_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ignore it regardless of depth`
  String get bleeding_q9_opt4 {
    return Intl.message(
      'Ignore it regardless of depth',
      name: 'bleeding_q9_opt4',
      desc: '',
      args: [],
    );
  }

  /// `After bleeding is controlled, what is important?`
  String get bleeding_q10 {
    return Intl.message(
      'After bleeding is controlled, what is important?',
      name: 'bleeding_q10',
      desc: '',
      args: [],
    );
  }

  /// `Deep or contaminated wounds may need professional treatment and tetanus assessment.`
  String get bleeding_q10_explanation {
    return Intl.message(
      'Deep or contaminated wounds may need professional treatment and tetanus assessment.',
      name: 'bleeding_q10_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Hide the injury and continue activity`
  String get bleeding_q10_opt1 {
    return Intl.message(
      'Hide the injury and continue activity',
      name: 'bleeding_q10_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Arrange medical assessment for deep, gaping, contaminated, or serious wounds`
  String get bleeding_q10_opt2 {
    return Intl.message(
      'Arrange medical assessment for deep, gaping, contaminated, or serious wounds',
      name: 'bleeding_q10_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Remove any clot with a cloth`
  String get bleeding_q10_opt3 {
    return Intl.message(
      'Remove any clot with a cloth',
      name: 'bleeding_q10_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Apply butter`
  String get bleeding_q10_opt4 {
    return Intl.message(
      'Apply butter',
      name: 'bleeding_q10_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Cool a thermal burn under cool running water for 20 minutes as soon as possible.`
  String get burns_q1_explanation {
    return Intl.message(
      'Cool a thermal burn under cool running water for 20 minutes as soon as possible.',
      name: 'burns_q1_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Ice, butter, and oils can worsen tissue injury or interfere with care.`
  String get burns_q2_explanation {
    return Intl.message(
      'Ice, butter, and oils can worsen tissue injury or interfere with care.',
      name: 'burns_q2_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Do not pull away clothing stuck to burned skin.`
  String get burns_q3_explanation {
    return Intl.message(
      'Do not pull away clothing stuck to burned skin.',
      name: 'burns_q3_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Large, deep, chemical, electrical, facial, and airway burns can be serious.`
  String get burns_q4_explanation {
    return Intl.message(
      'Large, deep, chemical, electrical, facial, and airway burns can be serious.',
      name: 'burns_q4_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Do not deliberately break blisters; protect the burn with a suitable clean covering.`
  String get burns_q5_explanation {
    return Intl.message(
      'Do not deliberately break blisters; protect the burn with a suitable clean covering.',
      name: 'burns_q5_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Dry chemicals may need to be brushed off before irrigating; avoid exposing yourself.`
  String get burns_q6_explanation {
    return Intl.message(
      'Dry chemicals may need to be brushed off before irrigating; avoid exposing yourself.',
      name: 'burns_q6_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Why remove rings or a watch near a burn if they are not stuck?`
  String get burns_q7 {
    return Intl.message(
      'Why remove rings or a watch near a burn if they are not stuck?',
      name: 'burns_q7',
      desc: '',
      args: [],
    );
  }

  /// `Burned areas can swell, so remove nearby jewellery early if it comes off easily.`
  String get burns_q7_explanation {
    return Intl.message(
      'Burned areas can swell, so remove nearby jewellery early if it comes off easily.',
      name: 'burns_q7_explanation',
      desc: '',
      args: [],
    );
  }

  /// `They cool the skin too much`
  String get burns_q7_opt1 {
    return Intl.message(
      'They cool the skin too much',
      name: 'burns_q7_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Swelling may make them difficult to remove later`
  String get burns_q7_opt2 {
    return Intl.message(
      'Swelling may make them difficult to remove later',
      name: 'burns_q7_opt2',
      desc: '',
      args: [],
    );
  }

  /// `They cause blisters instantly`
  String get burns_q7_opt3 {
    return Intl.message(
      'They cause blisters instantly',
      name: 'burns_q7_opt3',
      desc: '',
      args: [],
    );
  }

  /// `They prevent pain`
  String get burns_q7_opt4 {
    return Intl.message(
      'They prevent pain',
      name: 'burns_q7_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a suitable way to cover a cooled burn?`
  String get burns_q8 {
    return Intl.message(
      'What is a suitable way to cover a cooled burn?',
      name: 'burns_q8',
      desc: '',
      args: [],
    );
  }

  /// `A clean, non-fluffy covering helps protect the area without sticking.`
  String get burns_q8_explanation {
    return Intl.message(
      'A clean, non-fluffy covering helps protect the area without sticking.',
      name: 'burns_q8_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Loosely cover it with a clean, non-fluffy dressing`
  String get burns_q8_opt1 {
    return Intl.message(
      'Loosely cover it with a clean, non-fluffy dressing',
      name: 'burns_q8_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Wrap it tightly with adhesive tape`
  String get burns_q8_opt2 {
    return Intl.message(
      'Wrap it tightly with adhesive tape',
      name: 'burns_q8_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Apply cotton wool directly to the burn`
  String get burns_q8_opt3 {
    return Intl.message(
      'Apply cotton wool directly to the burn',
      name: 'burns_q8_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Cover it with soil`
  String get burns_q8_opt4 {
    return Intl.message(
      'Cover it with soil',
      name: 'burns_q8_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person receives an electrical burn. What should you do first?`
  String get burns_q9 {
    return Intl.message(
      'A person receives an electrical burn. What should you do first?',
      name: 'burns_q9',
      desc: '',
      args: [],
    );
  }

  /// `Do not approach or touch the casualty until the electrical danger is controlled.`
  String get burns_q9_explanation {
    return Intl.message(
      'Do not approach or touch the casualty until the electrical danger is controlled.',
      name: 'burns_q9_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Touch them while current may still be flowing`
  String get burns_q9_opt1 {
    return Intl.message(
      'Touch them while current may still be flowing',
      name: 'burns_q9_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Pour water on live electrical equipment`
  String get burns_q9_opt2 {
    return Intl.message(
      'Pour water on live electrical equipment',
      name: 'burns_q9_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Ensure the electrical source is safe, call emergency help, and assess them`
  String get burns_q9_opt3 {
    return Intl.message(
      'Ensure the electrical source is safe, call emergency help, and assess them',
      name: 'burns_q9_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ask them to continue working`
  String get burns_q9_opt4 {
    return Intl.message(
      'Ask them to continue working',
      name: 'burns_q9_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A burn victim develops hoarseness and difficulty breathing after a fire. What should you do?`
  String get burns_q10 {
    return Intl.message(
      'A burn victim develops hoarseness and difficulty breathing after a fire. What should you do?',
      name: 'burns_q10',
      desc: '',
      args: [],
    );
  }

  /// `Airway symptoms after smoke or heat exposure may signal a life-threatening inhalation injury.`
  String get burns_q10_explanation {
    return Intl.message(
      'Airway symptoms after smoke or heat exposure may signal a life-threatening inhalation injury.',
      name: 'burns_q10_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Offer food`
  String get burns_q10_opt1 {
    return Intl.message(
      'Offer food',
      name: 'burns_q10_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Wait for the skin to blister`
  String get burns_q10_opt2 {
    return Intl.message(
      'Wait for the skin to blister',
      name: 'burns_q10_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Apply cream to the throat`
  String get burns_q10_opt3 {
    return Intl.message(
      'Apply cream to the throat',
      name: 'burns_q10_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services immediately`
  String get burns_q10_opt4 {
    return Intl.message(
      'Call emergency services immediately',
      name: 'burns_q10_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Severe choking requires immediate action; follow local first-aid guidance.`
  String get choking_q1_explanation {
    return Intl.message(
      'Severe choking requires immediate action; follow local first-aid guidance.',
      name: 'choking_q1_explanation',
      desc: '',
      args: [],
    );
  }

  /// `A person with severe airway obstruction may be unable to speak, breathe, or cough effectively.`
  String get choking_q2_explanation {
    return Intl.message(
      'A person with severe airway obstruction may be unable to speak, breathe, or cough effectively.',
      name: 'choking_q2_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Follow local guidance: commonly alternate up to five back blows and five abdominal thrusts.`
  String get choking_q3_explanation {
    return Intl.message(
      'Follow local guidance: commonly alternate up to five back blows and five abdominal thrusts.',
      name: 'choking_q3_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Only remove an object if you can clearly see it and safely reach it.`
  String get choking_q4_explanation {
    return Intl.message(
      'Only remove an object if you can clearly see it and safely reach it.',
      name: 'choking_q4_explanation',
      desc: '',
      args: [],
    );
  }

  /// `An effective cough may clear a partial obstruction; monitor for worsening.`
  String get choking_q5_explanation {
    return Intl.message(
      'An effective cough may clear a partial obstruction; monitor for worsening.',
      name: 'choking_q5_explanation',
      desc: '',
      args: [],
    );
  }

  /// `If unresponsive, activate emergency help and start CPR; remove an object only if visible.`
  String get choking_q6_explanation {
    return Intl.message(
      'If unresponsive, activate emergency help and start CPR; remove an object only if visible.',
      name: 'choking_q6_explanation',
      desc: '',
      args: [],
    );
  }

  /// `A baby under one year is severely choking. Which is appropriate?`
  String get choking_q7 {
    return Intl.message(
      'A baby under one year is severely choking. Which is appropriate?',
      name: 'choking_q7',
      desc: '',
      args: [],
    );
  }

  /// `Infants need a different technique: back blows and chest thrusts, not abdominal thrusts.`
  String get choking_q7_explanation {
    return Intl.message(
      'Infants need a different technique: back blows and chest thrusts, not abdominal thrusts.',
      name: 'choking_q7_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Abdominal thrusts`
  String get choking_q7_opt1 {
    return Intl.message(
      'Abdominal thrusts',
      name: 'choking_q7_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Age-appropriate cycles of back blows and chest thrusts`
  String get choking_q7_opt2 {
    return Intl.message(
      'Age-appropriate cycles of back blows and chest thrusts',
      name: 'choking_q7_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Hang the baby by the feet`
  String get choking_q7_opt3 {
    return Intl.message(
      'Hang the baby by the feet',
      name: 'choking_q7_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Sweep the mouth blindly`
  String get choking_q7_opt4 {
    return Intl.message(
      'Sweep the mouth blindly',
      name: 'choking_q7_opt4',
      desc: '',
      args: [],
    );
  }

  /// `After a choking episode, when is medical assessment important?`
  String get choking_q8 {
    return Intl.message(
      'After a choking episode, when is medical assessment important?',
      name: 'choking_q8',
      desc: '',
      args: [],
    );
  }

  /// `Persistent symptoms or forceful manoeuvres may warrant medical assessment.`
  String get choking_q8_explanation {
    return Intl.message(
      'Persistent symptoms or forceful manoeuvres may warrant medical assessment.',
      name: 'choking_q8_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Never, regardless of symptoms`
  String get choking_q8_opt1 {
    return Intl.message(
      'Never, regardless of symptoms',
      name: 'choking_q8_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Only if the person asks a week later`
  String get choking_q8_opt2 {
    return Intl.message(
      'Only if the person asks a week later',
      name: 'choking_q8_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Only if they are hungry`
  String get choking_q8_opt3 {
    return Intl.message(
      'Only if they are hungry',
      name: 'choking_q8_opt3',
      desc: '',
      args: [],
    );
  }

  /// `If symptoms persist, thrusts were needed, or there is concern for injury or an object remaining`
  String get choking_q8_opt4 {
    return Intl.message(
      'If symptoms persist, thrusts were needed, or there is concern for injury or an object remaining',
      name: 'choking_q8_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do if a person with mild choking can speak and breathe?`
  String get choking_q9 {
    return Intl.message(
      'What should you do if a person with mild choking can speak and breathe?',
      name: 'choking_q9',
      desc: '',
      args: [],
    );
  }

  /// `Encourage coughing when it is effective and be ready to act if obstruction worsens.`
  String get choking_q9_explanation {
    return Intl.message(
      'Encourage coughing when it is effective and be ready to act if obstruction worsens.',
      name: 'choking_q9_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Encourage coughing and monitor closely`
  String get choking_q9_opt1 {
    return Intl.message(
      'Encourage coughing and monitor closely',
      name: 'choking_q9_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Immediately give abdominal thrusts to everyone`
  String get choking_q9_opt2 {
    return Intl.message(
      'Immediately give abdominal thrusts to everyone',
      name: 'choking_q9_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Give a large drink`
  String get choking_q9_opt3 {
    return Intl.message(
      'Give a large drink',
      name: 'choking_q9_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Leave them alone`
  String get choking_q9_opt4 {
    return Intl.message(
      'Leave them alone',
      name: 'choking_q9_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which action is unsafe during choking first aid?`
  String get choking_q10 {
    return Intl.message(
      'Which action is unsafe during choking first aid?',
      name: 'choking_q10',
      desc: '',
      args: [],
    );
  }

  /// `Do not offer food or drink to someone who is choking.`
  String get choking_q10_explanation {
    return Intl.message(
      'Do not offer food or drink to someone who is choking.',
      name: 'choking_q10_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Calling for help`
  String get choking_q10_opt1 {
    return Intl.message(
      'Calling for help',
      name: 'choking_q10_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Following emergency dispatcher instructions`
  String get choking_q10_opt2 {
    return Intl.message(
      'Following emergency dispatcher instructions',
      name: 'choking_q10_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Offering food to push the obstruction down`
  String get choking_q10_opt3 {
    return Intl.message(
      'Offering food to push the obstruction down',
      name: 'choking_q10_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Monitoring the person's response`
  String get choking_q10_opt4 {
    return Intl.message(
      'Monitoring the person\'s response',
      name: 'choking_q10_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Some poisons cause delayed symptoms. Get specialist advice promptly.`
  String get poisons_q1_explanation {
    return Intl.message(
      'Some poisons cause delayed symptoms. Get specialist advice promptly.',
      name: 'poisons_q1_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Vomiting may worsen injury or cause poison to enter the lungs.`
  String get poisons_q2_explanation {
    return Intl.message(
      'Vomiting may worsen injury or cause poison to enter the lungs.',
      name: 'poisons_q2_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Do not become another casualty; avoid entering a contaminated atmosphere.`
  String get poisons_q3_explanation {
    return Intl.message(
      'Do not become another casualty; avoid entering a contaminated atmosphere.',
      name: 'poisons_q3_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Prompt irrigation is important for many chemical eye exposures.`
  String get poisons_q4_explanation {
    return Intl.message(
      'Prompt irrigation is important for many chemical eye exposures.',
      name: 'poisons_q4_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Product and exposure details help specialists advise on the correct response.`
  String get poisons_q5_explanation {
    return Intl.message(
      'Product and exposure details help specialists advise on the correct response.',
      name: 'poisons_q5_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Never give food, drink, or oral remedies to an unconscious person.`
  String get poisons_q6_explanation {
    return Intl.message(
      'Never give food, drink, or oral remedies to an unconscious person.',
      name: 'poisons_q6_explanation',
      desc: '',
      args: [],
    );
  }

  /// `A chemical is spilled on skin. What should you generally do?`
  String get poisons_q7 {
    return Intl.message(
      'A chemical is spilled on skin. What should you generally do?',
      name: 'poisons_q7',
      desc: '',
      args: [],
    );
  }

  /// `Avoid secondary exposure and follow the product-specific emergency guidance.`
  String get poisons_q7_explanation {
    return Intl.message(
      'Avoid secondary exposure and follow the product-specific emergency guidance.',
      name: 'poisons_q7_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Rub it vigorously`
  String get poisons_q7_opt1 {
    return Intl.message(
      'Rub it vigorously',
      name: 'poisons_q7_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Apply another chemical to neutralize it`
  String get poisons_q7_opt2 {
    return Intl.message(
      'Apply another chemical to neutralize it',
      name: 'poisons_q7_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Protect yourself, remove contaminated clothing when safe, and rinse according to guidance`
  String get poisons_q7_opt3 {
    return Intl.message(
      'Protect yourself, remove contaminated clothing when safe, and rinse according to guidance',
      name: 'poisons_q7_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Cover it with butter`
  String get poisons_q7_opt4 {
    return Intl.message(
      'Cover it with butter',
      name: 'poisons_q7_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which is a possible poisoning symptom?`
  String get poisons_q8 {
    return Intl.message(
      'Which is a possible poisoning symptom?',
      name: 'poisons_q8',
      desc: '',
      args: [],
    );
  }

  /// `Poisoning symptoms vary and may include neurological, digestive, or breathing problems.`
  String get poisons_q8_explanation {
    return Intl.message(
      'Poisoning symptoms vary and may include neurological, digestive, or breathing problems.',
      name: 'poisons_q8_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Confusion, vomiting, breathing difficulty, or seizures`
  String get poisons_q8_opt1 {
    return Intl.message(
      'Confusion, vomiting, breathing difficulty, or seizures',
      name: 'poisons_q8_opt1',
      desc: '',
      args: [],
    );
  }

  /// `A clean fingernail`
  String get poisons_q8_opt2 {
    return Intl.message(
      'A clean fingernail',
      name: 'poisons_q8_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Normal conversation only`
  String get poisons_q8_opt3 {
    return Intl.message(
      'Normal conversation only',
      name: 'poisons_q8_opt3',
      desc: '',
      args: [],
    );
  }

  /// `A healed scar`
  String get poisons_q8_opt4 {
    return Intl.message(
      'A healed scar',
      name: 'poisons_q8_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do with the poison container?`
  String get poisons_q9 {
    return Intl.message(
      'What should you do with the poison container?',
      name: 'poisons_q9',
      desc: '',
      args: [],
    );
  }

  /// `Packaging or a photo of the label can help responders identify the substance.`
  String get poisons_q9_explanation {
    return Intl.message(
      'Packaging or a photo of the label can help responders identify the substance.',
      name: 'poisons_q9_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Throw it away immediately`
  String get poisons_q9_opt1 {
    return Intl.message(
      'Throw it away immediately',
      name: 'poisons_q9_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Keep it available for responders if safe`
  String get poisons_q9_opt2 {
    return Intl.message(
      'Keep it available for responders if safe',
      name: 'poisons_q9_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Pour it into another unlabelled bottle`
  String get poisons_q9_opt3 {
    return Intl.message(
      'Pour it into another unlabelled bottle',
      name: 'poisons_q9_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Taste it to identify it`
  String get poisons_q9_opt4 {
    return Intl.message(
      'Taste it to identify it',
      name: 'poisons_q9_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person has a seizure after suspected poisoning. What is the priority?`
  String get poisons_q10 {
    return Intl.message(
      'A person has a seizure after suspected poisoning. What is the priority?',
      name: 'poisons_q10',
      desc: '',
      args: [],
    );
  }

  /// `Seizure and suspected poisoning require urgent assistance and basic seizure safety.`
  String get poisons_q10_explanation {
    return Intl.message(
      'Seizure and suspected poisoning require urgent assistance and basic seizure safety.',
      name: 'poisons_q10_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Force a drink into their mouth`
  String get poisons_q10_opt1 {
    return Intl.message(
      'Force a drink into their mouth',
      name: 'poisons_q10_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Hold them down tightly`
  String get poisons_q10_opt2 {
    return Intl.message(
      'Hold them down tightly',
      name: 'poisons_q10_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Wait alone until it ends`
  String get poisons_q10_opt3 {
    return Intl.message(
      'Wait alone until it ends',
      name: 'poisons_q10_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services, protect them from injury, and put nothing in their mouth`
  String get poisons_q10_opt4 {
    return Intl.message(
      'Call emergency services, protect them from injury, and put nothing in their mouth',
      name: 'poisons_q10_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Keep movement to a minimum and seek urgent emergency care.`
  String get bites_q1_explanation {
    return Intl.message(
      'Keep movement to a minimum and seek urgent emergency care.',
      name: 'bites_q1_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Cutting, sucking, and tight tourniquets can cause harm.`
  String get bites_q2_explanation {
    return Intl.message(
      'Cutting, sucking, and tight tourniquets can cause harm.',
      name: 'bites_q2_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Wash the wound and seek advice about infection, tetanus, and rabies risk.`
  String get bites_q3_explanation {
    return Intl.message(
      'Wash the wound and seek advice about infection, tetanus, and rabies risk.',
      name: 'bites_q3_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Breathing difficulty and facial swelling can indicate life-threatening anaphylaxis.`
  String get bites_q4_explanation {
    return Intl.message(
      'Breathing difficulty and facial swelling can indicate life-threatening anaphylaxis.',
      name: 'bites_q4_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Remove ticks promptly with suitable tweezers and clean the site.`
  String get bites_q5_explanation {
    return Intl.message(
      'Remove ticks promptly with suitable tweezers and clean the site.',
      name: 'bites_q5_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Bites can introduce bacteria and may need professional assessment.`
  String get bites_q6_explanation {
    return Intl.message(
      'Bites can introduce bacteria and may need professional assessment.',
      name: 'bites_q6_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Why should you avoid trying to catch a biting animal?`
  String get bites_q7 {
    return Intl.message(
      'Why should you avoid trying to catch a biting animal?',
      name: 'bites_q7',
      desc: '',
      args: [],
    );
  }

  /// `Keep yourself safe and provide animal details to authorities if possible.`
  String get bites_q7_explanation {
    return Intl.message(
      'Keep yourself safe and provide animal details to authorities if possible.',
      name: 'bites_q7_explanation',
      desc: '',
      args: [],
    );
  }

  /// `It always prevents infection`
  String get bites_q7_opt1 {
    return Intl.message(
      'It always prevents infection',
      name: 'bites_q7_opt1',
      desc: '',
      args: [],
    );
  }

  /// `It risks another injury; note its appearance from a safe distance if possible`
  String get bites_q7_opt2 {
    return Intl.message(
      'It risks another injury; note its appearance from a safe distance if possible',
      name: 'bites_q7_opt2',
      desc: '',
      args: [],
    );
  }

  /// `It is required for every bite`
  String get bites_q7_opt3 {
    return Intl.message(
      'It is required for every bite',
      name: 'bites_q7_opt3',
      desc: '',
      args: [],
    );
  }

  /// `It stops bleeding`
  String get bites_q7_opt4 {
    return Intl.message(
      'It stops bleeding',
      name: 'bites_q7_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person has a dog bite and their vaccination status is uncertain. What should happen?`
  String get bites_q8 {
    return Intl.message(
      'A person has a dog bite and their vaccination status is uncertain. What should happen?',
      name: 'bites_q8',
      desc: '',
      args: [],
    );
  }

  /// `Rabies prevention is time-sensitive and should be assessed by medical professionals.`
  String get bites_q8_explanation {
    return Intl.message(
      'Rabies prevention is time-sensitive and should be assessed by medical professionals.',
      name: 'bites_q8_explanation',
      desc: '',
      args: [],
    );
  }

  /// `No action is ever needed`
  String get bites_q8_opt1 {
    return Intl.message(
      'No action is ever needed',
      name: 'bites_q8_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Use only perfume on the wound`
  String get bites_q8_opt2 {
    return Intl.message(
      'Use only perfume on the wound',
      name: 'bites_q8_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Wait for rabies symptoms`
  String get bites_q8_opt3 {
    return Intl.message(
      'Wait for rabies symptoms',
      name: 'bites_q8_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Clean the wound and promptly seek medical advice about rabies and tetanus`
  String get bites_q8_opt4 {
    return Intl.message(
      'Clean the wound and promptly seek medical advice about rabies and tetanus',
      name: 'bites_q8_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is the first priority after a bite from a potentially dangerous animal?`
  String get bites_q9 {
    return Intl.message(
      'What is the first priority after a bite from a potentially dangerous animal?',
      name: 'bites_q9',
      desc: '',
      args: [],
    );
  }

  /// `Ensure scene safety before treating the injury.`
  String get bites_q9_explanation {
    return Intl.message(
      'Ensure scene safety before treating the injury.',
      name: 'bites_q9_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Approach the animal for a photo`
  String get bites_q9_opt1 {
    return Intl.message(
      'Approach the animal for a photo',
      name: 'bites_q9_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Check social media`
  String get bites_q9_opt2 {
    return Intl.message(
      'Check social media',
      name: 'bites_q9_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Move to safety and prevent further bites`
  String get bites_q9_opt3 {
    return Intl.message(
      'Move to safety and prevent further bites',
      name: 'bites_q9_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Offer the animal food`
  String get bites_q9_opt4 {
    return Intl.message(
      'Offer the animal food',
      name: 'bites_q9_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which bite-related symptom is an emergency?`
  String get bites_q10 {
    return Intl.message(
      'Which bite-related symptom is an emergency?',
      name: 'bites_q10',
      desc: '',
      args: [],
    );
  }

  /// `Rapid swelling, breathing difficulty, or collapse may signal anaphylaxis or another emergency.`
  String get bites_q10_explanation {
    return Intl.message(
      'Rapid swelling, breathing difficulty, or collapse may signal anaphylaxis or another emergency.',
      name: 'bites_q10_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Mild itch at a small healed mark`
  String get bites_q10_opt1 {
    return Intl.message(
      'Mild itch at a small healed mark',
      name: 'bites_q10_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Rapid swelling with breathing difficulty or collapse`
  String get bites_q10_opt2 {
    return Intl.message(
      'Rapid swelling with breathing difficulty or collapse',
      name: 'bites_q10_opt2',
      desc: '',
      args: [],
    );
  }

  /// `A small bruise days later`
  String get bites_q10_opt3 {
    return Intl.message(
      'A small bruise days later',
      name: 'bites_q10_opt3',
      desc: '',
      args: [],
    );
  }

  /// `A superficial scratch with no symptoms`
  String get bites_q10_opt4 {
    return Intl.message(
      'A superficial scratch with no symptoms',
      name: 'bites_q10_opt4',
      desc: '',
      args: [],
    );
  }

  /// `You arrive at a road crash and traffic is still moving. What comes first?`
  String get ufaa_q1 {
    return Intl.message(
      'You arrive at a road crash and traffic is still moving. What comes first?',
      name: 'ufaa_q1',
      desc: '',
      args: [],
    );
  }

  /// `Rescuer and scene safety come first.`
  String get ufaa_q1_explanation {
    return Intl.message(
      'Rescuer and scene safety come first.',
      name: 'ufaa_q1_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Check scene safety and call emergency services if needed`
  String get ufaa_q1_opt1 {
    return Intl.message(
      'Check scene safety and call emergency services if needed',
      name: 'ufaa_q1_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Run into traffic immediately`
  String get ufaa_q1_opt2 {
    return Intl.message(
      'Run into traffic immediately',
      name: 'ufaa_q1_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Move every casualty at once`
  String get ufaa_q1_opt3 {
    return Intl.message(
      'Move every casualty at once',
      name: 'ufaa_q1_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Start treatment without looking around`
  String get ufaa_q1_opt4 {
    return Intl.message(
      'Start treatment without looking around',
      name: 'ufaa_q1_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a sensible first assessment sequence for an adult casualty?`
  String get ufaa_q2 {
    return Intl.message(
      'What is a sensible first assessment sequence for an adult casualty?',
      name: 'ufaa_q2',
      desc: '',
      args: [],
    );
  }

  /// `A systematic assessment helps identify immediate life threats.`
  String get ufaa_q2_explanation {
    return Intl.message(
      'A systematic assessment helps identify immediate life threats.',
      name: 'ufaa_q2_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Give food, then ask their name`
  String get ufaa_q2_opt1 {
    return Intl.message(
      'Give food, then ask their name',
      name: 'ufaa_q2_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Check safety, response, and normal breathing; call for help and provide appropriate care`
  String get ufaa_q2_opt2 {
    return Intl.message(
      'Check safety, response, and normal breathing; call for help and provide appropriate care',
      name: 'ufaa_q2_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Move the neck in every direction`
  String get ufaa_q2_opt3 {
    return Intl.message(
      'Move the neck in every direction',
      name: 'ufaa_q2_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Wait silently for ten minutes`
  String get ufaa_q2_opt4 {
    return Intl.message(
      'Wait silently for ten minutes',
      name: 'ufaa_q2_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A responsive adult refuses help after a minor injury. What should you generally do?`
  String get ufaa_q3 {
    return Intl.message(
      'A responsive adult refuses help after a minor injury. What should you generally do?',
      name: 'ufaa_q3',
      desc: '',
      args: [],
    );
  }

  /// `A competent adult can usually refuse care; explain and respect their choice.`
  String get ufaa_q3_explanation {
    return Intl.message(
      'A competent adult can usually refuse care; explain and respect their choice.',
      name: 'ufaa_q3_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Force treatment on them`
  String get ufaa_q3_opt1 {
    return Intl.message(
      'Force treatment on them',
      name: 'ufaa_q3_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Ignore their words`
  String get ufaa_q3_opt2 {
    return Intl.message(
      'Ignore their words',
      name: 'ufaa_q3_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Respect their decision if they have capacity, explain concerns, and seek help if danger is serious`
  String get ufaa_q3_opt3 {
    return Intl.message(
      'Respect their decision if they have capacity, explain concerns, and seek help if danger is serious',
      name: 'ufaa_q3_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Give medicine secretly`
  String get ufaa_q3_opt4 {
    return Intl.message(
      'Give medicine secretly',
      name: 'ufaa_q3_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When should you call emergency services?`
  String get ufaa_q4 {
    return Intl.message(
      'When should you call emergency services?',
      name: 'ufaa_q4',
      desc: '',
      args: [],
    );
  }

  /// `Recognize emergencies early and activate professional help.`
  String get ufaa_q4_explanation {
    return Intl.message(
      'Recognize emergencies early and activate professional help.',
      name: 'ufaa_q4_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Only when there is visible blood`
  String get ufaa_q4_opt1 {
    return Intl.message(
      'Only when there is visible blood',
      name: 'ufaa_q4_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Only if the casualty asks twice`
  String get ufaa_q4_opt2 {
    return Intl.message(
      'Only if the casualty asks twice',
      name: 'ufaa_q4_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Never for an unconscious person`
  String get ufaa_q4_opt3 {
    return Intl.message(
      'Never for an unconscious person',
      name: 'ufaa_q4_opt3',
      desc: '',
      args: [],
    );
  }

  /// `For life-threatening symptoms such as unresponsiveness, abnormal breathing, severe bleeding, or stroke signs`
  String get ufaa_q4_opt4 {
    return Intl.message(
      'For life-threatening symptoms such as unresponsiveness, abnormal breathing, severe bleeding, or stroke signs',
      name: 'ufaa_q4_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Why use gloves or a barrier when possible?`
  String get ufaa_q5 {
    return Intl.message(
      'Why use gloves or a barrier when possible?',
      name: 'ufaa_q5',
      desc: '',
      args: [],
    );
  }

  /// `Barrier protection reduces exposure risk.`
  String get ufaa_q5_explanation {
    return Intl.message(
      'Barrier protection reduces exposure risk.',
      name: 'ufaa_q5_explanation',
      desc: '',
      args: [],
    );
  }

  /// `To reduce exposure to blood and body fluids`
  String get ufaa_q5_opt1 {
    return Intl.message(
      'To reduce exposure to blood and body fluids',
      name: 'ufaa_q5_opt1',
      desc: '',
      args: [],
    );
  }

  /// `To make the casualty sleepy`
  String get ufaa_q5_opt2 {
    return Intl.message(
      'To make the casualty sleepy',
      name: 'ufaa_q5_opt2',
      desc: '',
      args: [],
    );
  }

  /// `To replace handwashing forever`
  String get ufaa_q5_opt3 {
    return Intl.message(
      'To replace handwashing forever',
      name: 'ufaa_q5_opt3',
      desc: '',
      args: [],
    );
  }

  /// `To avoid calling for help`
  String get ufaa_q5_opt4 {
    return Intl.message(
      'To avoid calling for help',
      name: 'ufaa_q5_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A casualty is unconscious but breathing normally, and no major trauma is suspected. What may be appropriate?`
  String get ufaa_q6 {
    return Intl.message(
      'A casualty is unconscious but breathing normally, and no major trauma is suspected. What may be appropriate?',
      name: 'ufaa_q6',
      desc: '',
      args: [],
    );
  }

  /// `The recovery position can help maintain an open airway in an unconscious breathing person when appropriate.`
  String get ufaa_q6_explanation {
    return Intl.message(
      'The recovery position can help maintain an open airway in an unconscious breathing person when appropriate.',
      name: 'ufaa_q6_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Give them water`
  String get ufaa_q6_opt1 {
    return Intl.message(
      'Give them water',
      name: 'ufaa_q6_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Leave them face down`
  String get ufaa_q6_opt2 {
    return Intl.message(
      'Leave them face down',
      name: 'ufaa_q6_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Place them in the recovery position and monitor breathing`
  String get ufaa_q6_opt3 {
    return Intl.message(
      'Place them in the recovery position and monitor breathing',
      name: 'ufaa_q6_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Make them stand`
  String get ufaa_q6_opt4 {
    return Intl.message(
      'Make them stand',
      name: 'ufaa_q6_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do if an unresponsive casualty is not breathing normally?`
  String get ufaa_q7 {
    return Intl.message(
      'What should you do if an unresponsive casualty is not breathing normally?',
      name: 'ufaa_q7',
      desc: '',
      args: [],
    );
  }

  /// `Absent or abnormal breathing with unresponsiveness requires emergency action.`
  String get ufaa_q7_explanation {
    return Intl.message(
      'Absent or abnormal breathing with unresponsiveness requires emergency action.',
      name: 'ufaa_q7_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Put them in a chair`
  String get ufaa_q7_opt1 {
    return Intl.message(
      'Put them in a chair',
      name: 'ufaa_q7_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services, get an AED, and start CPR`
  String get ufaa_q7_opt2 {
    return Intl.message(
      'Call emergency services, get an AED, and start CPR',
      name: 'ufaa_q7_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Give them a snack`
  String get ufaa_q7_opt3 {
    return Intl.message(
      'Give them a snack',
      name: 'ufaa_q7_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Wait for their colour to change`
  String get ufaa_q7_opt4 {
    return Intl.message(
      'Wait for their colour to change',
      name: 'ufaa_q7_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Why should you obtain consent before treating a responsive adult?`
  String get ufaa_q8 {
    return Intl.message(
      'Why should you obtain consent before treating a responsive adult?',
      name: 'ufaa_q8',
      desc: '',
      args: [],
    );
  }

  /// `Explain what you want to do and obtain consent where possible.`
  String get ufaa_q8_explanation {
    return Intl.message(
      'Explain what you want to do and obtain consent where possible.',
      name: 'ufaa_q8_explanation',
      desc: '',
      args: [],
    );
  }

  /// `It is optional in every situation`
  String get ufaa_q8_opt1 {
    return Intl.message(
      'It is optional in every situation',
      name: 'ufaa_q8_opt1',
      desc: '',
      args: [],
    );
  }

  /// `It makes the injury worse`
  String get ufaa_q8_opt2 {
    return Intl.message(
      'It makes the injury worse',
      name: 'ufaa_q8_opt2',
      desc: '',
      args: [],
    );
  }

  /// `It replaces first-aid skills`
  String get ufaa_q8_opt3 {
    return Intl.message(
      'It replaces first-aid skills',
      name: 'ufaa_q8_opt3',
      desc: '',
      args: [],
    );
  }

  /// `It respects the person's autonomy`
  String get ufaa_q8_opt4 {
    return Intl.message(
      'It respects the person\'s autonomy',
      name: 'ufaa_q8_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A scene becomes unsafe while you are helping. What should you do?`
  String get ufaa_q9 {
    return Intl.message(
      'A scene becomes unsafe while you are helping. What should you do?',
      name: 'ufaa_q9',
      desc: '',
      args: [],
    );
  }

  /// `Do not put yourself or others at unnecessary risk.`
  String get ufaa_q9_explanation {
    return Intl.message(
      'Do not put yourself or others at unnecessary risk.',
      name: 'ufaa_q9_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Move to safety and call for professional assistance`
  String get ufaa_q9_opt1 {
    return Intl.message(
      'Move to safety and call for professional assistance',
      name: 'ufaa_q9_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Stay regardless of danger`
  String get ufaa_q9_opt2 {
    return Intl.message(
      'Stay regardless of danger',
      name: 'ufaa_q9_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Ask bystanders to ignore the hazard`
  String get ufaa_q9_opt3 {
    return Intl.message(
      'Ask bystanders to ignore the hazard',
      name: 'ufaa_q9_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Turn your back on the hazard and continue`
  String get ufaa_q9_opt4 {
    return Intl.message(
      'Turn your back on the hazard and continue',
      name: 'ufaa_q9_opt4',
      desc: '',
      args: [],
    );
  }

  /// `After giving first aid, what information should you tell responders?`
  String get ufaa_q10 {
    return Intl.message(
      'After giving first aid, what information should you tell responders?',
      name: 'ufaa_q10',
      desc: '',
      args: [],
    );
  }

  /// `Clear, factual handover supports ongoing care.`
  String get ufaa_q10_explanation {
    return Intl.message(
      'Clear, factual handover supports ongoing care.',
      name: 'ufaa_q10_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Your guess about the person's identity only`
  String get ufaa_q10_opt1 {
    return Intl.message(
      'Your guess about the person\'s identity only',
      name: 'ufaa_q10_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Only your opinion of the injury`
  String get ufaa_q10_opt2 {
    return Intl.message(
      'Only your opinion of the injury',
      name: 'ufaa_q10_opt2',
      desc: '',
      args: [],
    );
  }

  /// `What happened, what you observed, and what care you gave`
  String get ufaa_q10_opt3 {
    return Intl.message(
      'What happened, what you observed, and what care you gave',
      name: 'ufaa_q10_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Nothing at all`
  String get ufaa_q10_opt4 {
    return Intl.message(
      'Nothing at all',
      name: 'ufaa_q10_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Do not attempt to straighten a suspected fracture.`
  String get fractures_q1_explanation {
    return Intl.message(
      'Do not attempt to straighten a suspected fracture.',
      name: 'fractures_q1_explanation',
      desc: '',
      args: [],
    );
  }

  /// `An open fracture needs urgent care. Protect the wound without manipulating the bone.`
  String get fractures_q2_explanation {
    return Intl.message(
      'An open fracture needs urgent care. Protect the wound without manipulating the bone.',
      name: 'fractures_q2_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Fractures may cause pain, swelling, bruising, deformity, and difficulty using the limb.`
  String get fractures_q3_explanation {
    return Intl.message(
      'Fractures may cause pain, swelling, bruising, deformity, and difficulty using the limb.',
      name: 'fractures_q3_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Support helps limit painful movement and further injury.`
  String get fractures_q4_explanation {
    return Intl.message(
      'Support helps limit painful movement and further injury.',
      name: 'fractures_q4_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Walking can worsen injury; avoid unnecessary movement.`
  String get fractures_q5_explanation {
    return Intl.message(
      'Walking can worsen injury; avoid unnecessary movement.',
      name: 'fractures_q5_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Life-threatening bleeding must be controlled, while protecting exposed bone.`
  String get fractures_q6_explanation {
    return Intl.message(
      'Life-threatening bleeding must be controlled, while protecting exposed bone.',
      name: 'fractures_q6_explanation',
      desc: '',
      args: [],
    );
  }

  /// `When using a splint, what is important?`
  String get fractures_q7 {
    return Intl.message(
      'When using a splint, what is important?',
      name: 'fractures_q7',
      desc: '',
      args: [],
    );
  }

  /// `Splints should not compromise circulation or force the injury into alignment.`
  String get fractures_q7_explanation {
    return Intl.message(
      'Splints should not compromise circulation or force the injury into alignment.',
      name: 'fractures_q7_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Force the limb into a normal position`
  String get fractures_q7_opt1 {
    return Intl.message(
      'Force the limb into a normal position',
      name: 'fractures_q7_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Tie it as tightly as possible`
  String get fractures_q7_opt2 {
    return Intl.message(
      'Tie it as tightly as possible',
      name: 'fractures_q7_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Support the injury without forcing alignment and check circulation where trained`
  String get fractures_q7_opt3 {
    return Intl.message(
      'Support the injury without forcing alignment and check circulation where trained',
      name: 'fractures_q7_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Apply it only after the person walks`
  String get fractures_q7_opt4 {
    return Intl.message(
      'Apply it only after the person walks',
      name: 'fractures_q7_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A suspected fracture causes numbness or a cold, pale hand beyond the injury. What should you do?`
  String get fractures_q8 {
    return Intl.message(
      'A suspected fracture causes numbness or a cold, pale hand beyond the injury. What should you do?',
      name: 'fractures_q8',
      desc: '',
      args: [],
    );
  }

  /// `Numbness or changes in colour/temperature may indicate circulation or nerve problems.`
  String get fractures_q8_explanation {
    return Intl.message(
      'Numbness or changes in colour/temperature may indicate circulation or nerve problems.',
      name: 'fractures_q8_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Seek urgent medical help`
  String get fractures_q8_opt1 {
    return Intl.message(
      'Seek urgent medical help',
      name: 'fractures_q8_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Ignore it until tomorrow`
  String get fractures_q8_opt2 {
    return Intl.message(
      'Ignore it until tomorrow',
      name: 'fractures_q8_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Massage hard`
  String get fractures_q8_opt3 {
    return Intl.message(
      'Massage hard',
      name: 'fractures_q8_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Wrap it tightly`
  String get fractures_q8_opt4 {
    return Intl.message(
      'Wrap it tightly',
      name: 'fractures_q8_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Can a fracture exist without obvious deformity?`
  String get fractures_q9 {
    return Intl.message(
      'Can a fracture exist without obvious deformity?',
      name: 'fractures_q9',
      desc: '',
      args: [],
    );
  }

  /// `Not all fractures are visibly deformed.`
  String get fractures_q9_explanation {
    return Intl.message(
      'Not all fractures are visibly deformed.',
      name: 'fractures_q9_explanation',
      desc: '',
      args: [],
    );
  }

  /// `No, never`
  String get fractures_q9_opt1 {
    return Intl.message(
      'No, never',
      name: 'fractures_q9_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Yes; pain and swelling may be present without visible deformity`
  String get fractures_q9_opt2 {
    return Intl.message(
      'Yes; pain and swelling may be present without visible deformity',
      name: 'fractures_q9_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Only in older people`
  String get fractures_q9_opt3 {
    return Intl.message(
      'Only in older people',
      name: 'fractures_q9_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Only if there is bleeding`
  String get fractures_q9_opt4 {
    return Intl.message(
      'Only if there is bleeding',
      name: 'fractures_q9_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do with rings near an injured, swelling finger if they come off easily?`
  String get fractures_q10 {
    return Intl.message(
      'What should you do with rings near an injured, swelling finger if they come off easily?',
      name: 'fractures_q10',
      desc: '',
      args: [],
    );
  }

  /// `Swelling can trap rings; never force removal if stuck.`
  String get fractures_q10_explanation {
    return Intl.message(
      'Swelling can trap rings; never force removal if stuck.',
      name: 'fractures_q10_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Push them deeper`
  String get fractures_q10_opt1 {
    return Intl.message(
      'Push them deeper',
      name: 'fractures_q10_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Wait until swelling is severe`
  String get fractures_q10_opt2 {
    return Intl.message(
      'Wait until swelling is severe',
      name: 'fractures_q10_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Break the finger to remove them`
  String get fractures_q10_opt3 {
    return Intl.message(
      'Break the finger to remove them',
      name: 'fractures_q10_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Remove them early if easy, without forcing them`
  String get fractures_q10_opt4 {
    return Intl.message(
      'Remove them early if easy, without forcing them',
      name: 'fractures_q10_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Breathing problems and swelling after exposure can indicate anaphylaxis.`
  String get allergic_reactions_q1_explanation {
    return Intl.message(
      'Breathing problems and swelling after exposure can indicate anaphylaxis.',
      name: 'allergic_reactions_q1_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Adrenaline/epinephrine is the first-line treatment for anaphylaxis.`
  String get allergic_reactions_q2_explanation {
    return Intl.message(
      'Adrenaline/epinephrine is the first-line treatment for anaphylaxis.',
      name: 'allergic_reactions_q2_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Use the prescribed device in the outer mid-thigh according to its instructions.`
  String get allergic_reactions_q3_explanation {
    return Intl.message(
      'Use the prescribed device in the outer mid-thigh according to its instructions.',
      name: 'allergic_reactions_q3_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Anaphylaxis needs emergency assessment even if symptoms improve.`
  String get allergic_reactions_q4_explanation {
    return Intl.message(
      'Anaphylaxis needs emergency assessment even if symptoms improve.',
      name: 'allergic_reactions_q4_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Airway or breathing symptoms may be life-threatening.`
  String get allergic_reactions_q5_explanation {
    return Intl.message(
      'Airway or breathing symptoms may be life-threatening.',
      name: 'allergic_reactions_q5_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Do not delay adrenaline while trying an antihistamine for suspected anaphylaxis.`
  String get allergic_reactions_q6_explanation {
    return Intl.message(
      'Do not delay adrenaline while trying an antihistamine for suspected anaphylaxis.',
      name: 'allergic_reactions_q6_explanation',
      desc: '',
      args: [],
    );
  }

  /// `How should you position a person with suspected anaphylaxis?`
  String get allergic_reactions_q7 {
    return Intl.message(
      'How should you position a person with suspected anaphylaxis?',
      name: 'allergic_reactions_q7',
      desc: '',
      args: [],
    );
  }

  /// `Avoid sudden standing or walking; tailor position to breathing and consciousness and follow dispatcher guidance.`
  String get allergic_reactions_q7_explanation {
    return Intl.message(
      'Avoid sudden standing or walking; tailor position to breathing and consciousness and follow dispatcher guidance.',
      name: 'allergic_reactions_q7_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Keep them lying down if tolerated; do not let them stand or walk suddenly`
  String get allergic_reactions_q7_opt1 {
    return Intl.message(
      'Keep them lying down if tolerated; do not let them stand or walk suddenly',
      name: 'allergic_reactions_q7_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Make them walk around`
  String get allergic_reactions_q7_opt2 {
    return Intl.message(
      'Make them walk around',
      name: 'allergic_reactions_q7_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Make them jump`
  String get allergic_reactions_q7_opt3 {
    return Intl.message(
      'Make them jump',
      name: 'allergic_reactions_q7_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Put them head-down in all cases`
  String get allergic_reactions_q7_opt4 {
    return Intl.message(
      'Put them head-down in all cases',
      name: 'allergic_reactions_q7_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person has a small itchy rash but normal breathing and no swelling or dizziness. What is this most consistent with?`
  String get allergic_reactions_q8 {
    return Intl.message(
      'A person has a small itchy rash but normal breathing and no swelling or dizziness. What is this most consistent with?',
      name: 'allergic_reactions_q8',
      desc: '',
      args: [],
    );
  }

  /// `A mild rash can be less severe, but monitor for progression and seek advice as appropriate.`
  String get allergic_reactions_q8_explanation {
    return Intl.message(
      'A mild rash can be less severe, but monitor for progression and seek advice as appropriate.',
      name: 'allergic_reactions_q8_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Cardiac arrest`
  String get allergic_reactions_q8_opt1 {
    return Intl.message(
      'Cardiac arrest',
      name: 'allergic_reactions_q8_opt1',
      desc: '',
      args: [],
    );
  }

  /// `A stroke for certain`
  String get allergic_reactions_q8_opt2 {
    return Intl.message(
      'A stroke for certain',
      name: 'allergic_reactions_q8_opt2',
      desc: '',
      args: [],
    );
  }

  /// `A fracture`
  String get allergic_reactions_q8_opt3 {
    return Intl.message(
      'A fracture',
      name: 'allergic_reactions_q8_opt3',
      desc: '',
      args: [],
    );
  }

  /// `A mild localized allergic reaction, while watching for worsening`
  String get allergic_reactions_q8_opt4 {
    return Intl.message(
      'A mild localized allergic reaction, while watching for worsening',
      name: 'allergic_reactions_q8_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Symptoms persist after the first prescribed auto-injector. What should you do?`
  String get allergic_reactions_q9 {
    return Intl.message(
      'Symptoms persist after the first prescribed auto-injector. What should you do?',
      name: 'allergic_reactions_q9',
      desc: '',
      args: [],
    );
  }

  /// `Follow the person's action plan and emergency dispatcher instructions about a second dose.`
  String get allergic_reactions_q9_explanation {
    return Intl.message(
      'Follow the person\'s action plan and emergency dispatcher instructions about a second dose.',
      name: 'allergic_reactions_q9_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Ignore them`
  String get allergic_reactions_q9_opt1 {
    return Intl.message(
      'Ignore them',
      name: 'allergic_reactions_q9_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Make the person exercise`
  String get allergic_reactions_q9_opt2 {
    return Intl.message(
      'Make the person exercise',
      name: 'allergic_reactions_q9_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Follow emergency guidance; a second prescribed injector may be needed if available`
  String get allergic_reactions_q9_opt3 {
    return Intl.message(
      'Follow emergency guidance; a second prescribed injector may be needed if available',
      name: 'allergic_reactions_q9_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Give an unknown injection`
  String get allergic_reactions_q9_opt4 {
    return Intl.message(
      'Give an unknown injection',
      name: 'allergic_reactions_q9_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do if a person becomes unresponsive and is not breathing normally during an allergic reaction?`
  String get allergic_reactions_q10 {
    return Intl.message(
      'What should you do if a person becomes unresponsive and is not breathing normally during an allergic reaction?',
      name: 'allergic_reactions_q10',
      desc: '',
      args: [],
    );
  }

  /// `Treat cardiac arrest with CPR and AED while emergency services are activated.`
  String get allergic_reactions_q10_explanation {
    return Intl.message(
      'Treat cardiac arrest with CPR and AED while emergency services are activated.',
      name: 'allergic_reactions_q10_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Give water`
  String get allergic_reactions_q10_opt1 {
    return Intl.message(
      'Give water',
      name: 'allergic_reactions_q10_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services, begin CPR, and use an AED if available`
  String get allergic_reactions_q10_opt2 {
    return Intl.message(
      'Call emergency services, begin CPR, and use an AED if available',
      name: 'allergic_reactions_q10_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Leave them alone`
  String get allergic_reactions_q10_opt3 {
    return Intl.message(
      'Leave them alone',
      name: 'allergic_reactions_q10_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Give an oral antihistamine`
  String get allergic_reactions_q10_opt4 {
    return Intl.message(
      'Give an oral antihistamine',
      name: 'allergic_reactions_q10_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Sit upright, remain calm, and help them follow their asthma action plan.`
  String get asthma_q1_explanation {
    return Intl.message(
      'Sit upright, remain calm, and help them follow their asthma action plan.',
      name: 'asthma_q1_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Asthma symptoms commonly include wheezing, cough, tightness, and breathlessness.`
  String get asthma_q2_explanation {
    return Intl.message(
      'Asthma symptoms commonly include wheezing, cough, tightness, and breathlessness.',
      name: 'asthma_q2_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Follow the person's prescribed action plan and emergency guidance.`
  String get asthma_q3_explanation {
    return Intl.message(
      'Follow the person\'s prescribed action plan and emergency guidance.',
      name: 'asthma_q3_explanation',
      desc: '',
      args: [],
    );
  }

  /// `These symptoms indicate a potentially life-threatening attack.`
  String get asthma_q4_explanation {
    return Intl.message(
      'These symptoms indicate a potentially life-threatening attack.',
      name: 'asthma_q4_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Stay with them and seek emergency help if symptoms are severe or worsening.`
  String get asthma_q5_explanation {
    return Intl.message(
      'Stay with them and seek emergency help if symptoms are severe or worsening.',
      name: 'asthma_q5_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Severe or persistent symptoms require emergency help.`
  String get asthma_q6_explanation {
    return Intl.message(
      'Severe or persistent symptoms require emergency help.',
      name: 'asthma_q6_explanation',
      desc: '',
      args: [],
    );
  }

  /// `What is a spacer used for with a metered-dose inhaler?`
  String get asthma_q7 {
    return Intl.message(
      'What is a spacer used for with a metered-dose inhaler?',
      name: 'asthma_q7',
      desc: '',
      args: [],
    );
  }

  /// `A spacer can make inhaler use easier and improve medicine delivery.`
  String get asthma_q7_explanation {
    return Intl.message(
      'A spacer can make inhaler use easier and improve medicine delivery.',
      name: 'asthma_q7_explanation',
      desc: '',
      args: [],
    );
  }

  /// `To measure blood pressure`
  String get asthma_q7_opt1 {
    return Intl.message(
      'To measure blood pressure',
      name: 'asthma_q7_opt1',
      desc: '',
      args: [],
    );
  }

  /// `To help deliver inhaled medicine more effectively`
  String get asthma_q7_opt2 {
    return Intl.message(
      'To help deliver inhaled medicine more effectively',
      name: 'asthma_q7_opt2',
      desc: '',
      args: [],
    );
  }

  /// `To stop the heart beating faster`
  String get asthma_q7_opt3 {
    return Intl.message(
      'To stop the heart beating faster',
      name: 'asthma_q7_opt3',
      desc: '',
      args: [],
    );
  }

  /// `To replace all prescribed medicine`
  String get asthma_q7_opt4 {
    return Intl.message(
      'To replace all prescribed medicine',
      name: 'asthma_q7_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person with asthma suddenly becomes exhausted and their wheezing becomes very quiet despite severe breathlessness. What should you do?`
  String get asthma_q8 {
    return Intl.message(
      'A person with asthma suddenly becomes exhausted and their wheezing becomes very quiet despite severe breathlessness. What should you do?',
      name: 'asthma_q8',
      desc: '',
      args: [],
    );
  }

  /// `A quiet or silent chest with severe distress can signal critical airflow limitation.`
  String get asthma_q8_explanation {
    return Intl.message(
      'A quiet or silent chest with severe distress can signal critical airflow limitation.',
      name: 'asthma_q8_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Assume they are recovering`
  String get asthma_q8_opt1 {
    return Intl.message(
      'Assume they are recovering',
      name: 'asthma_q8_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Tell them to exercise`
  String get asthma_q8_opt2 {
    return Intl.message(
      'Tell them to exercise',
      name: 'asthma_q8_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Leave them alone`
  String get asthma_q8_opt3 {
    return Intl.message(
      'Leave them alone',
      name: 'asthma_q8_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Treat as an emergency and call emergency services`
  String get asthma_q8_opt4 {
    return Intl.message(
      'Treat as an emergency and call emergency services',
      name: 'asthma_q8_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a helpful way to support someone during an asthma attack?`
  String get asthma_q9 {
    return Intl.message(
      'What is a helpful way to support someone during an asthma attack?',
      name: 'asthma_q9',
      desc: '',
      args: [],
    );
  }

  /// `Calm support and access to prescribed treatment are useful.`
  String get asthma_q9_explanation {
    return Intl.message(
      'Calm support and access to prescribed treatment are useful.',
      name: 'asthma_q9_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Stay calm, reassure them, and help them access their prescribed medicine`
  String get asthma_q9_opt1 {
    return Intl.message(
      'Stay calm, reassure them, and help them access their prescribed medicine',
      name: 'asthma_q9_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Argue with them`
  String get asthma_q9_opt2 {
    return Intl.message(
      'Argue with them',
      name: 'asthma_q9_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Force them to lie flat`
  String get asthma_q9_opt3 {
    return Intl.message(
      'Force them to lie flat',
      name: 'asthma_q9_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Give them smoke to inhale`
  String get asthma_q9_opt4 {
    return Intl.message(
      'Give them smoke to inhale',
      name: 'asthma_q9_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Can you assume every person with wheezing has asthma?`
  String get asthma_q10 {
    return Intl.message(
      'Can you assume every person with wheezing has asthma?',
      name: 'asthma_q10',
      desc: '',
      args: [],
    );
  }

  /// `Wheezing has multiple possible causes; use emergency assessment when needed.`
  String get asthma_q10_explanation {
    return Intl.message(
      'Wheezing has multiple possible causes; use emergency assessment when needed.',
      name: 'asthma_q10_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Yes, always`
  String get asthma_q10_opt1 {
    return Intl.message(
      'Yes, always',
      name: 'asthma_q10_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Only if they are young`
  String get asthma_q10_opt2 {
    return Intl.message(
      'Only if they are young',
      name: 'asthma_q10_opt2',
      desc: '',
      args: [],
    );
  }

  /// `No; other conditions can cause wheezing, and severe symptoms need urgent assessment`
  String get asthma_q10_opt3 {
    return Intl.message(
      'No; other conditions can cause wheezing, and severe symptoms need urgent assessment',
      name: 'asthma_q10_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Yes, if they cough`
  String get asthma_q10_opt4 {
    return Intl.message(
      'Yes, if they cough',
      name: 'asthma_q10_opt4',
      desc: '',
      args: [],
    );
  }

  /// `These may be signs of low blood glucose. Give fast-acting sugar if they can swallow safely.`
  String get diabetics_q1_explanation {
    return Intl.message(
      'These may be signs of low blood glucose. Give fast-acting sugar if they can swallow safely.',
      name: 'diabetics_q1_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Oral intake can cause choking or aspiration in someone unable to swallow safely.`
  String get diabetics_q2_explanation {
    return Intl.message(
      'Oral intake can cause choking or aspiration in someone unable to swallow safely.',
      name: 'diabetics_q2_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Hypoglycaemia may cause sweating, tremor, hunger, confusion, and behaviour changes.`
  String get diabetics_q3_explanation {
    return Intl.message(
      'Hypoglycaemia may cause sweating, tremor, hunger, confusion, and behaviour changes.',
      name: 'diabetics_q3_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Unconsciousness is an emergency; do not give oral food or drink.`
  String get diabetics_q4_explanation {
    return Intl.message(
      'Unconsciousness is an emergency; do not give oral food or drink.',
      name: 'diabetics_q4_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Reassess promptly; further sugar or food may be needed according to the person's plan.`
  String get diabetics_q5_explanation {
    return Intl.message(
      'Reassess promptly; further sugar or food may be needed according to the person\'s plan.',
      name: 'diabetics_q5_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Do not administer medication based on guesswork.`
  String get diabetics_q6_explanation {
    return Intl.message(
      'Do not administer medication based on guesswork.',
      name: 'diabetics_q6_explanation',
      desc: '',
      args: [],
    );
  }

  /// `A person with diabetes has fruity-smelling breath, deep breathing, and increasing drowsiness. What should you do?`
  String get diabetics_q7 {
    return Intl.message(
      'A person with diabetes has fruity-smelling breath, deep breathing, and increasing drowsiness. What should you do?',
      name: 'diabetics_q7',
      desc: '',
      args: [],
    );
  }

  /// `These can be signs of diabetic ketoacidosis or another serious condition.`
  String get diabetics_q7_explanation {
    return Intl.message(
      'These can be signs of diabetic ketoacidosis or another serious condition.',
      name: 'diabetics_q7_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Give them candy and leave`
  String get diabetics_q7_opt1 {
    return Intl.message(
      'Give them candy and leave',
      name: 'diabetics_q7_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Ask them to run`
  String get diabetics_q7_opt2 {
    return Intl.message(
      'Ask them to run',
      name: 'diabetics_q7_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Seek urgent medical help; these may be signs of a serious diabetic emergency`
  String get diabetics_q7_opt3 {
    return Intl.message(
      'Seek urgent medical help; these may be signs of a serious diabetic emergency',
      name: 'diabetics_q7_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ignore it`
  String get diabetics_q7_opt4 {
    return Intl.message(
      'Ignore it',
      name: 'diabetics_q7_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A conscious person has a glucose meter and a known low-glucose action plan. What is useful?`
  String get diabetics_q8 {
    return Intl.message(
      'A conscious person has a glucose meter and a known low-glucose action plan. What is useful?',
      name: 'diabetics_q8',
      desc: '',
      args: [],
    );
  }

  /// `Support the person's established plan, while treating serious symptoms urgently.`
  String get diabetics_q8_explanation {
    return Intl.message(
      'Support the person\'s established plan, while treating serious symptoms urgently.',
      name: 'diabetics_q8_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Help them follow their plan and check glucose if possible without delaying urgent care`
  String get diabetics_q8_opt1 {
    return Intl.message(
      'Help them follow their plan and check glucose if possible without delaying urgent care',
      name: 'diabetics_q8_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Hide the meter`
  String get diabetics_q8_opt2 {
    return Intl.message(
      'Hide the meter',
      name: 'diabetics_q8_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Make them fast all day`
  String get diabetics_q8_opt3 {
    return Intl.message(
      'Make them fast all day',
      name: 'diabetics_q8_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Give a random medication`
  String get diabetics_q8_opt4 {
    return Intl.message(
      'Give a random medication',
      name: 'diabetics_q8_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a common cause of hypoglycaemia in someone using insulin or certain diabetes medicines?`
  String get diabetics_q9 {
    return Intl.message(
      'What is a common cause of hypoglycaemia in someone using insulin or certain diabetes medicines?',
      name: 'diabetics_q9',
      desc: '',
      args: [],
    );
  }

  /// `Medication, meals, and activity can affect blood glucose.`
  String get diabetics_q9_explanation {
    return Intl.message(
      'Medication, meals, and activity can affect blood glucose.',
      name: 'diabetics_q9_explanation',
      desc: '',
      args: [],
    );
  }

  /// `A paper cut`
  String get diabetics_q9_opt1 {
    return Intl.message(
      'A paper cut',
      name: 'diabetics_q9_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Too much medication relative to food/activity`
  String get diabetics_q9_opt2 {
    return Intl.message(
      'Too much medication relative to food/activity',
      name: 'diabetics_q9_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Wearing glasses`
  String get diabetics_q9_opt3 {
    return Intl.message(
      'Wearing glasses',
      name: 'diabetics_q9_opt3',
      desc: '',
      args: [],
    );
  }

  /// `A mild sunburn`
  String get diabetics_q9_opt4 {
    return Intl.message(
      'A mild sunburn',
      name: 'diabetics_q9_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person having a suspected low-glucose episode begins having a seizure. What should you do?`
  String get diabetics_q10 {
    return Intl.message(
      'A person having a suspected low-glucose episode begins having a seizure. What should you do?',
      name: 'diabetics_q10',
      desc: '',
      args: [],
    );
  }

  /// `During a seizure, protect the person and do not give oral substances.`
  String get diabetics_q10_explanation {
    return Intl.message(
      'During a seizure, protect the person and do not give oral substances.',
      name: 'diabetics_q10_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Put sugar in their mouth`
  String get diabetics_q10_opt1 {
    return Intl.message(
      'Put sugar in their mouth',
      name: 'diabetics_q10_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Hold them down`
  String get diabetics_q10_opt2 {
    return Intl.message(
      'Hold them down',
      name: 'diabetics_q10_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Make them drink water`
  String get diabetics_q10_opt3 {
    return Intl.message(
      'Make them drink water',
      name: 'diabetics_q10_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Protect them from injury, call emergency services, and put nothing in their mouth`
  String get diabetics_q10_opt4 {
    return Intl.message(
      'Protect them from injury, call emergency services, and put nothing in their mouth',
      name: 'diabetics_q10_opt4',
      desc: '',
      args: [],
    );
  }

  /// `An unconscious person with possible overdose needs urgent help and breathing assessment.`
  String get drug_overdose_q1_explanation {
    return Intl.message(
      'An unconscious person with possible overdose needs urgent help and breathing assessment.',
      name: 'drug_overdose_q1_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Opioids can suppress breathing and consciousness.`
  String get drug_overdose_q2_explanation {
    return Intl.message(
      'Opioids can suppress breathing and consciousness.',
      name: 'drug_overdose_q2_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Naloxone can reverse opioid effects temporarily but emergency care is still needed.`
  String get drug_overdose_q3_explanation {
    return Intl.message(
      'Naloxone can reverse opioid effects temporarily but emergency care is still needed.',
      name: 'drug_overdose_q3_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Vomiting and oral substances can cause further harm.`
  String get drug_overdose_q4_explanation {
    return Intl.message(
      'Vomiting and oral substances can cause further harm.',
      name: 'drug_overdose_q4_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Drowsiness can worsen; seek specialist guidance and monitor closely.`
  String get drug_overdose_q5_explanation {
    return Intl.message(
      'Drowsiness can worsen; seek specialist guidance and monitor closely.',
      name: 'drug_overdose_q5_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Accurate exposure details help guide treatment.`
  String get drug_overdose_q6_explanation {
    return Intl.message(
      'Accurate exposure details help guide treatment.',
      name: 'drug_overdose_q6_explanation',
      desc: '',
      args: [],
    );
  }

  /// `The person stops breathing normally. What should you do?`
  String get drug_overdose_q7 {
    return Intl.message(
      'The person stops breathing normally. What should you do?',
      name: 'drug_overdose_q7',
      desc: '',
      args: [],
    );
  }

  /// `Abnormal or absent breathing is an immediate emergency.`
  String get drug_overdose_q7_explanation {
    return Intl.message(
      'Abnormal or absent breathing is an immediate emergency.',
      name: 'drug_overdose_q7_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Wait for them to wake`
  String get drug_overdose_q7_opt1 {
    return Intl.message(
      'Wait for them to wake',
      name: 'drug_overdose_q7_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Give them water`
  String get drug_overdose_q7_opt2 {
    return Intl.message(
      'Give them water',
      name: 'drug_overdose_q7_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Put them in a car alone`
  String get drug_overdose_q7_opt3 {
    return Intl.message(
      'Put them in a car alone',
      name: 'drug_overdose_q7_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services and start CPR as directed; use an AED if available`
  String get drug_overdose_q7_opt4 {
    return Intl.message(
      'Call emergency services and start CPR as directed; use an AED if available',
      name: 'drug_overdose_q7_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Why should you not leave an overdose casualty alone?`
  String get drug_overdose_q8 {
    return Intl.message(
      'Why should you not leave an overdose casualty alone?',
      name: 'drug_overdose_q8',
      desc: '',
      args: [],
    );
  }

  /// `Overdose effects can worsen quickly.`
  String get drug_overdose_q8_explanation {
    return Intl.message(
      'Overdose effects can worsen quickly.',
      name: 'drug_overdose_q8_explanation',
      desc: '',
      args: [],
    );
  }

  /// `They might get bored`
  String get drug_overdose_q8_opt1 {
    return Intl.message(
      'They might get bored',
      name: 'drug_overdose_q8_opt1',
      desc: '',
      args: [],
    );
  }

  /// `It makes medication work faster`
  String get drug_overdose_q8_opt2 {
    return Intl.message(
      'It makes medication work faster',
      name: 'drug_overdose_q8_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Their breathing or consciousness may deteriorate`
  String get drug_overdose_q8_opt3 {
    return Intl.message(
      'Their breathing or consciousness may deteriorate',
      name: 'drug_overdose_q8_opt3',
      desc: '',
      args: [],
    );
  }

  /// `It prevents emergency help`
  String get drug_overdose_q8_opt4 {
    return Intl.message(
      'It prevents emergency help',
      name: 'drug_overdose_q8_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person may have mixed alcohol and sedating medication. What is the main concern?`
  String get drug_overdose_q9 {
    return Intl.message(
      'A person may have mixed alcohol and sedating medication. What is the main concern?',
      name: 'drug_overdose_q9',
      desc: '',
      args: [],
    );
  }

  /// `Combining depressants can dangerously affect consciousness and breathing.`
  String get drug_overdose_q9_explanation {
    return Intl.message(
      'Combining depressants can dangerously affect consciousness and breathing.',
      name: 'drug_overdose_q9_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Improved coordination`
  String get drug_overdose_q9_opt1 {
    return Intl.message(
      'Improved coordination',
      name: 'drug_overdose_q9_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Dangerous sedation and breathing suppression`
  String get drug_overdose_q9_opt2 {
    return Intl.message(
      'Dangerous sedation and breathing suppression',
      name: 'drug_overdose_q9_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Guaranteed rapid recovery`
  String get drug_overdose_q9_opt3 {
    return Intl.message(
      'Guaranteed rapid recovery',
      name: 'drug_overdose_q9_opt3',
      desc: '',
      args: [],
    );
  }

  /// `No possible interaction`
  String get drug_overdose_q9_opt4 {
    return Intl.message(
      'No possible interaction',
      name: 'drug_overdose_q9_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do with medication packaging after an overdose?`
  String get drug_overdose_q10 {
    return Intl.message(
      'What should you do with medication packaging after an overdose?',
      name: 'drug_overdose_q10',
      desc: '',
      args: [],
    );
  }

  /// `Packaging helps identify the substance and strength.`
  String get drug_overdose_q10_explanation {
    return Intl.message(
      'Packaging helps identify the substance and strength.',
      name: 'drug_overdose_q10_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Keep it available for responders if safe`
  String get drug_overdose_q10_opt1 {
    return Intl.message(
      'Keep it available for responders if safe',
      name: 'drug_overdose_q10_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Throw it away immediately`
  String get drug_overdose_q10_opt2 {
    return Intl.message(
      'Throw it away immediately',
      name: 'drug_overdose_q10_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Mix remaining pills together`
  String get drug_overdose_q10_opt3 {
    return Intl.message(
      'Mix remaining pills together',
      name: 'drug_overdose_q10_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Taste the contents`
  String get drug_overdose_q10_opt4 {
    return Intl.message(
      'Taste the contents',
      name: 'drug_overdose_q10_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Prompt irrigation is important after many chemical eye exposures.`
  String get eye_injury_q1_explanation {
    return Intl.message(
      'Prompt irrigation is important after many chemical eye exposures.',
      name: 'eye_injury_q1_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Do not remove penetrating objects or press on the injured eye.`
  String get eye_injury_q2_explanation {
    return Intl.message(
      'Do not remove penetrating objects or press on the injured eye.',
      name: 'eye_injury_q2_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Rinsing may remove a loose particle; seek care if it remains or symptoms continue.`
  String get eye_injury_q3_explanation {
    return Intl.message(
      'Rinsing may remove a loose particle; seek care if it remains or symptoms continue.',
      name: 'eye_injury_q3_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Sudden vision loss, severe pain, or penetrating injury needs urgent assessment.`
  String get eye_injury_q4_explanation {
    return Intl.message(
      'Sudden vision loss, severe pain, or penetrating injury needs urgent assessment.',
      name: 'eye_injury_q4_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Do not press on the eye; vision changes or significant trauma need urgent assessment.`
  String get eye_injury_q5_explanation {
    return Intl.message(
      'Do not press on the eye; vision changes or significant trauma need urgent assessment.',
      name: 'eye_injury_q5_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Do not attempt to remove an embedded object.`
  String get eye_injury_q6_explanation {
    return Intl.message(
      'Do not attempt to remove an embedded object.',
      name: 'eye_injury_q6_explanation',
      desc: '',
      args: [],
    );
  }

  /// `A chemical eye splash is being rinsed. How long should you wait before starting to rinse?`
  String get eye_injury_q7 {
    return Intl.message(
      'A chemical eye splash is being rinsed. How long should you wait before starting to rinse?',
      name: 'eye_injury_q7',
      desc: '',
      args: [],
    );
  }

  /// `Start irrigation immediately and follow product-specific emergency guidance.`
  String get eye_injury_q7_explanation {
    return Intl.message(
      'Start irrigation immediately and follow product-specific emergency guidance.',
      name: 'eye_injury_q7_explanation',
      desc: '',
      args: [],
    );
  }

  /// `At least an hour`
  String get eye_injury_q7_opt1 {
    return Intl.message(
      'At least an hour',
      name: 'eye_injury_q7_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Until pain becomes severe`
  String get eye_injury_q7_opt2 {
    return Intl.message(
      'Until pain becomes severe',
      name: 'eye_injury_q7_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Until the next day`
  String get eye_injury_q7_opt3 {
    return Intl.message(
      'Until the next day',
      name: 'eye_injury_q7_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Do not delay; begin rinsing immediately`
  String get eye_injury_q7_opt4 {
    return Intl.message(
      'Do not delay; begin rinsing immediately',
      name: 'eye_injury_q7_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do if both eyes are exposed to a chemical?`
  String get eye_injury_q8 {
    return Intl.message(
      'What should you do if both eyes are exposed to a chemical?',
      name: 'eye_injury_q8',
      desc: '',
      args: [],
    );
  }

  /// `Prompt irrigation of exposed eyes is critical.`
  String get eye_injury_q8_explanation {
    return Intl.message(
      'Prompt irrigation of exposed eyes is critical.',
      name: 'eye_injury_q8_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Rinse both eyes promptly with clean flowing water and seek urgent advice`
  String get eye_injury_q8_opt1 {
    return Intl.message(
      'Rinse both eyes promptly with clean flowing water and seek urgent advice',
      name: 'eye_injury_q8_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Rub both eyes`
  String get eye_injury_q8_opt2 {
    return Intl.message(
      'Rub both eyes',
      name: 'eye_injury_q8_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Cover both eyes and do not rinse`
  String get eye_injury_q8_opt3 {
    return Intl.message(
      'Cover both eyes and do not rinse',
      name: 'eye_injury_q8_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Add neutralizing chemicals`
  String get eye_injury_q8_opt4 {
    return Intl.message(
      'Add neutralizing chemicals',
      name: 'eye_injury_q8_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Why should contact lenses be removed after chemical exposure if easy to do?`
  String get eye_injury_q9 {
    return Intl.message(
      'Why should contact lenses be removed after chemical exposure if easy to do?',
      name: 'eye_injury_q9',
      desc: '',
      args: [],
    );
  }

  /// `Begin rinsing first; remove lenses if they come out easily while flushing.`
  String get eye_injury_q9_explanation {
    return Intl.message(
      'Begin rinsing first; remove lenses if they come out easily while flushing.',
      name: 'eye_injury_q9_explanation',
      desc: '',
      args: [],
    );
  }

  /// `To increase the chemical's effect`
  String get eye_injury_q9_opt1 {
    return Intl.message(
      'To increase the chemical\'s effect',
      name: 'eye_injury_q9_opt1',
      desc: '',
      args: [],
    );
  }

  /// `To help rinse the eye; do not delay irrigation to remove them`
  String get eye_injury_q9_opt2 {
    return Intl.message(
      'To help rinse the eye; do not delay irrigation to remove them',
      name: 'eye_injury_q9_opt2',
      desc: '',
      args: [],
    );
  }

  /// `To make the eye bleed`
  String get eye_injury_q9_opt3 {
    return Intl.message(
      'To make the eye bleed',
      name: 'eye_injury_q9_opt3',
      desc: '',
      args: [],
    );
  }

  /// `It is never appropriate`
  String get eye_injury_q9_opt4 {
    return Intl.message(
      'It is never appropriate',
      name: 'eye_injury_q9_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person has an object stuck in the eye after an accident. How should it be protected?`
  String get eye_injury_q10 {
    return Intl.message(
      'A person has an object stuck in the eye after an accident. How should it be protected?',
      name: 'eye_injury_q10',
      desc: '',
      args: [],
    );
  }

  /// `Protect without applying pressure and seek urgent medical care.`
  String get eye_injury_q10_explanation {
    return Intl.message(
      'Protect without applying pressure and seek urgent medical care.',
      name: 'eye_injury_q10_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Tie a tight bandage over the object`
  String get eye_injury_q10_opt1 {
    return Intl.message(
      'Tie a tight bandage over the object',
      name: 'eye_injury_q10_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Push it in`
  String get eye_injury_q10_opt2 {
    return Intl.message(
      'Push it in',
      name: 'eye_injury_q10_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Use a shield or loose protection without pressing and get emergency care`
  String get eye_injury_q10_opt3 {
    return Intl.message(
      'Use a shield or loose protection without pressing and get emergency care',
      name: 'eye_injury_q10_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ask them to blink forcefully`
  String get eye_injury_q10_opt4 {
    return Intl.message(
      'Ask them to blink forcefully',
      name: 'eye_injury_q10_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Worsening confusion and repeated vomiting are warning signs after head injury.`
  String get head_injury_q1_explanation {
    return Intl.message(
      'Worsening confusion and repeated vomiting are warning signs after head injury.',
      name: 'head_injury_q1_explanation',
      desc: '',
      args: [],
    );
  }

  /// `These may indicate a serious brain injury.`
  String get head_injury_q2_explanation {
    return Intl.message(
      'These may indicate a serious brain injury.',
      name: 'head_injury_q2_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Avoid unnecessary movement when spinal injury may coexist.`
  String get head_injury_q3_explanation {
    return Intl.message(
      'Avoid unnecessary movement when spinal injury may coexist.',
      name: 'head_injury_q3_explanation',
      desc: '',
      args: [],
    );
  }

  /// `The absence of a cut does not rule out brain injury.`
  String get head_injury_q4_explanation {
    return Intl.message(
      'The absence of a cut does not rule out brain injury.',
      name: 'head_injury_q4_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Abnormal breathing and unresponsiveness require immediate resuscitation.`
  String get head_injury_q5_explanation {
    return Intl.message(
      'Abnormal breathing and unresponsiveness require immediate resuscitation.',
      name: 'head_injury_q5_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Returning too soon can worsen risk; follow medical guidance and return-to-play protocols.`
  String get head_injury_q6_explanation {
    return Intl.message(
      'Returning too soon can worsen risk; follow medical guidance and return-to-play protocols.',
      name: 'head_injury_q6_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Why is monitoring important after head injury?`
  String get head_injury_q7 {
    return Intl.message(
      'Why is monitoring important after head injury?',
      name: 'head_injury_q7',
      desc: '',
      args: [],
    );
  }

  /// `Some serious symptoms develop over time.`
  String get head_injury_q7_explanation {
    return Intl.message(
      'Some serious symptoms develop over time.',
      name: 'head_injury_q7_explanation',
      desc: '',
      args: [],
    );
  }

  /// `It guarantees there is no injury`
  String get head_injury_q7_opt1 {
    return Intl.message(
      'It guarantees there is no injury',
      name: 'head_injury_q7_opt1',
      desc: '',
      args: [],
    );
  }

  /// `It replaces medical care`
  String get head_injury_q7_opt2 {
    return Intl.message(
      'It replaces medical care',
      name: 'head_injury_q7_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Symptoms can worsen or appear later`
  String get head_injury_q7_opt3 {
    return Intl.message(
      'Symptoms can worsen or appear later',
      name: 'head_injury_q7_opt3',
      desc: '',
      args: [],
    );
  }

  /// `It prevents all swelling`
  String get head_injury_q7_opt4 {
    return Intl.message(
      'It prevents all swelling',
      name: 'head_injury_q7_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person taking blood-thinning medication has hit their head. What should you advise?`
  String get head_injury_q8 {
    return Intl.message(
      'A person taking blood-thinning medication has hit their head. What should you advise?',
      name: 'head_injury_q8',
      desc: '',
      args: [],
    );
  }

  /// `Blood-thinning medication can increase the risk of serious bleeding after head trauma.`
  String get head_injury_q8_explanation {
    return Intl.message(
      'Blood-thinning medication can increase the risk of serious bleeding after head trauma.',
      name: 'head_injury_q8_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Ignore it if they feel okay`
  String get head_injury_q8_opt1 {
    return Intl.message(
      'Ignore it if they feel okay',
      name: 'head_injury_q8_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Let them sleep without assessment`
  String get head_injury_q8_opt2 {
    return Intl.message(
      'Let them sleep without assessment',
      name: 'head_injury_q8_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Ask them to exercise`
  String get head_injury_q8_opt3 {
    return Intl.message(
      'Ask them to exercise',
      name: 'head_injury_q8_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Seek prompt medical advice because bleeding risk may be higher`
  String get head_injury_q8_opt4 {
    return Intl.message(
      'Seek prompt medical advice because bleeding risk may be higher',
      name: 'head_injury_q8_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do with a scalp wound that is bleeding heavily?`
  String get head_injury_q9 {
    return Intl.message(
      'What should you do with a scalp wound that is bleeding heavily?',
      name: 'head_injury_q9',
      desc: '',
      args: [],
    );
  }

  /// `Control bleeding carefully and obtain urgent assessment for serious head injury.`
  String get head_injury_q9_explanation {
    return Intl.message(
      'Control bleeding carefully and obtain urgent assessment for serious head injury.',
      name: 'head_injury_q9_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Apply suitable direct pressure if safe, avoiding pressure over suspected skull depression, and seek urgent help`
  String get head_injury_q9_opt1 {
    return Intl.message(
      'Apply suitable direct pressure if safe, avoiding pressure over suspected skull depression, and seek urgent help',
      name: 'head_injury_q9_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Ignore it`
  String get head_injury_q9_opt2 {
    return Intl.message(
      'Ignore it',
      name: 'head_injury_q9_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Pour household cleaner on it`
  String get head_injury_q9_opt3 {
    return Intl.message(
      'Pour household cleaner on it',
      name: 'head_injury_q9_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Scrub the wound deeply`
  String get head_injury_q9_opt4 {
    return Intl.message(
      'Scrub the wound deeply',
      name: 'head_injury_q9_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which is unsafe after a significant head injury?`
  String get head_injury_q10 {
    return Intl.message(
      'Which is unsafe after a significant head injury?',
      name: 'head_injury_q10',
      desc: '',
      args: [],
    );
  }

  /// `Stop activity and watch for warning signs; seek appropriate medical care.`
  String get head_injury_q10_explanation {
    return Intl.message(
      'Stop activity and watch for warning signs; seek appropriate medical care.',
      name: 'head_injury_q10_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Calling emergency services when needed`
  String get head_injury_q10_opt1 {
    return Intl.message(
      'Calling emergency services when needed',
      name: 'head_injury_q10_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Letting the person continue risky activity without assessment`
  String get head_injury_q10_opt2 {
    return Intl.message(
      'Letting the person continue risky activity without assessment',
      name: 'head_injury_q10_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Monitoring alertness`
  String get head_injury_q10_opt3 {
    return Intl.message(
      'Monitoring alertness',
      name: 'head_injury_q10_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Recording changes in symptoms`
  String get head_injury_q10_opt4 {
    return Intl.message(
      'Recording changes in symptoms',
      name: 'head_injury_q10_opt4',
      desc: '',
      args: [],
    );
  }

  /// `These may be heart attack symptoms and require emergency assessment.`
  String get heart_condition_q1_explanation {
    return Intl.message(
      'These may be heart attack symptoms and require emergency assessment.',
      name: 'heart_condition_q1_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Heart attack symptoms may include chest pressure and discomfort in other areas.`
  String get heart_condition_q2_explanation {
    return Intl.message(
      'Heart attack symptoms may include chest pressure and discomfort in other areas.',
      name: 'heart_condition_q2_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Cardiac arrest requires immediate CPR and defibrillation when available.`
  String get heart_condition_q3_explanation {
    return Intl.message(
      'Cardiac arrest requires immediate CPR and defibrillation when available.',
      name: 'heart_condition_q3_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Emergency transport allows monitoring and treatment en route.`
  String get heart_condition_q4_explanation {
    return Intl.message(
      'Emergency transport allows monitoring and treatment en route.',
      name: 'heart_condition_q4_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Rest and monitoring are appropriate while awaiting responders.`
  String get heart_condition_q5_explanation {
    return Intl.message(
      'Rest and monitoring are appropriate while awaiting responders.',
      name: 'heart_condition_q5_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Aspirin may be advised in some cases, but contraindications and local protocols matter.`
  String get heart_condition_q6_explanation {
    return Intl.message(
      'Aspirin may be advised in some cases, but contraindications and local protocols matter.',
      name: 'heart_condition_q6_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Can heart attack symptoms be mild or atypical?`
  String get heart_condition_q7 {
    return Intl.message(
      'Can heart attack symptoms be mild or atypical?',
      name: 'heart_condition_q7',
      desc: '',
      args: [],
    );
  }

  /// `Not every heart attack presents with severe central chest pain.`
  String get heart_condition_q7_explanation {
    return Intl.message(
      'Not every heart attack presents with severe central chest pain.',
      name: 'heart_condition_q7_explanation',
      desc: '',
      args: [],
    );
  }

  /// `No, always dramatic`
  String get heart_condition_q7_opt1 {
    return Intl.message(
      'No, always dramatic',
      name: 'heart_condition_q7_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Only in athletes`
  String get heart_condition_q7_opt2 {
    return Intl.message(
      'Only in athletes',
      name: 'heart_condition_q7_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Only during sleep`
  String get heart_condition_q7_opt3 {
    return Intl.message(
      'Only during sleep',
      name: 'heart_condition_q7_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Yes; symptoms vary and may include breathlessness, nausea, or unusual fatigue`
  String get heart_condition_q7_opt4 {
    return Intl.message(
      'Yes; symptoms vary and may include breathlessness, nausea, or unusual fatigue',
      name: 'heart_condition_q7_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is an AED used for?`
  String get heart_condition_q8 {
    return Intl.message(
      'What is an AED used for?',
      name: 'heart_condition_q8',
      desc: '',
      args: [],
    );
  }

  /// `An AED guides the rescuer and shocks only when indicated.`
  String get heart_condition_q8_explanation {
    return Intl.message(
      'An AED guides the rescuer and shocks only when indicated.',
      name: 'heart_condition_q8_explanation',
      desc: '',
      args: [],
    );
  }

  /// `To analyze heart rhythm and deliver a shock when indicated`
  String get heart_condition_q8_opt1 {
    return Intl.message(
      'To analyze heart rhythm and deliver a shock when indicated',
      name: 'heart_condition_q8_opt1',
      desc: '',
      args: [],
    );
  }

  /// `To measure temperature only`
  String get heart_condition_q8_opt2 {
    return Intl.message(
      'To measure temperature only',
      name: 'heart_condition_q8_opt2',
      desc: '',
      args: [],
    );
  }

  /// `To give oxygen through a mask`
  String get heart_condition_q8_opt3 {
    return Intl.message(
      'To give oxygen through a mask',
      name: 'heart_condition_q8_opt3',
      desc: '',
      args: [],
    );
  }

  /// `To stop all bleeding`
  String get heart_condition_q8_opt4 {
    return Intl.message(
      'To stop all bleeding',
      name: 'heart_condition_q8_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person says chest discomfort has passed. Should you automatically ignore it?`
  String get heart_condition_q9 {
    return Intl.message(
      'A person says chest discomfort has passed. Should you automatically ignore it?',
      name: 'heart_condition_q9',
      desc: '',
      args: [],
    );
  }

  /// `Symptoms can fluctuate; suspected cardiac events need prompt assessment.`
  String get heart_condition_q9_explanation {
    return Intl.message(
      'Symptoms can fluctuate; suspected cardiac events need prompt assessment.',
      name: 'heart_condition_q9_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Yes, if they smile`
  String get heart_condition_q9_opt1 {
    return Intl.message(
      'Yes, if they smile',
      name: 'heart_condition_q9_opt1',
      desc: '',
      args: [],
    );
  }

  /// `No; suspected heart attack symptoms still need urgent medical advice`
  String get heart_condition_q9_opt2 {
    return Intl.message(
      'No; suspected heart attack symptoms still need urgent medical advice',
      name: 'heart_condition_q9_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Yes, if they are young`
  String get heart_condition_q9_opt3 {
    return Intl.message(
      'Yes, if they are young',
      name: 'heart_condition_q9_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Only call tomorrow`
  String get heart_condition_q9_opt4 {
    return Intl.message(
      'Only call tomorrow',
      name: 'heart_condition_q9_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do if the person stops responding while you are monitoring them?`
  String get heart_condition_q10 {
    return Intl.message(
      'What should you do if the person stops responding while you are monitoring them?',
      name: 'heart_condition_q10',
      desc: '',
      args: [],
    );
  }

  /// `Reassess responsiveness and breathing and act immediately if they are in cardiac arrest.`
  String get heart_condition_q10_explanation {
    return Intl.message(
      'Reassess responsiveness and breathing and act immediately if they are in cardiac arrest.',
      name: 'heart_condition_q10_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Give food`
  String get heart_condition_q10_opt1 {
    return Intl.message(
      'Give food',
      name: 'heart_condition_q10_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Make them stand`
  String get heart_condition_q10_opt2 {
    return Intl.message(
      'Make them stand',
      name: 'heart_condition_q10_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Check breathing and activate emergency resuscitation steps`
  String get heart_condition_q10_opt3 {
    return Intl.message(
      'Check breathing and activate emergency resuscitation steps',
      name: 'heart_condition_q10_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Leave to find their family first`
  String get heart_condition_q10_opt4 {
    return Intl.message(
      'Leave to find their family first',
      name: 'heart_condition_q10_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Protect from injury and time the seizure; do not restrain them.`
  String get seizures_q1_explanation {
    return Intl.message(
      'Protect from injury and time the seizure; do not restrain them.',
      name: 'seizures_q1_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Objects can cause injury or obstruct the airway.`
  String get seizures_q2_explanation {
    return Intl.message(
      'Objects can cause injury or obstruct the airway.',
      name: 'seizures_q2_explanation',
      desc: '',
      args: [],
    );
  }

  /// `A prolonged seizure or specified red flags require emergency assistance.`
  String get seizures_q3_explanation {
    return Intl.message(
      'A prolonged seizure or specified red flags require emergency assistance.',
      name: 'seizures_q3_explanation',
      desc: '',
      args: [],
    );
  }

  /// `The recovery position can help protect the airway after a seizure when appropriate.`
  String get seizures_q4_explanation {
    return Intl.message(
      'The recovery position can help protect the airway after a seizure when appropriate.',
      name: 'seizures_q4_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Restraint can cause injury.`
  String get seizures_q5_explanation {
    return Intl.message(
      'Restraint can cause injury.',
      name: 'seizures_q5_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Duration is important information for emergency responders.`
  String get seizures_q6_explanation {
    return Intl.message(
      'Duration is important information for emergency responders.',
      name: 'seizures_q6_explanation',
      desc: '',
      args: [],
    );
  }

  /// `A person has a seizure in water. What should you do?`
  String get seizures_q7 {
    return Intl.message(
      'A person has a seizure in water. What should you do?',
      name: 'seizures_q7',
      desc: '',
      args: [],
    );
  }

  /// `Seizures in water carry drowning risk and require urgent help.`
  String get seizures_q7_explanation {
    return Intl.message(
      'Seizures in water carry drowning risk and require urgent help.',
      name: 'seizures_q7_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Leave them submerged until it stops`
  String get seizures_q7_opt1 {
    return Intl.message(
      'Leave them submerged until it stops',
      name: 'seizures_q7_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Give them a drink`
  String get seizures_q7_opt2 {
    return Intl.message(
      'Give them a drink',
      name: 'seizures_q7_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Get them safely out if possible without endangering yourself and call emergency services`
  String get seizures_q7_opt3 {
    return Intl.message(
      'Get them safely out if possible without endangering yourself and call emergency services',
      name: 'seizures_q7_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Force their mouth open`
  String get seizures_q7_opt4 {
    return Intl.message(
      'Force their mouth open',
      name: 'seizures_q7_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person remains confused after a seizure. What is appropriate?`
  String get seizures_q8 {
    return Intl.message(
      'A person remains confused after a seizure. What is appropriate?',
      name: 'seizures_q8',
      desc: '',
      args: [],
    );
  }

  /// `Confusion can occur after a seizure; protect them and monitor their condition.`
  String get seizures_q8_explanation {
    return Intl.message(
      'Confusion can occur after a seizure; protect them and monitor their condition.',
      name: 'seizures_q8_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Make them drive`
  String get seizures_q8_opt1 {
    return Intl.message(
      'Make them drive',
      name: 'seizures_q8_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Give them alcohol`
  String get seizures_q8_opt2 {
    return Intl.message(
      'Give them alcohol',
      name: 'seizures_q8_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Leave them alone in a bath`
  String get seizures_q8_opt3 {
    return Intl.message(
      'Leave them alone in a bath',
      name: 'seizures_q8_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Stay with them, reassure them, and monitor recovery`
  String get seizures_q8_opt4 {
    return Intl.message(
      'Stay with them, reassure them, and monitor recovery',
      name: 'seizures_q8_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do if a person is injured during a seizure?`
  String get seizures_q9 {
    return Intl.message(
      'What should you do if a person is injured during a seizure?',
      name: 'seizures_q9',
      desc: '',
      args: [],
    );
  }

  /// `Assess for injury once safe and obtain help for serious problems.`
  String get seizures_q9_explanation {
    return Intl.message(
      'Assess for injury once safe and obtain help for serious problems.',
      name: 'seizures_q9_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Address serious injuries and seek medical help as needed after the seizure`
  String get seizures_q9_opt1 {
    return Intl.message(
      'Address serious injuries and seek medical help as needed after the seizure',
      name: 'seizures_q9_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Ignore all injuries`
  String get seizures_q9_opt2 {
    return Intl.message(
      'Ignore all injuries',
      name: 'seizures_q9_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Move broken bones into place`
  String get seizures_q9_opt3 {
    return Intl.message(
      'Move broken bones into place',
      name: 'seizures_q9_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Give food during jerking`
  String get seizures_q9_opt4 {
    return Intl.message(
      'Give food during jerking',
      name: 'seizures_q9_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person has never had a seizure before and experiences one. What should you do?`
  String get seizures_q10 {
    return Intl.message(
      'A person has never had a seizure before and experiences one. What should you do?',
      name: 'seizures_q10',
      desc: '',
      args: [],
    );
  }

  /// `A first seizure needs medical assessment.`
  String get seizures_q10_explanation {
    return Intl.message(
      'A first seizure needs medical assessment.',
      name: 'seizures_q10_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Assume it is harmless`
  String get seizures_q10_opt1 {
    return Intl.message(
      'Assume it is harmless',
      name: 'seizures_q10_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Seek urgent medical assessment and call emergency services as appropriate`
  String get seizures_q10_opt2 {
    return Intl.message(
      'Seek urgent medical assessment and call emergency services as appropriate',
      name: 'seizures_q10_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Give someone else's medication`
  String get seizures_q10_opt3 {
    return Intl.message(
      'Give someone else\'s medication',
      name: 'seizures_q10_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Ask them to run`
  String get seizures_q10_opt4 {
    return Intl.message(
      'Ask them to run',
      name: 'seizures_q10_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Pale, clammy skin and confusion can be signs of shock.`
  String get shock_q1_explanation {
    return Intl.message(
      'Pale, clammy skin and confusion can be signs of shock.',
      name: 'shock_q1_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Shock is life-threatening and requires urgent help.`
  String get shock_q2_explanation {
    return Intl.message(
      'Shock is life-threatening and requires urgent help.',
      name: 'shock_q2_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Food and drink may create risks if urgent treatment is needed.`
  String get shock_q3_explanation {
    return Intl.message(
      'Food and drink may create risks if urgent treatment is needed.',
      name: 'shock_q3_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Treat the cause where possible, especially life-threatening bleeding.`
  String get shock_q4_explanation {
    return Intl.message(
      'Treat the cause where possible, especially life-threatening bleeding.',
      name: 'shock_q4_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Prevent heat loss while waiting for emergency assistance.`
  String get shock_q5_explanation {
    return Intl.message(
      'Prevent heat loss while waiting for emergency assistance.',
      name: 'shock_q5_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Positioning depends on injuries and breathing; do not use a rigid one-size-fits-all approach.`
  String get shock_q6_explanation {
    return Intl.message(
      'Positioning depends on injuries and breathing; do not use a rigid one-size-fits-all approach.',
      name: 'shock_q6_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Why is shock dangerous?`
  String get shock_q7 {
    return Intl.message(
      'Why is shock dangerous?',
      name: 'shock_q7',
      desc: '',
      args: [],
    );
  }

  /// `Shock can cause organ failure without prompt treatment.`
  String get shock_q7_explanation {
    return Intl.message(
      'Shock can cause organ failure without prompt treatment.',
      name: 'shock_q7_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Vital organs may not receive enough blood flow and oxygen`
  String get shock_q7_opt1 {
    return Intl.message(
      'Vital organs may not receive enough blood flow and oxygen',
      name: 'shock_q7_opt1',
      desc: '',
      args: [],
    );
  }

  /// `It always resolves by itself`
  String get shock_q7_opt2 {
    return Intl.message(
      'It always resolves by itself',
      name: 'shock_q7_opt2',
      desc: '',
      args: [],
    );
  }

  /// `It only affects the skin`
  String get shock_q7_opt3 {
    return Intl.message(
      'It only affects the skin',
      name: 'shock_q7_opt3',
      desc: '',
      args: [],
    );
  }

  /// `It is never urgent`
  String get shock_q7_opt4 {
    return Intl.message(
      'It is never urgent',
      name: 'shock_q7_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person becomes less responsive while you wait for help. What should you do?`
  String get shock_q8 {
    return Intl.message(
      'A person becomes less responsive while you wait for help. What should you do?',
      name: 'shock_q8',
      desc: '',
      args: [],
    );
  }

  /// `Monitor changes and act immediately if breathing becomes abnormal.`
  String get shock_q8_explanation {
    return Intl.message(
      'Monitor changes and act immediately if breathing becomes abnormal.',
      name: 'shock_q8_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Give water`
  String get shock_q8_opt1 {
    return Intl.message(
      'Give water',
      name: 'shock_q8_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Reassess breathing and follow emergency/CPR guidance if needed`
  String get shock_q8_opt2 {
    return Intl.message(
      'Reassess breathing and follow emergency/CPR guidance if needed',
      name: 'shock_q8_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Make them stand`
  String get shock_q8_opt3 {
    return Intl.message(
      'Make them stand',
      name: 'shock_q8_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Leave them alone`
  String get shock_q8_opt4 {
    return Intl.message(
      'Leave them alone',
      name: 'shock_q8_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Which can cause medical shock?`
  String get shock_q9 {
    return Intl.message(
      'Which can cause medical shock?',
      name: 'shock_q9',
      desc: '',
      args: [],
    );
  }

  /// `Shock can result from several life-threatening conditions.`
  String get shock_q9_explanation {
    return Intl.message(
      'Shock can result from several life-threatening conditions.',
      name: 'shock_q9_explanation',
      desc: '',
      args: [],
    );
  }

  /// `A paper cut only`
  String get shock_q9_opt1 {
    return Intl.message(
      'A paper cut only',
      name: 'shock_q9_opt1',
      desc: '',
      args: [],
    );
  }

  /// `A mild itch only`
  String get shock_q9_opt2 {
    return Intl.message(
      'A mild itch only',
      name: 'shock_q9_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Severe bleeding, major burns, or serious allergic reaction`
  String get shock_q9_opt3 {
    return Intl.message(
      'Severe bleeding, major burns, or serious allergic reaction',
      name: 'shock_q9_opt3',
      desc: '',
      args: [],
    );
  }

  /// `A healed scar`
  String get shock_q9_opt4 {
    return Intl.message(
      'A healed scar',
      name: 'shock_q9_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you tell emergency responders?`
  String get shock_q10 {
    return Intl.message(
      'What should you tell emergency responders?',
      name: 'shock_q10',
      desc: '',
      args: [],
    );
  }

  /// `A concise handover helps responders assess and treat the casualty.`
  String get shock_q10_explanation {
    return Intl.message(
      'A concise handover helps responders assess and treat the casualty.',
      name: 'shock_q10_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Only the person's favourite colour`
  String get shock_q10_opt1 {
    return Intl.message(
      'Only the person\'s favourite colour',
      name: 'shock_q10_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Your guess about their personality`
  String get shock_q10_opt2 {
    return Intl.message(
      'Your guess about their personality',
      name: 'shock_q10_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Nothing if they look pale`
  String get shock_q10_opt3 {
    return Intl.message(
      'Nothing if they look pale',
      name: 'shock_q10_opt3',
      desc: '',
      args: [],
    );
  }

  /// `What happened, observed symptoms, and first aid provided`
  String get shock_q10_opt4 {
    return Intl.message(
      'What happened, observed symptoms, and first aid provided',
      name: 'shock_q10_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Neck pain and tingling after trauma can indicate spinal injury.`
  String get spinal_injury_q1_explanation {
    return Intl.message(
      'Neck pain and tingling after trauma can indicate spinal injury.',
      name: 'spinal_injury_q1_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Avoid unnecessary movement to reduce the risk of worsening injury.`
  String get spinal_injury_q2_explanation {
    return Intl.message(
      'Avoid unnecessary movement to reduce the risk of worsening injury.',
      name: 'spinal_injury_q2_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Neurological symptoms after trauma are concerning.`
  String get spinal_injury_q3_explanation {
    return Intl.message(
      'Neurological symptoms after trauma are concerning.',
      name: 'spinal_injury_q3_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Life-saving airway and breathing care take priority.`
  String get spinal_injury_q4_explanation {
    return Intl.message(
      'Life-saving airway and breathing care take priority.',
      name: 'spinal_injury_q4_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Do not force alignment or test neck movement.`
  String get spinal_injury_q5_explanation {
    return Intl.message(
      'Do not force alignment or test neck movement.',
      name: 'spinal_injury_q5_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Immediate danger may require movement, but minimize movement as much as possible.`
  String get spinal_injury_q6_explanation {
    return Intl.message(
      'Immediate danger may require movement, but minimize movement as much as possible.',
      name: 'spinal_injury_q6_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Why is it important to monitor breathing in a suspected spinal injury?`
  String get spinal_injury_q7 {
    return Intl.message(
      'Why is it important to monitor breathing in a suspected spinal injury?',
      name: 'spinal_injury_q7',
      desc: '',
      args: [],
    );
  }

  /// `Continue to monitor and be prepared to respond to breathing problems.`
  String get spinal_injury_q7_explanation {
    return Intl.message(
      'Continue to monitor and be prepared to respond to breathing problems.',
      name: 'spinal_injury_q7_explanation',
      desc: '',
      args: [],
    );
  }

  /// `It makes the injury disappear`
  String get spinal_injury_q7_opt1 {
    return Intl.message(
      'It makes the injury disappear',
      name: 'spinal_injury_q7_opt1',
      desc: '',
      args: [],
    );
  }

  /// `It diagnoses every fracture`
  String get spinal_injury_q7_opt2 {
    return Intl.message(
      'It diagnoses every fracture',
      name: 'spinal_injury_q7_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Breathing can deteriorate and airway care may be needed`
  String get spinal_injury_q7_opt3 {
    return Intl.message(
      'Breathing can deteriorate and airway care may be needed',
      name: 'spinal_injury_q7_opt3',
      desc: '',
      args: [],
    );
  }

  /// `It replaces emergency care`
  String get spinal_injury_q7_opt4 {
    return Intl.message(
      'It replaces emergency care',
      name: 'spinal_injury_q7_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do if the person is awake and says they have back pain after a high fall?`
  String get spinal_injury_q8 {
    return Intl.message(
      'What should you do if the person is awake and says they have back pain after a high fall?',
      name: 'spinal_injury_q8',
      desc: '',
      args: [],
    );
  }

  /// `A high-energy fall and back pain warrant concern for spinal injury.`
  String get spinal_injury_q8_explanation {
    return Intl.message(
      'A high-energy fall and back pain warrant concern for spinal injury.',
      name: 'spinal_injury_q8_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Make them walk to check function`
  String get spinal_injury_q8_opt1 {
    return Intl.message(
      'Make them walk to check function',
      name: 'spinal_injury_q8_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Twist their back`
  String get spinal_injury_q8_opt2 {
    return Intl.message(
      'Twist their back',
      name: 'spinal_injury_q8_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Give them exercise`
  String get spinal_injury_q8_opt3 {
    return Intl.message(
      'Give them exercise',
      name: 'spinal_injury_q8_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Keep them still and seek urgent medical assessment`
  String get spinal_injury_q8_opt4 {
    return Intl.message(
      'Keep them still and seek urgent medical assessment',
      name: 'spinal_injury_q8_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Should bystanders casually move a person after a serious collision?`
  String get spinal_injury_q9 {
    return Intl.message(
      'Should bystanders casually move a person after a serious collision?',
      name: 'spinal_injury_q9',
      desc: '',
      args: [],
    );
  }

  /// `Avoid unnecessary movement, but act if immediate danger or life-saving care requires it.`
  String get spinal_injury_q9_explanation {
    return Intl.message(
      'Avoid unnecessary movement, but act if immediate danger or life-saving care requires it.',
      name: 'spinal_injury_q9_explanation',
      desc: '',
      args: [],
    );
  }

  /// `No, unless necessary for safety or life-saving care`
  String get spinal_injury_q9_opt1 {
    return Intl.message(
      'No, unless necessary for safety or life-saving care',
      name: 'spinal_injury_q9_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Yes, to make room for traffic`
  String get spinal_injury_q9_opt2 {
    return Intl.message(
      'Yes, to make room for traffic',
      name: 'spinal_injury_q9_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Yes, to test their legs`
  String get spinal_injury_q9_opt3 {
    return Intl.message(
      'Yes, to test their legs',
      name: 'spinal_injury_q9_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Only to take a photo`
  String get spinal_injury_q9_opt4 {
    return Intl.message(
      'Only to take a photo',
      name: 'spinal_injury_q9_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do if a person with suspected spinal injury vomits and cannot protect their airway?`
  String get spinal_injury_q10 {
    return Intl.message(
      'What should you do if a person with suspected spinal injury vomits and cannot protect their airway?',
      name: 'spinal_injury_q10',
      desc: '',
      args: [],
    );
  }

  /// `Airway protection is essential; use trained assistance and dispatcher guidance.`
  String get spinal_injury_q10_explanation {
    return Intl.message(
      'Airway protection is essential; use trained assistance and dispatcher guidance.',
      name: 'spinal_injury_q10_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Ignore it to keep the spine still`
  String get spinal_injury_q10_opt1 {
    return Intl.message(
      'Ignore it to keep the spine still',
      name: 'spinal_injury_q10_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Follow emergency dispatcher instructions; airway protection takes priority and coordinated movement may be needed`
  String get spinal_injury_q10_opt2 {
    return Intl.message(
      'Follow emergency dispatcher instructions; airway protection takes priority and coordinated movement may be needed',
      name: 'spinal_injury_q10_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Give them water`
  String get spinal_injury_q10_opt3 {
    return Intl.message(
      'Give them water',
      name: 'spinal_injury_q10_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Make them stand`
  String get spinal_injury_q10_opt4 {
    return Intl.message(
      'Make them stand',
      name: 'spinal_injury_q10_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Stop activity, protect the area, and use wrapped cold therapy if appropriate.`
  String get sprainstrains_q1_explanation {
    return Intl.message(
      'Stop activity, protect the area, and use wrapped cold therapy if appropriate.',
      name: 'sprainstrains_q1_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Sprains involve ligaments; strains involve muscles or tendons.`
  String get sprainstrains_q2_explanation {
    return Intl.message(
      'Sprains involve ligaments; strains involve muscles or tendons.',
      name: 'sprainstrains_q2_explanation',
      desc: '',
      args: [],
    );
  }

  /// `A strain affects muscle or tendon tissue.`
  String get sprainstrains_q3_explanation {
    return Intl.message(
      'A strain affects muscle or tendon tissue.',
      name: 'sprainstrains_q3_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Wrap cold packs to reduce the risk of cold injury.`
  String get sprainstrains_q4_explanation {
    return Intl.message(
      'Wrap cold packs to reduce the risk of cold injury.',
      name: 'sprainstrains_q4_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Severe symptoms can indicate fracture or significant injury.`
  String get sprainstrains_q5_explanation {
    return Intl.message(
      'Severe symptoms can indicate fracture or significant injury.',
      name: 'sprainstrains_q5_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Forcing movement may worsen tissue damage.`
  String get sprainstrains_q6_explanation {
    return Intl.message(
      'Forcing movement may worsen tissue damage.',
      name: 'sprainstrains_q6_explanation',
      desc: '',
      args: [],
    );
  }

  /// `What may help reduce swelling early after a sprain?`
  String get sprainstrains_q7 {
    return Intl.message(
      'What may help reduce swelling early after a sprain?',
      name: 'sprainstrains_q7',
      desc: '',
      args: [],
    );
  }

  /// `Protect the injury and avoid treatments that increase pain or compromise circulation.`
  String get sprainstrains_q7_explanation {
    return Intl.message(
      'Protect the injury and avoid treatments that increase pain or compromise circulation.',
      name: 'sprainstrains_q7_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Protecting the area, wrapped cold pack, and comfortable elevation if appropriate`
  String get sprainstrains_q7_opt1 {
    return Intl.message(
      'Protecting the area, wrapped cold pack, and comfortable elevation if appropriate',
      name: 'sprainstrains_q7_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Vigorous massage`
  String get sprainstrains_q7_opt2 {
    return Intl.message(
      'Vigorous massage',
      name: 'sprainstrains_q7_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Running on it`
  String get sprainstrains_q7_opt3 {
    return Intl.message(
      'Running on it',
      name: 'sprainstrains_q7_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Applying very tight binding that causes numbness`
  String get sprainstrains_q7_opt4 {
    return Intl.message(
      'Applying very tight binding that causes numbness',
      name: 'sprainstrains_q7_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person's ankle is deformed after a fall. Should you assume it is only a sprain?`
  String get sprainstrains_q8 {
    return Intl.message(
      'A person\'s ankle is deformed after a fall. Should you assume it is only a sprain?',
      name: 'sprainstrains_q8',
      desc: '',
      args: [],
    );
  }

  /// `Deformity may indicate fracture or dislocation.`
  String get sprainstrains_q8_explanation {
    return Intl.message(
      'Deformity may indicate fracture or dislocation.',
      name: 'sprainstrains_q8_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Yes, all ankle injuries are sprains`
  String get sprainstrains_q8_opt1 {
    return Intl.message(
      'Yes, all ankle injuries are sprains',
      name: 'sprainstrains_q8_opt1',
      desc: '',
      args: [],
    );
  }

  /// `No; suspect fracture and seek urgent assessment`
  String get sprainstrains_q8_opt2 {
    return Intl.message(
      'No; suspect fracture and seek urgent assessment',
      name: 'sprainstrains_q8_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Yes, if they can talk`
  String get sprainstrains_q8_opt3 {
    return Intl.message(
      'Yes, if they can talk',
      name: 'sprainstrains_q8_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Only if there is no bleeding`
  String get sprainstrains_q8_opt4 {
    return Intl.message(
      'Only if there is no bleeding',
      name: 'sprainstrains_q8_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is a warning sign that a bandage is too tight?`
  String get sprainstrains_q9 {
    return Intl.message(
      'What is a warning sign that a bandage is too tight?',
      name: 'sprainstrains_q9',
      desc: '',
      args: [],
    );
  }

  /// `Loosen a restrictive bandage and seek help if circulation concerns persist.`
  String get sprainstrains_q9_explanation {
    return Intl.message(
      'Loosen a restrictive bandage and seek help if circulation concerns persist.',
      name: 'sprainstrains_q9_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Comfortable warmth`
  String get sprainstrains_q9_opt1 {
    return Intl.message(
      'Comfortable warmth',
      name: 'sprainstrains_q9_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Reduced swelling only`
  String get sprainstrains_q9_opt2 {
    return Intl.message(
      'Reduced swelling only',
      name: 'sprainstrains_q9_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Numbness, tingling, or blue/cold fingers or toes`
  String get sprainstrains_q9_opt3 {
    return Intl.message(
      'Numbness, tingling, or blue/cold fingers or toes',
      name: 'sprainstrains_q9_opt3',
      desc: '',
      args: [],
    );
  }

  /// `A clean dressing`
  String get sprainstrains_q9_opt4 {
    return Intl.message(
      'A clean dressing',
      name: 'sprainstrains_q9_opt4',
      desc: '',
      args: [],
    );
  }

  /// `When should the person return to sport?`
  String get sprainstrains_q10 {
    return Intl.message(
      'When should the person return to sport?',
      name: 'sprainstrains_q10',
      desc: '',
      args: [],
    );
  }

  /// `Returning too soon can worsen an injury.`
  String get sprainstrains_q10_explanation {
    return Intl.message(
      'Returning too soon can worsen an injury.',
      name: 'sprainstrains_q10_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Immediately regardless of pain`
  String get sprainstrains_q10_opt1 {
    return Intl.message(
      'Immediately regardless of pain',
      name: 'sprainstrains_q10_opt1',
      desc: '',
      args: [],
    );
  }

  /// `When swelling first begins`
  String get sprainstrains_q10_opt2 {
    return Intl.message(
      'When swelling first begins',
      name: 'sprainstrains_q10_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Only after masking pain`
  String get sprainstrains_q10_opt3 {
    return Intl.message(
      'Only after masking pain',
      name: 'sprainstrains_q10_opt3',
      desc: '',
      args: [],
    );
  }

  /// `When function has recovered and return is appropriate; seek advice for significant injury`
  String get sprainstrains_q10_opt4 {
    return Intl.message(
      'When function has recovered and return is appropriate; seek advice for significant injury',
      name: 'sprainstrains_q10_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Sudden facial droop and arm weakness may indicate stroke; time matters.`
  String get stroke_q1_explanation {
    return Intl.message(
      'Sudden facial droop and arm weakness may indicate stroke; time matters.',
      name: 'stroke_q1_explanation',
      desc: '',
      args: [],
    );
  }

  /// `FAST is a common stroke recognition aid.`
  String get stroke_q2_explanation {
    return Intl.message(
      'FAST is a common stroke recognition aid.',
      name: 'stroke_q2_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Symptoms that resolve may represent a transient ischemic attack and still need urgent assessment.`
  String get stroke_q3_explanation {
    return Intl.message(
      'Symptoms that resolve may represent a transient ischemic attack and still need urgent assessment.',
      name: 'stroke_q3_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Do not give oral intake because swallowing may be impaired.`
  String get stroke_q4_explanation {
    return Intl.message(
      'Do not give oral intake because swallowing may be impaired.',
      name: 'stroke_q4_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Time information can influence stroke treatment decisions.`
  String get stroke_q5_explanation {
    return Intl.message(
      'Time information can influence stroke treatment decisions.',
      name: 'stroke_q5_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Stroke can cause a range of sudden neurological symptoms.`
  String get stroke_q6_explanation {
    return Intl.message(
      'Stroke can cause a range of sudden neurological symptoms.',
      name: 'stroke_q6_explanation',
      desc: '',
      args: [],
    );
  }

  /// `What should you do while waiting for an ambulance for suspected stroke?`
  String get stroke_q7 {
    return Intl.message(
      'What should you do while waiting for an ambulance for suspected stroke?',
      name: 'stroke_q7',
      desc: '',
      args: [],
    );
  }

  /// `Monitor and protect the person while awaiting emergency care.`
  String get stroke_q7_explanation {
    return Intl.message(
      'Monitor and protect the person while awaiting emergency care.',
      name: 'stroke_q7_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Make the person exercise`
  String get stroke_q7_opt1 {
    return Intl.message(
      'Make the person exercise',
      name: 'stroke_q7_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Give alcohol`
  String get stroke_q7_opt2 {
    return Intl.message(
      'Give alcohol',
      name: 'stroke_q7_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Keep them safe, monitor responsiveness and breathing, and follow dispatcher instructions`
  String get stroke_q7_opt3 {
    return Intl.message(
      'Keep them safe, monitor responsiveness and breathing, and follow dispatcher instructions',
      name: 'stroke_q7_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Let them drive`
  String get stroke_q7_opt4 {
    return Intl.message(
      'Let them drive',
      name: 'stroke_q7_opt4',
      desc: '',
      args: [],
    );
  }

  /// `A person with suspected stroke becomes unconscious but is breathing normally. What should you do?`
  String get stroke_q8 {
    return Intl.message(
      'A person with suspected stroke becomes unconscious but is breathing normally. What should you do?',
      name: 'stroke_q8',
      desc: '',
      args: [],
    );
  }

  /// `Protect the airway and monitor breathing; follow dispatcher instructions.`
  String get stroke_q8_explanation {
    return Intl.message(
      'Protect the airway and monitor breathing; follow dispatcher instructions.',
      name: 'stroke_q8_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Give them water`
  String get stroke_q8_opt1 {
    return Intl.message(
      'Give them water',
      name: 'stroke_q8_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Make them stand`
  String get stroke_q8_opt2 {
    return Intl.message(
      'Make them stand',
      name: 'stroke_q8_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Leave them alone`
  String get stroke_q8_opt3 {
    return Intl.message(
      'Leave them alone',
      name: 'stroke_q8_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services, monitor breathing, and position safely to protect the airway if appropriate`
  String get stroke_q8_opt4 {
    return Intl.message(
      'Call emergency services, monitor breathing, and position safely to protect the airway if appropriate',
      name: 'stroke_q8_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Can a stroke occur in a younger adult?`
  String get stroke_q9 {
    return Intl.message(
      'Can a stroke occur in a younger adult?',
      name: 'stroke_q9',
      desc: '',
      args: [],
    );
  }

  /// `Stroke is more common with age but can affect younger people too.`
  String get stroke_q9_explanation {
    return Intl.message(
      'Stroke is more common with age but can affect younger people too.',
      name: 'stroke_q9_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Yes; stroke can happen at any age`
  String get stroke_q9_opt1 {
    return Intl.message(
      'Yes; stroke can happen at any age',
      name: 'stroke_q9_opt1',
      desc: '',
      args: [],
    );
  }

  /// `No, only older people have strokes`
  String get stroke_q9_opt2 {
    return Intl.message(
      'No, only older people have strokes',
      name: 'stroke_q9_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Only during sleep`
  String get stroke_q9_opt3 {
    return Intl.message(
      'Only during sleep',
      name: 'stroke_q9_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Only after a fall`
  String get stroke_q9_opt4 {
    return Intl.message(
      'Only after a fall',
      name: 'stroke_q9_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is the safest response to sudden stroke-like symptoms?`
  String get stroke_q10 {
    return Intl.message(
      'What is the safest response to sudden stroke-like symptoms?',
      name: 'stroke_q10',
      desc: '',
      args: [],
    );
  }

  /// `Rapid emergency assessment is important even if symptoms fluctuate.`
  String get stroke_q10_explanation {
    return Intl.message(
      'Rapid emergency assessment is important even if symptoms fluctuate.',
      name: 'stroke_q10_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Wait to see if they improve`
  String get stroke_q10_opt1 {
    return Intl.message(
      'Wait to see if they improve',
      name: 'stroke_q10_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Treat it as an emergency even if symptoms are mild or resolve`
  String get stroke_q10_opt2 {
    return Intl.message(
      'Treat it as an emergency even if symptoms are mild or resolve',
      name: 'stroke_q10_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Drive them yourself if they are confused`
  String get stroke_q10_opt3 {
    return Intl.message(
      'Drive them yourself if they are confused',
      name: 'stroke_q10_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Give food first`
  String get stroke_q10_opt4 {
    return Intl.message(
      'Give food first',
      name: 'stroke_q10_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Hand hygiene and barrier protection reduce contamination risk.`
  String get wound_care_q1_explanation {
    return Intl.message(
      'Hand hygiene and barrier protection reduce contamination risk.',
      name: 'wound_care_q1_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Clean water can remove dirt from minor wounds.`
  String get wound_care_q2_explanation {
    return Intl.message(
      'Clean water can remove dirt from minor wounds.',
      name: 'wound_care_q2_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Control severe bleeding before routine wound cleaning.`
  String get wound_care_q3_explanation {
    return Intl.message(
      'Control severe bleeding before routine wound cleaning.',
      name: 'wound_care_q3_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Rinse minor debris away; deep or embedded material needs medical care.`
  String get wound_care_q4_explanation {
    return Intl.message(
      'Rinse minor debris away; deep or embedded material needs medical care.',
      name: 'wound_care_q4_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Some wounds need closure, tetanus review, or infection treatment.`
  String get wound_care_q5_explanation {
    return Intl.message(
      'Some wounds need closure, tetanus review, or infection treatment.',
      name: 'wound_care_q5_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Worsening local symptoms or fever can indicate infection.`
  String get wound_care_q6_explanation {
    return Intl.message(
      'Worsening local symptoms or fever can indicate infection.',
      name: 'wound_care_q6_explanation',
      desc: '',
      args: [],
    );
  }

  /// `What should you do with an object embedded in a wound?`
  String get wound_care_q7 {
    return Intl.message(
      'What should you do with an object embedded in a wound?',
      name: 'wound_care_q7',
      desc: '',
      args: [],
    );
  }

  /// `Removing embedded objects can worsen bleeding.`
  String get wound_care_q7_explanation {
    return Intl.message(
      'Removing embedded objects can worsen bleeding.',
      name: 'wound_care_q7_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Do not remove it; apply pressure around it and seek medical help`
  String get wound_care_q7_opt1 {
    return Intl.message(
      'Do not remove it; apply pressure around it and seek medical help',
      name: 'wound_care_q7_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Pull it out regardless of depth`
  String get wound_care_q7_opt2 {
    return Intl.message(
      'Pull it out regardless of depth',
      name: 'wound_care_q7_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Push it farther in`
  String get wound_care_q7_opt3 {
    return Intl.message(
      'Push it farther in',
      name: 'wound_care_q7_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Twist it to loosen it`
  String get wound_care_q7_opt4 {
    return Intl.message(
      'Twist it to loosen it',
      name: 'wound_care_q7_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Why is tetanus vaccination status relevant for some wounds?`
  String get wound_care_q8 {
    return Intl.message(
      'Why is tetanus vaccination status relevant for some wounds?',
      name: 'wound_care_q8',
      desc: '',
      args: [],
    );
  }

  /// `A clinician can advise whether tetanus vaccination or other prevention is needed.`
  String get wound_care_q8_explanation {
    return Intl.message(
      'A clinician can advise whether tetanus vaccination or other prevention is needed.',
      name: 'wound_care_q8_explanation',
      desc: '',
      args: [],
    );
  }

  /// `It determines eye colour`
  String get wound_care_q8_opt1 {
    return Intl.message(
      'It determines eye colour',
      name: 'wound_care_q8_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Some wounds can expose a person to tetanus bacteria, so vaccination may need review`
  String get wound_care_q8_opt2 {
    return Intl.message(
      'Some wounds can expose a person to tetanus bacteria, so vaccination may need review',
      name: 'wound_care_q8_opt2',
      desc: '',
      args: [],
    );
  }

  /// `It stops all bleeding immediately`
  String get wound_care_q8_opt3 {
    return Intl.message(
      'It stops all bleeding immediately',
      name: 'wound_care_q8_opt3',
      desc: '',
      args: [],
    );
  }

  /// `It replaces cleaning`
  String get wound_care_q8_opt4 {
    return Intl.message(
      'It replaces cleaning',
      name: 'wound_care_q8_opt4',
      desc: '',
      args: [],
    );
  }

  /// `How should you cover a cleaned minor wound?`
  String get wound_care_q9 {
    return Intl.message(
      'How should you cover a cleaned minor wound?',
      name: 'wound_care_q9',
      desc: '',
      args: [],
    );
  }

  /// `A clean dressing protects the wound from contamination.`
  String get wound_care_q9_explanation {
    return Intl.message(
      'A clean dressing protects the wound from contamination.',
      name: 'wound_care_q9_explanation',
      desc: '',
      args: [],
    );
  }

  /// `With dirty tissue`
  String get wound_care_q9_opt1 {
    return Intl.message(
      'With dirty tissue',
      name: 'wound_care_q9_opt1',
      desc: '',
      args: [],
    );
  }

  /// `With soil`
  String get wound_care_q9_opt2 {
    return Intl.message(
      'With soil',
      name: 'wound_care_q9_opt2',
      desc: '',
      args: [],
    );
  }

  /// `With a clean dressing or plaster appropriate to the wound`
  String get wound_care_q9_opt3 {
    return Intl.message(
      'With a clean dressing or plaster appropriate to the wound',
      name: 'wound_care_q9_opt3',
      desc: '',
      args: [],
    );
  }

  /// `With household glue`
  String get wound_care_q9_opt4 {
    return Intl.message(
      'With household glue',
      name: 'wound_care_q9_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do if redness and pain around a wound are spreading?`
  String get wound_care_q10 {
    return Intl.message(
      'What should you do if redness and pain around a wound are spreading?',
      name: 'wound_care_q10',
      desc: '',
      args: [],
    );
  }

  /// `Spreading redness or worsening pain may indicate infection.`
  String get wound_care_q10_explanation {
    return Intl.message(
      'Spreading redness or worsening pain may indicate infection.',
      name: 'wound_care_q10_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Ignore it for weeks`
  String get wound_care_q10_opt1 {
    return Intl.message(
      'Ignore it for weeks',
      name: 'wound_care_q10_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Rub it aggressively`
  String get wound_care_q10_opt2 {
    return Intl.message(
      'Rub it aggressively',
      name: 'wound_care_q10_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Cover it with cosmetics`
  String get wound_care_q10_opt3 {
    return Intl.message(
      'Cover it with cosmetics',
      name: 'wound_care_q10_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Seek medical advice promptly`
  String get wound_care_q10_opt4 {
    return Intl.message(
      'Seek medical advice promptly',
      name: 'wound_care_q10_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Scene safety comes before casualty assessment.`
  String get assess_q1_explanation {
    return Intl.message(
      'Scene safety comes before casualty assessment.',
      name: 'assess_q1_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Unresponsiveness requires urgent assessment and help.`
  String get assess_q2_explanation {
    return Intl.message(
      'Unresponsiveness requires urgent assessment and help.',
      name: 'assess_q2_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Check for normal breathing promptly; gasping is not normal breathing.`
  String get assess_q3_explanation {
    return Intl.message(
      'Check for normal breathing promptly; gasping is not normal breathing.',
      name: 'assess_q3_explanation',
      desc: '',
      args: [],
    );
  }

  /// `These signs need immediate emergency action.`
  String get assess_q4_explanation {
    return Intl.message(
      'These signs need immediate emergency action.',
      name: 'assess_q4_explanation',
      desc: '',
      args: [],
    );
  }

  /// `A brief history can guide assessment without delaying urgent care.`
  String get assess_q5_explanation {
    return Intl.message(
      'A brief history can guide assessment without delaying urgent care.',
      name: 'assess_q5_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Comparing sides can reveal injuries, but avoid painful or risky movement.`
  String get assess_q6_explanation {
    return Intl.message(
      'Comparing sides can reveal injuries, but avoid painful or risky movement.',
      name: 'assess_q6_explanation',
      desc: '',
      args: [],
    );
  }

  /// `What should you do if a person has severe bleeding and is confused?`
  String get assess_q7 {
    return Intl.message(
      'What should you do if a person has severe bleeding and is confused?',
      name: 'assess_q7',
      desc: '',
      args: [],
    );
  }

  /// `Severe bleeding and altered mental status can be life-threatening.`
  String get assess_q7_explanation {
    return Intl.message(
      'Severe bleeding and altered mental status can be life-threatening.',
      name: 'assess_q7_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Give them a meal`
  String get assess_q7_opt1 {
    return Intl.message(
      'Give them a meal',
      name: 'assess_q7_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Ask them to walk`
  String get assess_q7_opt2 {
    return Intl.message(
      'Ask them to walk',
      name: 'assess_q7_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services and control bleeding while monitoring breathing`
  String get assess_q7_opt3 {
    return Intl.message(
      'Call emergency services and control bleeding while monitoring breathing',
      name: 'assess_q7_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Leave them to rest alone`
  String get assess_q7_opt4 {
    return Intl.message(
      'Leave them to rest alone',
      name: 'assess_q7_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What does AVPU stand for in a basic responsiveness assessment?`
  String get assess_q8 {
    return Intl.message(
      'What does AVPU stand for in a basic responsiveness assessment?',
      name: 'assess_q8',
      desc: '',
      args: [],
    );
  }

  /// `AVPU is a simple scale: Alert, responds to Voice, responds to Pain, Unresponsive. Lay rescuers should follow their training.`
  String get assess_q8_explanation {
    return Intl.message(
      'AVPU is a simple scale: Alert, responds to Voice, responds to Pain, Unresponsive. Lay rescuers should follow their training.',
      name: 'assess_q8_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Airway, Vision, Pulse, Urine`
  String get assess_q8_opt1 {
    return Intl.message(
      'Airway, Vision, Pulse, Urine',
      name: 'assess_q8_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Alert, Voice, Pulse, Unconscious`
  String get assess_q8_opt2 {
    return Intl.message(
      'Alert, Voice, Pulse, Unconscious',
      name: 'assess_q8_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Assess, Verify, Protect, Understand`
  String get assess_q8_opt3 {
    return Intl.message(
      'Assess, Verify, Protect, Understand',
      name: 'assess_q8_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Alert, Voice, Pain, Unresponsive`
  String get assess_q8_opt4 {
    return Intl.message(
      'Alert, Voice, Pain, Unresponsive',
      name: 'assess_q8_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Should you move a casualty with possible spinal injury just to make the assessment easier?`
  String get assess_q9 {
    return Intl.message(
      'Should you move a casualty with possible spinal injury just to make the assessment easier?',
      name: 'assess_q9',
      desc: '',
      args: [],
    );
  }

  /// `Avoid unnecessary movement when serious trauma is suspected.`
  String get assess_q9_explanation {
    return Intl.message(
      'Avoid unnecessary movement when serious trauma is suspected.',
      name: 'assess_q9_explanation',
      desc: '',
      args: [],
    );
  }

  /// `No; avoid unnecessary movement unless safety or life-saving care requires it`
  String get assess_q9_opt1 {
    return Intl.message(
      'No; avoid unnecessary movement unless safety or life-saving care requires it',
      name: 'assess_q9_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Yes, always`
  String get assess_q9_opt2 {
    return Intl.message(
      'Yes, always',
      name: 'assess_q9_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Only to test their neck`
  String get assess_q9_opt3 {
    return Intl.message(
      'Only to test their neck',
      name: 'assess_q9_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Yes, without asking`
  String get assess_q9_opt4 {
    return Intl.message(
      'Yes, without asking',
      name: 'assess_q9_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What information is useful in a handover to emergency responders?`
  String get assess_q10 {
    return Intl.message(
      'What information is useful in a handover to emergency responders?',
      name: 'assess_q10',
      desc: '',
      args: [],
    );
  }

  /// `A concise factual handover helps continuing care.`
  String get assess_q10_explanation {
    return Intl.message(
      'A concise factual handover helps continuing care.',
      name: 'assess_q10_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Rumours from bystanders only`
  String get assess_q10_opt1 {
    return Intl.message(
      'Rumours from bystanders only',
      name: 'assess_q10_opt1',
      desc: '',
      args: [],
    );
  }

  /// `What happened, symptoms observed, changes, and first aid given`
  String get assess_q10_opt2 {
    return Intl.message(
      'What happened, symptoms observed, changes, and first aid given',
      name: 'assess_q10_opt2',
      desc: '',
      args: [],
    );
  }

  /// `A guess about the diagnosis only`
  String get assess_q10_opt3 {
    return Intl.message(
      'A guess about the diagnosis only',
      name: 'assess_q10_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Nothing if the person is awake`
  String get assess_q10_opt4 {
    return Intl.message(
      'Nothing if the person is awake',
      name: 'assess_q10_opt4',
      desc: '',
      args: [],
    );
  }

  /// `The recovery position can help keep the airway clear in an unconscious breathing person when appropriate.`
  String get recovery_pos_q1_explanation {
    return Intl.message(
      'The recovery position can help keep the airway clear in an unconscious breathing person when appropriate.',
      name: 'recovery_pos_q1_explanation',
      desc: '',
      args: [],
    );
  }

  /// `It helps protect the airway in an unconscious person who is breathing normally.`
  String get recovery_pos_q2_explanation {
    return Intl.message(
      'It helps protect the airway in an unconscious person who is breathing normally.',
      name: 'recovery_pos_q2_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Abnormal breathing with unresponsiveness requires CPR, not simply the recovery position.`
  String get recovery_pos_q3_explanation {
    return Intl.message(
      'Abnormal breathing with unresponsiveness requires CPR, not simply the recovery position.',
      name: 'recovery_pos_q3_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Continue monitoring because their condition may change.`
  String get recovery_pos_q4_explanation {
    return Intl.message(
      'Continue monitoring because their condition may change.',
      name: 'recovery_pos_q4_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Spinal precautions matter, but airway and breathing take priority; follow trained guidance.`
  String get recovery_pos_q5_explanation {
    return Intl.message(
      'Spinal precautions matter, but airway and breathing take priority; follow trained guidance.',
      name: 'recovery_pos_q5_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Use it when appropriate after the seizure if normal breathing is present and no injury prevents positioning.`
  String get recovery_pos_q6_explanation {
    return Intl.message(
      'Use it when appropriate after the seizure if normal breathing is present and no injury prevents positioning.',
      name: 'recovery_pos_q6_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Should you place an unconscious person in the recovery position if they are gasping abnormally?`
  String get recovery_pos_q7 {
    return Intl.message(
      'Should you place an unconscious person in the recovery position if they are gasping abnormally?',
      name: 'recovery_pos_q7',
      desc: '',
      args: [],
    );
  }

  /// `Gasping is not normal breathing and may indicate cardiac arrest.`
  String get recovery_pos_q7_explanation {
    return Intl.message(
      'Gasping is not normal breathing and may indicate cardiac arrest.',
      name: 'recovery_pos_q7_explanation',
      desc: '',
      args: [],
    );
  }

  /// `No; gasping is not normal breathing, so activate emergency help and start CPR`
  String get recovery_pos_q7_opt1 {
    return Intl.message(
      'No; gasping is not normal breathing, so activate emergency help and start CPR',
      name: 'recovery_pos_q7_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Yes, always`
  String get recovery_pos_q7_opt2 {
    return Intl.message(
      'Yes, always',
      name: 'recovery_pos_q7_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Give water first`
  String get recovery_pos_q7_opt3 {
    return Intl.message(
      'Give water first',
      name: 'recovery_pos_q7_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Wait ten minutes`
  String get recovery_pos_q7_opt4 {
    return Intl.message(
      'Wait ten minutes',
      name: 'recovery_pos_q7_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What is important when rolling a breathing unconscious person?`
  String get recovery_pos_q8 {
    return Intl.message(
      'What is important when rolling a breathing unconscious person?',
      name: 'recovery_pos_q8',
      desc: '',
      args: [],
    );
  }

  /// `Use a controlled movement and avoid unnecessary twisting, especially if trauma is possible.`
  String get recovery_pos_q8_explanation {
    return Intl.message(
      'Use a controlled movement and avoid unnecessary twisting, especially if trauma is possible.',
      name: 'recovery_pos_q8_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Pull them by one arm roughly`
  String get recovery_pos_q8_opt1 {
    return Intl.message(
      'Pull them by one arm roughly',
      name: 'recovery_pos_q8_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Position them carefully, keeping the airway open and avoiding unnecessary movement`
  String get recovery_pos_q8_opt2 {
    return Intl.message(
      'Position them carefully, keeping the airway open and avoiding unnecessary movement',
      name: 'recovery_pos_q8_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Twist their neck repeatedly`
  String get recovery_pos_q8_opt3 {
    return Intl.message(
      'Twist their neck repeatedly',
      name: 'recovery_pos_q8_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Make them stand`
  String get recovery_pos_q8_opt4 {
    return Intl.message(
      'Make them stand',
      name: 'recovery_pos_q8_opt4',
      desc: '',
      args: [],
    );
  }

  /// `What should you do if breathing becomes abnormal while the person is in the recovery position?`
  String get recovery_pos_q9 {
    return Intl.message(
      'What should you do if breathing becomes abnormal while the person is in the recovery position?',
      name: 'recovery_pos_q9',
      desc: '',
      args: [],
    );
  }

  /// `Reassess immediately and start CPR if they are unresponsive and not breathing normally.`
  String get recovery_pos_q9_explanation {
    return Intl.message(
      'Reassess immediately and start CPR if they are unresponsive and not breathing normally.',
      name: 'recovery_pos_q9_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Wait until they wake`
  String get recovery_pos_q9_opt1 {
    return Intl.message(
      'Wait until they wake',
      name: 'recovery_pos_q9_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Give a snack`
  String get recovery_pos_q9_opt2 {
    return Intl.message(
      'Give a snack',
      name: 'recovery_pos_q9_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services and begin CPR as indicated`
  String get recovery_pos_q9_opt3 {
    return Intl.message(
      'Call emergency services and begin CPR as indicated',
      name: 'recovery_pos_q9_opt3',
      desc: '',
      args: [],
    );
  }

  /// `Leave them alone`
  String get recovery_pos_q9_opt4 {
    return Intl.message(
      'Leave them alone',
      name: 'recovery_pos_q9_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Should a person in the recovery position be left unattended?`
  String get recovery_pos_q10 {
    return Intl.message(
      'Should a person in the recovery position be left unattended?',
      name: 'recovery_pos_q10',
      desc: '',
      args: [],
    );
  }

  /// `Continuous monitoring is important.`
  String get recovery_pos_q10_explanation {
    return Intl.message(
      'Continuous monitoring is important.',
      name: 'recovery_pos_q10_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Yes, always`
  String get recovery_pos_q10_opt1 {
    return Intl.message(
      'Yes, always',
      name: 'recovery_pos_q10_opt1',
      desc: '',
      args: [],
    );
  }

  /// `Only if they are breathing loudly`
  String get recovery_pos_q10_opt2 {
    return Intl.message(
      'Only if they are breathing loudly',
      name: 'recovery_pos_q10_opt2',
      desc: '',
      args: [],
    );
  }

  /// `Yes, after one check`
  String get recovery_pos_q10_opt3 {
    return Intl.message(
      'Yes, after one check',
      name: 'recovery_pos_q10_opt3',
      desc: '',
      args: [],
    );
  }

  /// `No; stay with them and keep monitoring until help takes over`
  String get recovery_pos_q10_opt4 {
    return Intl.message(
      'No; stay with them and keep monitoring until help takes over',
      name: 'recovery_pos_q10_opt4',
      desc: '',
      args: [],
    );
  }

  /// `Active quiz session`
  String get quizUiActive {
    return Intl.message(
      'Active quiz session',
      name: 'quizUiActive',
      desc: '',
      args: [],
    );
  }

  /// `Your quiz results`
  String get quizUiResults {
    return Intl.message(
      'Your quiz results',
      name: 'quizUiResults',
      desc: '',
      args: [],
    );
  }

  /// `FIRST AID PRACTICE`
  String get quizUiPractice {
    return Intl.message(
      'FIRST AID PRACTICE',
      name: 'quizUiPractice',
      desc: '',
      args: [],
    );
  }

  /// `QUESTION`
  String get quizUiQuestion {
    return Intl.message('QUESTION', name: 'quizUiQuestion', desc: '', args: []);
  }

  /// `Choose your next action`
  String get quizUiChoose {
    return Intl.message(
      'Choose your next action',
      name: 'quizUiChoose',
      desc: '',
      args: [],
    );
  }

  /// `Select one answer, then confirm when you’re ready.`
  String get quizUiHelp {
    return Intl.message(
      'Select one answer, then confirm when you’re ready.',
      name: 'quizUiHelp',
      desc: '',
      args: [],
    );
  }

  /// `SELECTED CHOICE`
  String get quizUiSelected {
    return Intl.message(
      'SELECTED CHOICE',
      name: 'quizUiSelected',
      desc: '',
      args: [],
    );
  }

  /// `Confirm answer`
  String get quizUiConfirm {
    return Intl.message(
      'Confirm answer',
      name: 'quizUiConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Next question`
  String get quizUiNext {
    return Intl.message(
      'Next question',
      name: 'quizUiNext',
      desc: '',
      args: [],
    );
  }

  /// `See my results`
  String get quizUiFinish {
    return Intl.message(
      'See my results',
      name: 'quizUiFinish',
      desc: '',
      args: [],
    );
  }

  /// `Correct answer`
  String get quizUiCorrect {
    return Intl.message(
      'Correct answer',
      name: 'quizUiCorrect',
      desc: '',
      args: [],
    );
  }

  /// `Let’s review this one`
  String get quizUiIncorrect {
    return Intl.message(
      'Let’s review this one',
      name: 'quizUiIncorrect',
      desc: '',
      args: [],
    );
  }

  /// `Correct answer`
  String get quizUiAnswer {
    return Intl.message(
      'Correct answer',
      name: 'quizUiAnswer',
      desc: '',
      args: [],
    );
  }

  /// `Your answer`
  String get quizUiYourAnswer {
    return Intl.message(
      'Your answer',
      name: 'quizUiYourAnswer',
      desc: '',
      args: [],
    );
  }

  /// `QUIZ COMPLETE`
  String get quizUiComplete {
    return Intl.message(
      'QUIZ COMPLETE',
      name: 'quizUiComplete',
      desc: '',
      args: [],
    );
  }

  /// `ACCURACY`
  String get quizUiAccuracy {
    return Intl.message('ACCURACY', name: 'quizUiAccuracy', desc: '', args: []);
  }

  /// `Excellent recall!`
  String get quizUiExcellent {
    return Intl.message(
      'Excellent recall!',
      name: 'quizUiExcellent',
      desc: '',
      args: [],
    );
  }

  /// `Keep building your knowledge`
  String get quizUiKeepGoing {
    return Intl.message(
      'Keep building your knowledge',
      name: 'quizUiKeepGoing',
      desc: '',
      args: [],
    );
  }

  /// `Review your answers below and revisit the guide whenever you need a refresher.`
  String get quizUiSummary {
    return Intl.message(
      'Review your answers below and revisit the guide whenever you need a refresher.',
      name: 'quizUiSummary',
      desc: '',
      args: [],
    );
  }

  /// `TOTAL TIME`
  String get quizUiTime {
    return Intl.message('TOTAL TIME', name: 'quizUiTime', desc: '', args: []);
  }

  /// `AVG / QUESTION`
  String get quizUiAverage {
    return Intl.message(
      'AVG / QUESTION',
      name: 'quizUiAverage',
      desc: '',
      args: [],
    );
  }

  /// `CORRECT`
  String get quizUiCorrectMetric {
    return Intl.message(
      'CORRECT',
      name: 'quizUiCorrectMetric',
      desc: '',
      args: [],
    );
  }

  /// `A little practice goes a long way`
  String get quizUiReviewTitle {
    return Intl.message(
      'A little practice goes a long way',
      name: 'quizUiReviewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Every answer correct`
  String get quizUiPerfectTitle {
    return Intl.message(
      'Every answer correct',
      name: 'quizUiPerfectTitle',
      desc: '',
      args: [],
    );
  }

  /// `Keep your knowledge fresh by practicing other first aid topics.`
  String get quizUiPerfectBody {
    return Intl.message(
      'Keep your knowledge fresh by practicing other first aid topics.',
      name: 'quizUiPerfectBody',
      desc: '',
      args: [],
    );
  }

  /// `Open any question below to compare your answer with the correct choice.`
  String get quizUiReviewBody {
    return Intl.message(
      'Open any question below to compare your answer with the correct choice.',
      name: 'quizUiReviewBody',
      desc: '',
      args: [],
    );
  }

  /// `Question breakdown`
  String get quizUiBreakdown {
    return Intl.message(
      'Question breakdown',
      name: 'quizUiBreakdown',
      desc: '',
      args: [],
    );
  }

  /// `NEEDS REVIEW`
  String get quizUiNeedsReview {
    return Intl.message(
      'NEEDS REVIEW',
      name: 'quizUiNeedsReview',
      desc: '',
      args: [],
    );
  }

  /// `MARKED FOR REVIEW`
  String get quizUiMarked {
    return Intl.message(
      'MARKED FOR REVIEW',
      name: 'quizUiMarked',
      desc: '',
      args: [],
    );
  }

  /// `Retake quiz`
  String get quizUiRetake {
    return Intl.message(
      'Retake quiz',
      name: 'quizUiRetake',
      desc: '',
      args: [],
    );
  }

  /// `Back to topic guide`
  String get quizUiGuide {
    return Intl.message(
      'Back to topic guide',
      name: 'quizUiGuide',
      desc: '',
      args: [],
    );
  }

  /// `Keep learning`
  String get quizUiGuideTitle {
    return Intl.message(
      'Keep learning',
      name: 'quizUiGuideTitle',
      desc: '',
      args: [],
    );
  }

  /// `Revisit this topic’s first aid guide before your next practice session.`
  String get quizUiGuideBody {
    return Intl.message(
      'Revisit this topic’s first aid guide before your next practice session.',
      name: 'quizUiGuideBody',
      desc: '',
      args: [],
    );
  }

  /// `Pause quiz`
  String get quizUiPause {
    return Intl.message('Pause quiz', name: 'quizUiPause', desc: '', args: []);
  }

  /// `Take a moment`
  String get quizUiPaused {
    return Intl.message(
      'Take a moment',
      name: 'quizUiPaused',
      desc: '',
      args: [],
    );
  }

  /// `Your progress is saved for this session. The timer is paused.`
  String get quizUiPauseBody {
    return Intl.message(
      'Your progress is saved for this session. The timer is paused.',
      name: 'quizUiPauseBody',
      desc: '',
      args: [],
    );
  }

  /// `Resume quiz`
  String get quizUiResume {
    return Intl.message(
      'Resume quiz',
      name: 'quizUiResume',
      desc: '',
      args: [],
    );
  }

  /// `Mark for review`
  String get quizUiMark {
    return Intl.message(
      'Mark for review',
      name: 'quizUiMark',
      desc: '',
      args: [],
    );
  }

  /// `Unmark question`
  String get quizUiUnmark {
    return Intl.message(
      'Unmark question',
      name: 'quizUiUnmark',
      desc: '',
      args: [],
    );
  }

  /// `Leave this quiz?`
  String get quizUiExit {
    return Intl.message(
      'Leave this quiz?',
      name: 'quizUiExit',
      desc: '',
      args: [],
    );
  }

  /// `Your unfinished attempt will not be saved.`
  String get quizUiExitBody {
    return Intl.message(
      'Your unfinished attempt will not be saved.',
      name: 'quizUiExitBody',
      desc: '',
      args: [],
    );
  }

  /// `Keep practicing`
  String get quizUiStay {
    return Intl.message(
      'Keep practicing',
      name: 'quizUiStay',
      desc: '',
      args: [],
    );
  }

  /// `Leave quiz`
  String get quizUiLeave {
    return Intl.message('Leave quiz', name: 'quizUiLeave', desc: '', args: []);
  }

  /// `No questions available`
  String get quizUiEmpty {
    return Intl.message(
      'No questions available',
      name: 'quizUiEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Return to the guide and try another topic.`
  String get quizUiEmptyBody {
    return Intl.message(
      'Return to the guide and try another topic.',
      name: 'quizUiEmptyBody',
      desc: '',
      args: [],
    );
  }

  /// `Your result could not be saved on this device.`
  String get quizUiSaveError {
    return Intl.message(
      'Your result could not be saved on this device.',
      name: 'quizUiSaveError',
      desc: '',
      args: [],
    );
  }

  /// `Why this answer`
  String get quizUiExplanation {
    return Intl.message(
      'Why this answer',
      name: 'quizUiExplanation',
      desc: '',
      args: [],
    );
  }

  /// `Educational content only. Follow local emergency guidance and current certified first-aid training.`
  String get quizUiEducationalNotice {
    return Intl.message(
      'Educational content only. Follow local emergency guidance and current certified first-aid training.',
      name: 'quizUiEducationalNotice',
      desc: '',
      args: [],
    );
  }

  /// `Question {current} of {total}`
  String quizUiCount(int current, int total) {
    return Intl.message(
      'Question $current of $total',
      name: 'quizUiCount',
      desc: 'Current question position in the quiz',
      args: [current, total],
    );
  }

  /// `A little knowledge. A helping hand.`
  String get homeTagline {
    return Intl.message(
      'A little knowledge. A helping hand.',
      name: 'homeTagline',
      desc: '',
      args: [],
    );
  }

  /// `First aid guides included`
  String get homeOfflineTitle {
    return Intl.message(
      'First aid guides included',
      name: 'homeOfflineTitle',
      desc: '',
      args: [],
    );
  }

  /// `Read the guides without an internet connection.`
  String get homeOfflineBody {
    return Intl.message(
      'Read the guides without an internet connection.',
      name: 'homeOfflineBody',
      desc: '',
      args: [],
    );
  }

  /// `Need emergency help?`
  String get homeEmergencyTitle {
    return Intl.message(
      'Need emergency help?',
      name: 'homeEmergencyTitle',
      desc: '',
      args: [],
    );
  }

  /// `Keep calm. Get professional help.`
  String get homeEmergencyBody {
    return Intl.message(
      'Keep calm. Get professional help.',
      name: 'homeEmergencyBody',
      desc: '',
      args: [],
    );
  }

  /// `Call 112`
  String get homeDial112 {
    return Intl.message('Call 112', name: 'homeDial112', desc: '', args: []);
  }

  /// `Opens your phone dialer`
  String get homeDialHint {
    return Intl.message(
      'Opens your phone dialer',
      name: 'homeDialHint',
      desc: '',
      args: [],
    );
  }

  /// `Quick first aid guides`
  String get homeQuickTitle {
    return Intl.message(
      'Quick first aid guides',
      name: 'homeQuickTitle',
      desc: '',
      args: [],
    );
  }

  /// `Find the guide you need.`
  String get homeQuickBody {
    return Intl.message(
      'Find the guide you need.',
      name: 'homeQuickBody',
      desc: '',
      args: [],
    );
  }

  /// `All topics`
  String get homeAllGuides {
    return Intl.message(
      'All topics',
      name: 'homeAllGuides',
      desc: '',
      args: [],
    );
  }

  /// `{count} topics`
  String homeTopicCount(int count) {
    return Intl.message(
      '$count topics',
      name: 'homeTopicCount',
      desc: '',
      args: [count],
    );
  }

  /// `Nearby hospitals`
  String get homeNearbyTitle {
    return Intl.message(
      'Nearby hospitals',
      name: 'homeNearbyTitle',
      desc: '',
      args: [],
    );
  }

  /// `Find hospitals on the map around you.`
  String get homeNearbyBody {
    return Intl.message(
      'Find hospitals on the map around you.',
      name: 'homeNearbyBody',
      desc: '',
      args: [],
    );
  }

  /// `Use my location`
  String get homeUseLocation {
    return Intl.message(
      'Use my location',
      name: 'homeUseLocation',
      desc: '',
      args: [],
    );
  }

  /// `View hospital map`
  String get homeOpenMap {
    return Intl.message(
      'View hospital map',
      name: 'homeOpenMap',
      desc: '',
      args: [],
    );
  }

  /// `Your location is used to request map tiles and nearby hospital data. It is not saved to your account.`
  String get homeLocationPrivacy {
    return Intl.message(
      'Your location is used to request map tiles and nearby hospital data. It is not saved to your account.',
      name: 'homeLocationPrivacy',
      desc: '',
      args: [],
    );
  }

  /// `Hospital finder`
  String get hospitalMapTitle {
    return Intl.message(
      'Hospital finder',
      name: 'hospitalMapTitle',
      desc: '',
      args: [],
    );
  }

  /// `Search this area`
  String get hospitalSearchArea {
    return Intl.message(
      'Search this area',
      name: 'hospitalSearchArea',
      desc: '',
      args: [],
    );
  }

  /// `Move and zoom the map, then search this area.`
  String get hospitalChooseArea {
    return Intl.message(
      'Move and zoom the map, then search this area.',
      name: 'hospitalChooseArea',
      desc: '',
      args: [],
    );
  }

  /// `Finding mapped hospitals…`
  String get hospitalLoading {
    return Intl.message(
      'Finding mapped hospitals…',
      name: 'hospitalLoading',
      desc: '',
      args: [],
    );
  }

  /// `Finding your location…`
  String get hospitalLocating {
    return Intl.message(
      'Finding your location…',
      name: 'hospitalLocating',
      desc: '',
      args: [],
    );
  }

  /// `{count} hospitals found`
  String hospitalCount(int count) {
    return Intl.message(
      '$count hospitals found',
      name: 'hospitalCount',
      desc: '',
      args: [count],
    );
  }

  /// `No mapped hospitals found in this area.`
  String get hospitalEmpty {
    return Intl.message(
      'No mapped hospitals found in this area.',
      name: 'hospitalEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Try a wider radius or another map area. Map coverage may be incomplete.`
  String get hospitalEmptyBody {
    return Intl.message(
      'Try a wider radius or another map area. Map coverage may be incomplete.',
      name: 'hospitalEmptyBody',
      desc: '',
      args: [],
    );
  }

  /// `Location access was declined. You can choose an area on the map instead.`
  String get hospitalDenied {
    return Intl.message(
      'Location access was declined. You can choose an area on the map instead.',
      name: 'hospitalDenied',
      desc: '',
      args: [],
    );
  }

  /// `Location permission is blocked. Enable it in app settings or choose an area on the map.`
  String get hospitalDeniedForever {
    return Intl.message(
      'Location permission is blocked. Enable it in app settings or choose an area on the map.',
      name: 'hospitalDeniedForever',
      desc: '',
      args: [],
    );
  }

  /// `Location services are turned off. Enable them or choose an area on the map.`
  String get hospitalLocationOff {
    return Intl.message(
      'Location services are turned off. Enable them or choose an area on the map.',
      name: 'hospitalLocationOff',
      desc: '',
      args: [],
    );
  }

  /// `Could not load hospitals. Check your connection and try again.`
  String get hospitalError {
    return Intl.message(
      'Could not load hospitals. Check your connection and try again.',
      name: 'hospitalError',
      desc: '',
      args: [],
    );
  }

  /// `The hospital search service is busy. Please try again in a minute.`
  String get hospitalRateLimited {
    return Intl.message(
      'The hospital search service is busy. Please try again in a minute.',
      name: 'hospitalRateLimited',
      desc: '',
      args: [],
    );
  }

  /// `Open settings`
  String get hospitalSettings {
    return Intl.message(
      'Open settings',
      name: 'hospitalSettings',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get hospitalRetry {
    return Intl.message('Try again', name: 'hospitalRetry', desc: '', args: []);
  }

  /// `Search radius`
  String get hospitalRadius {
    return Intl.message(
      'Search radius',
      name: 'hospitalRadius',
      desc: '',
      args: [],
    );
  }

  /// `{count} km`
  String hospitalRadiusKm(int count) {
    return Intl.message(
      '$count km',
      name: 'hospitalRadiusKm',
      desc: '',
      args: [count],
    );
  }

  /// `Hospital`
  String get hospitalUnnamed {
    return Intl.message(
      'Hospital',
      name: 'hospitalUnnamed',
      desc: '',
      args: [],
    );
  }

  /// `Emergency department listed`
  String get hospitalEmergencyYes {
    return Intl.message(
      'Emergency department listed',
      name: 'hospitalEmergencyYes',
      desc: '',
      args: [],
    );
  }

  /// `No emergency department listed`
  String get hospitalEmergencyNo {
    return Intl.message(
      'No emergency department listed',
      name: 'hospitalEmergencyNo',
      desc: '',
      args: [],
    );
  }

  /// `Emergency services not confirmed`
  String get hospitalEmergencyUnknown {
    return Intl.message(
      'Emergency services not confirmed',
      name: 'hospitalEmergencyUnknown',
      desc: '',
      args: [],
    );
  }

  /// `Directions`
  String get hospitalDirections {
    return Intl.message(
      'Directions',
      name: 'hospitalDirections',
      desc: '',
      args: [],
    );
  }

  /// `Call hospital`
  String get hospitalCall {
    return Intl.message(
      'Call hospital',
      name: 'hospitalCall',
      desc: '',
      args: [],
    );
  }

  /// `Some map tiles could not load. The hospital list is still available.`
  String get hospitalMapUnavailable {
    return Intl.message(
      'Some map tiles could not load. The hospital list is still available.',
      name: 'hospitalMapUnavailable',
      desc: '',
      args: [],
    );
  }

  /// `Open external map`
  String get hospitalExternalMaps {
    return Intl.message(
      'Open external map',
      name: 'hospitalExternalMaps',
      desc: '',
      args: [],
    );
  }

  /// `{distance} km away · straight line`
  String hospitalDistance(String distance) {
    return Intl.message(
      '$distance km away · straight line',
      name: 'hospitalDistance',
      desc: '',
      args: [distance],
    );
  }

  /// `Distances are straight-line estimates from the search center. Map listings may be incomplete or outdated; emergency availability is not verified.`
  String get hospitalDistanceNote {
    return Intl.message(
      'Distances are straight-line estimates from the search center. Map listings may be incomplete or outdated; emergency availability is not verified.',
      name: 'hospitalDistanceNote',
      desc: '',
      args: [],
    );
  }

  /// `Fetched at {time}`
  String hospitalUpdated(String time) {
    return Intl.message(
      'Fetched at $time',
      name: 'hospitalUpdated',
      desc: '',
      args: [time],
    );
  }

  /// `Your location`
  String get hospitalYou {
    return Intl.message(
      'Your location',
      name: 'hospitalYou',
      desc: '',
      args: [],
    );
  }

  /// `Search center`
  String get hospitalSearchCenter {
    return Intl.message(
      'Search center',
      name: 'hospitalSearchCenter',
      desc: '',
      args: [],
    );
  }

  /// `Keep your knowledge fresh`
  String get homePracticeTitle {
    return Intl.message(
      'Keep your knowledge fresh',
      name: 'homePracticeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Practice a topic with 10 questions and explanations.`
  String get homePracticeBody {
    return Intl.message(
      'Practice a topic with 10 questions and explanations.',
      name: 'homePracticeBody',
      desc: '',
      args: [],
    );
  }

  /// `Start quiz`
  String get homePracticeStart {
    return Intl.message(
      'Start quiz',
      name: 'homePracticeStart',
      desc: '',
      args: [],
    );
  }

  /// `{completed} of {total} topic quizzes completed`
  String homeQuizProgress(int completed, int total) {
    return Intl.message(
      '$completed of $total topic quizzes completed',
      name: 'homeQuizProgress',
      desc: '',
      args: [completed, total],
    );
  }

  /// `Could not open this action on your device.`
  String get homeActionFailed {
    return Intl.message(
      'Could not open this action on your device.',
      name: 'homeActionFailed',
      desc: '',
      args: [],
    );
  }

  /// `Use your location, or open the map to choose an area.`
  String get homeHospitalPrompt {
    return Intl.message(
      'Use your location, or open the map to choose an area.',
      name: 'homeHospitalPrompt',
      desc: '',
      args: [],
    );
  }

  /// `Could not get your location. Check location services, then try again, or choose an area on the map.`
  String get hospitalLocationError {
    return Intl.message(
      'Could not get your location. Check location services, then try again, or choose an area on the map.',
      name: 'hospitalLocationError',
      desc: '',
      args: [],
    );
  }

  /// `Your useful guides, close at hand.`
  String get savedTagline {
    return Intl.message(
      'Your useful guides, close at hand.',
      name: 'savedTagline',
      desc: '',
      args: [],
    );
  }

  /// `Saved: {count}`
  String savedCount(int count) {
    return Intl.message(
      'Saved: $count',
      name: 'savedCount',
      desc: '',
      args: [count],
    );
  }

  /// `Search saved topics`
  String get savedSearchHint {
    return Intl.message(
      'Search saved topics',
      name: 'savedSearchHint',
      desc: '',
      args: [],
    );
  }

  /// `Clear search`
  String get savedClearSearch {
    return Intl.message(
      'Clear search',
      name: 'savedClearSearch',
      desc: '',
      args: [],
    );
  }

  /// `All saved ({count})`
  String savedAllFilter(int count) {
    return Intl.message(
      'All saved ($count)',
      name: 'savedAllFilter',
      desc: '',
      args: [count],
    );
  }

  /// `Your saved guides`
  String get savedLibraryTitle {
    return Intl.message(
      'Your saved guides',
      name: 'savedLibraryTitle',
      desc: '',
      args: [],
    );
  }

  /// `Guides are included in the app for offline reading.`
  String get savedOfflineNote {
    return Intl.message(
      'Guides are included in the app for offline reading.',
      name: 'savedOfflineNote',
      desc: '',
      args: [],
    );
  }

  /// `Keep helpful guides together`
  String get savedEmptyTitle {
    return Intl.message(
      'Keep helpful guides together',
      name: 'savedEmptyTitle',
      desc: '',
      args: [],
    );
  }

  /// `Save topics you want to find quickly. Open a guide and tap its bookmark to keep it here.`
  String get savedEmptyBody {
    return Intl.message(
      'Save topics you want to find quickly. Open a guide and tap its bookmark to keep it here.',
      name: 'savedEmptyBody',
      desc: '',
      args: [],
    );
  }

  /// `Explore first aid topics`
  String get savedEmptyBrowse {
    return Intl.message(
      'Explore first aid topics',
      name: 'savedEmptyBrowse',
      desc: '',
      args: [],
    );
  }

  /// `Start with CPR, choking, or burns.`
  String get savedEmptyHint {
    return Intl.message(
      'Start with CPR, choking, or burns.',
      name: 'savedEmptyHint',
      desc: '',
      args: [],
    );
  }

  /// `No matching saved topics`
  String get savedNoResultsTitle {
    return Intl.message(
      'No matching saved topics',
      name: 'savedNoResultsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Try another search or category. Your saved guides are still here.`
  String get savedNoResultsBody {
    return Intl.message(
      'Try another search or category. Your saved guides are still here.',
      name: 'savedNoResultsBody',
      desc: '',
      args: [],
    );
  }

  /// `Show all saved topics`
  String get savedResetFilters {
    return Intl.message(
      'Show all saved topics',
      name: 'savedResetFilters',
      desc: '',
      args: [],
    );
  }

  /// `Remove {topic} from saved`
  String savedRemoveTooltip(String topic) {
    return Intl.message(
      'Remove $topic from saved',
      name: 'savedRemoveTooltip',
      desc: '',
      args: [topic],
    );
  }

  /// `{topic} removed from saved`
  String savedRemovedMessage(String topic) {
    return Intl.message(
      '$topic removed from saved',
      name: 'savedRemovedMessage',
      desc: '',
      args: [topic],
    );
  }

  /// `Undo`
  String get savedUndo {
    return Intl.message('Undo', name: 'savedUndo', desc: '', args: []);
  }

  /// `Manage saved topics`
  String get savedManage {
    return Intl.message(
      'Manage saved topics',
      name: 'savedManage',
      desc: '',
      args: [],
    );
  }

  /// `Clear saved topics?`
  String get savedClearTitle {
    return Intl.message(
      'Clear saved topics?',
      name: 'savedClearTitle',
      desc: '',
      args: [],
    );
  }

  /// `This removes your saved bookmarks. The guides remain available in Topics.`
  String get savedClearBody {
    return Intl.message(
      'This removes your saved bookmarks. The guides remain available in Topics.',
      name: 'savedClearBody',
      desc: '',
      args: [],
    );
  }

  /// `Could not update saved topics. Please try again.`
  String get savedActionError {
    return Intl.message(
      'Could not update saved topics. Please try again.',
      name: 'savedActionError',
      desc: '',
      args: [],
    );
  }

  /// `Practice from your saved topics`
  String get savedPracticeTitle {
    return Intl.message(
      'Practice from your saved topics',
      name: 'savedPracticeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Choose a topic and test your knowledge with questions and explanations.`
  String get savedPracticeBody {
    return Intl.message(
      'Choose a topic and test your knowledge with questions and explanations.',
      name: 'savedPracticeBody',
      desc: '',
      args: [],
    );
  }

  /// `Choose a quiz`
  String get savedChooseQuiz {
    return Intl.message(
      'Choose a quiz',
      name: 'savedChooseQuiz',
      desc: '',
      args: [],
    );
  }

  /// `First aid guide`
  String get savedGuideLabel {
    return Intl.message(
      'First aid guide',
      name: 'savedGuideLabel',
      desc: '',
      args: [],
    );
  }

  /// `Loading saved topics…`
  String get savedLoading {
    return Intl.message(
      'Loading saved topics…',
      name: 'savedLoading',
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
