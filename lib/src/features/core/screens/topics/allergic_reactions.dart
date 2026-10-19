import 'package:flutter/material.dart';
import 'package:first_aid_app/generated/l10n.dart';
import 'instruction_data.dart';
import 'instruction_screen.dart';

class AllergicReactions extends StatelessWidget {
  const AllergicReactions({super.key});
  @override
  Widget build(BuildContext context) => InstructionScreen(
    guide: buildInstructionGuide('allergic_reactions', S.of(context)),
  );
}
