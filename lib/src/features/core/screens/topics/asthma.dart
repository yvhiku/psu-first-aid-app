import 'package:flutter/material.dart';
import 'package:first_aid_app/generated/l10n.dart';
import 'instruction_data.dart';
import 'instruction_screen.dart';

class Asthma extends StatelessWidget {
  const Asthma({super.key});
  @override
  Widget build(BuildContext context) =>
      InstructionScreen(guide: buildInstructionGuide('asthma', S.of(context)));
}
