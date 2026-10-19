import 'package:flutter/material.dart';
import 'package:first_aid_app/generated/l10n.dart';
import 'instruction_data.dart';
import 'instruction_screen.dart';

class CprScreen extends StatelessWidget {
  const CprScreen({super.key});
  @override
  Widget build(BuildContext context) =>
      InstructionScreen(guide: buildInstructionGuide('cpr', S.of(context)));
}
