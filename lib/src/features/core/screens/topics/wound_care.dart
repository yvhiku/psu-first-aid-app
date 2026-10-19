import 'package:flutter/material.dart';
import 'package:first_aid_app/generated/l10n.dart';
import 'instruction_data.dart';
import 'instruction_screen.dart';

class WoundCare extends StatelessWidget {
  const WoundCare({super.key});
  @override
  Widget build(BuildContext context) => InstructionScreen(
    guide: buildInstructionGuide('wound_care', S.of(context)),
  );
}
