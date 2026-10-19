import 'package:flutter/material.dart';
import 'package:first_aid_app/generated/l10n.dart';
import 'instruction_data.dart';
import 'instruction_screen.dart';

class EyeInjuryScreen extends StatelessWidget {
  const EyeInjuryScreen({super.key});
  @override
  Widget build(BuildContext context) => InstructionScreen(
    guide: buildInstructionGuide('eye_injury', S.of(context)),
  );
}
