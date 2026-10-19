import 'package:flutter/material.dart';
import 'package:first_aid_app/generated/l10n.dart';
import 'instruction_data.dart';
import 'instruction_screen.dart';

class HeadInjury extends StatelessWidget {
  const HeadInjury({super.key});
  @override
  Widget build(BuildContext context) => InstructionScreen(
    guide: buildInstructionGuide('head_injury', S.of(context)),
  );
}
