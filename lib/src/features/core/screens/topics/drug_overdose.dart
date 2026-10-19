import 'package:flutter/material.dart';
import 'package:first_aid_app/generated/l10n.dart';
import 'instruction_data.dart';
import 'instruction_screen.dart';

class DrugOverdoseScreen extends StatelessWidget {
  const DrugOverdoseScreen({super.key});
  @override
  Widget build(BuildContext context) => InstructionScreen(
    guide: buildInstructionGuide('drug_overdose', S.of(context)),
  );
}
