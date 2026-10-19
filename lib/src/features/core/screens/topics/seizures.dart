import 'package:flutter/material.dart';
import 'package:first_aid_app/generated/l10n.dart';
import 'instruction_data.dart';
import 'instruction_screen.dart';

class Seizures extends StatelessWidget {
  const Seizures({super.key});
  @override
  Widget build(BuildContext context) => InstructionScreen(
    guide: buildInstructionGuide('seizures', S.of(context)),
  );
}
