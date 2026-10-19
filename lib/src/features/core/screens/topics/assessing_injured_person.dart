import 'package:flutter/material.dart';
import 'package:first_aid_app/generated/l10n.dart';
import 'instruction_data.dart';
import 'instruction_screen.dart';

class AssessingInjuredPerson extends StatelessWidget {
  const AssessingInjuredPerson({super.key});
  @override
  Widget build(BuildContext context) => InstructionScreen(
    guide: buildInstructionGuide('assessing', S.of(context)),
  );
}
