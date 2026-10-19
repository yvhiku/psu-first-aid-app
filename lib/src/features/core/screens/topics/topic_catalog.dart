import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
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
import 'package:first_aid_app/src/features/core/screens/topics/universal_first_aid_algorithm.dart';
import 'package:first_aid_app/src/features/core/screens/topics/wound_care.dart';
import 'package:flutter/widgets.dart';

import '../../models/auto_quiz_data.dart';
import '../../models/quiz_progress.dart';

enum TopicCategory { emergencies, injuries, medical, environmental, basics }

class TopicEntry {
  const TopicEntry({
    required this.id,
    required this.title,
    required this.image,
    required this.category,
    required this.builder,
    required this.questionCount,
  });
  final String id;
  final String title;
  final String image;
  final TopicCategory category;
  final WidgetBuilder builder;
  final int questionCount;
  String get scoreKey => quizScoreKey(id);
}

List<TopicEntry> buildTopicCatalog(S s) {
  final quizzes = generateLocalizedQuizData(s);
  TopicEntry topic(
    String id,
    String title,
    String image,
    TopicCategory category,
    WidgetBuilder builder,
    String? quizKey,
  ) => TopicEntry(
    id: id,
    title: title,
    image: image,
    category: category,
    builder: builder,
    questionCount: quizzes[quizKey]?.length ?? 0,
  );
  return [
    topic(
      'cpr',
      s.tCpr,
      tCprimg,
      TopicCategory.emergencies,
      (_) => const CprScreen(),
      'CPR',
    ),
    topic(
      'bleeding',
      s.tBleeding,
      tWoundimg,
      TopicCategory.emergencies,
      (_) => const Bleeding(),
      'Bleeding',
    ),
    topic(
      'choking',
      s.tChoking,
      tChokingimg,
      TopicCategory.emergencies,
      (_) => const ChokingScreen(),
      'Choking',
    ),
    topic(
      'heart_condition',
      s.tHeartCondition,
      tHeartAttackimg,
      TopicCategory.emergencies,
      (_) => const HeartCondition(),
      'Heart Condition',
    ),
    topic(
      'stroke',
      s.tStroke,
      tStrotkeimg,
      TopicCategory.emergencies,
      (_) => const StrokeScreen(),
      'Stroke',
    ),
    topic(
      'shock',
      s.tShock,
      tEpilepsyimg,
      TopicCategory.emergencies,
      (_) => const Shock(),
      'Shock',
    ),
    topic(
      'burns',
      s.tBurns,
      tBurnimg,
      TopicCategory.injuries,
      (_) => const BurnScreen(),
      'Burns',
    ),
    topic(
      'fractures',
      s.tFractures,
      tInjuryimg,
      TopicCategory.injuries,
      (_) => const FracturesScreen(),
      'Fractures',
    ),
    topic(
      'head_injury',
      s.tHeadInjury,
      tHeadimg,
      TopicCategory.injuries,
      (_) => const HeadInjury(),
      'Head Injury',
    ),
    topic(
      'spinal_injury',
      s.tSpinalInjury,
      tSpinalInjuryimg,
      TopicCategory.injuries,
      (_) => const SpinalInjury(),
      'Spinal Injury',
    ),
    topic(
      'sprains_strains',
      s.tSprainsStrains,
      tSprainimg,
      TopicCategory.injuries,
      (_) => const SprainsStrains(),
      'Sprainstrains',
    ),
    topic(
      'wound_care',
      s.tWoundCare,
      tBandAidimg,
      TopicCategory.injuries,
      (_) => const WoundCare(),
      'Wound Care',
    ),
    topic(
      'eye_injury',
      s.tEyeInjury,
      tSoreEyesimg,
      TopicCategory.injuries,
      (_) => const EyeInjuryScreen(),
      'Eye Injury',
    ),
    topic(
      'allergic_reactions',
      s.tAllergicReaction,
      tAllergicReactionimg,
      TopicCategory.medical,
      (_) => const AllergicReactions(),
      'Allergic Reactions',
    ),
    topic(
      'asthma',
      s.asthma,
      tAsthmaimg,
      TopicCategory.medical,
      (_) => const Asthma(),
      'Asthma',
    ),
    topic(
      'diabetics',
      s.tDiabetics,
      tDiabeticsimg,
      TopicCategory.medical,
      (_) => const DiabeticsScreen(),
      'Diabetics',
    ),
    topic(
      'seizures',
      s.tSeizure,
      tSeizureimg,
      TopicCategory.medical,
      (_) => const Seizures(),
      'Seizures',
    ),
    topic(
      'bites',
      s.tBites,
      tBitinigimg,
      TopicCategory.environmental,
      (_) => const Bites(),
      'Bites',
    ),
    topic(
      'poisons',
      s.tPoisons,
      tPoisonimg,
      TopicCategory.environmental,
      (_) => const PoisonScreen(),
      'Poisons',
    ),
    topic(
      'drug_overdose',
      s.tDrugOverdose,
      tDrugOverDoseimg,
      TopicCategory.environmental,
      (_) => const DrugOverdoseScreen(),
      'Drug Overdose',
    ),
    topic(
      'universal_first_aid_algorithm',
      s.ufaa_title,
      tHelpingPersonimg,
      TopicCategory.basics,
      (_) => const UniversalFirstAidAlgorithmScreen(),
      'Universal First Aid Algorithm',
    ),
    topic(
      'assessing',
      s.tAssessing,
      tHelpingPersonimg,
      TopicCategory.basics,
      (_) => const AssessingInjuredPerson(),
      'Assessing Injured Person',
    ),
    topic(
      'recovery_pos',
      s.tRecoveryPos,
      tRecoveryPosimg,
      TopicCategory.basics,
      (_) => const RecoveryPos(),
      'Recovery Pos',
    ),
  ];
}
