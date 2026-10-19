import 'package:flutter/material.dart';
import 'package:first_aid_app/generated/l10n.dart';
import 'instruction_data.dart';
import 'instruction_screen.dart';

class UniversalFirstAidAlgorithmScreen extends StatelessWidget {
  const UniversalFirstAidAlgorithmScreen({super.key});
  @override
  Widget build(BuildContext context) => InstructionScreen(
    guide: buildInstructionGuide(
      'universal_first_aid_algorithm',
      S.of(context),
    ),
  );
}
