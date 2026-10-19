import 'package:flutter/material.dart';
import 'package:first_aid_app/generated/l10n.dart';
import 'instruction_data.dart';
import 'instruction_screen.dart';

class BurnScreen extends StatelessWidget {
  const BurnScreen({super.key});
  @override
  Widget build(BuildContext context) =>
      InstructionScreen(guide: buildInstructionGuide('burns', S.of(context)));
}
