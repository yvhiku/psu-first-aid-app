import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/constants/colors.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/widgets/navbar.dart';
import 'package:first_aid_app/src/features/core/screens/topics/allergic_reactions.dart';
import 'package:first_aid_app/src/features/core/screens/topics/assessing_injured_person.dart';
import 'package:first_aid_app/src/features/core/screens/topics/asthma.dart';
import 'package:first_aid_app/src/features/core/screens/topics/bites.dart';
import 'package:first_aid_app/src/features/core/screens/topics/bleeding.dart';
import 'package:first_aid_app/src/features/core/screens/topics/burns.dart';
import 'package:first_aid_app/src/features/core/screens/topics/choking.dart';
import 'package:first_aid_app/src/features/core/screens/topics/cpr.dart';
import 'package:first_aid_app/src/features/core/screens/topics/diabetics.dart';
import 'package:first_aid_app/src/features/core/screens/topics/drug_overdose.dart';
import 'package:first_aid_app/src/features/core/screens/topics/eye_injury.dart';
import 'package:first_aid_app/src/features/core/screens/topics/fractures.dart';
import 'package:first_aid_app/src/features/core/screens/topics/head_injury.dart';
import 'package:first_aid_app/src/features/core/screens/topics/heart_condition.dart';
import 'package:first_aid_app/src/features/core/screens/topics/poisons.dart';
import 'package:first_aid_app/src/features/core/screens/topics/recovery_pos.dart';
import 'package:first_aid_app/src/features/core/screens/topics/seizures.dart';
import 'package:first_aid_app/src/features/core/screens/topics/shock.dart';
import 'package:first_aid_app/src/features/core/screens/topics/spinal_injury.dart';
import 'package:first_aid_app/src/features/core/screens/topics/sprainsstrains.dart';
import 'package:first_aid_app/src/features/core/screens/topics/stroke.dart';
import 'package:first_aid_app/src/features/core/screens/topics/wound_care.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AllTopicsScreen extends StatelessWidget {
  const AllTopicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Color.fromARGB(255, 139, 47, 49),
        ),
        title: IconButton(
          onPressed: () {},
          icon: Image(image: AssetImage(tLogo), height: height * 0.05),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20, top: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: tCardBgColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 20.0),
              _buildFirstButtonRow(context),
              const SizedBox(height: 15.0),
              _buildSecondButtonRow(context),
              const SizedBox(height: 30.0),
              _buildScrollableTopicsGrid(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFirstButtonRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildButton(context, tCprimg, S.of(context).tCpr, CprScreen()),
        const SizedBox(width: 15.0),
        _buildButton(context, tWoundimg, S.of(context).bleeding, const Bleeding()),
        const SizedBox(width: 15.0),
        _buildButton(context, tBurnimg, S.of(context).burns, const BurnScreen()),
      ],
    );
  }

  Widget _buildSecondButtonRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildButton(context, tChokingimg, S.of(context).tChoking, const ChokingScreen()),
        const SizedBox(width: 15.0),
        _buildButton(context, tPoisonimg, S.of(context).tPoisons, const PoisonScreen()),
        const SizedBox(width: 15.0),
        _buildButton(context, tBitinigimg, S.of(context).bites, const Bites()),
      ],
    );
  }

  Widget _buildButton(
  BuildContext context,
  String image,
  String text,
  Widget screen,
) {
  return ConstrainedBox(
    constraints: const BoxConstraints(
      minWidth: 100,
      maxWidth: 110,
      minHeight: 100,
    ),
    child: OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        foregroundColor: tWhiteColor,
        backgroundColor: tPrimaryColor,
        side: BorderSide(color: tSecondaryColor),
        padding: const EdgeInsets.all(8.0),
      ),
      onPressed: () {
        if (screen is AllTopicsScreen) {
          Get.find<NavigationController>().selectedIndex.value = 1;
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(image), width: 40.0),
          const SizedBox(height: 8.0),
          Text(
            text,
            textAlign: TextAlign.center,
            softWrap: true,
            style: const TextStyle(
              fontSize: 13, // Slightly smaller for better fit
              fontWeight: FontWeight.w700,
              fontFamily: "Poppins",
            ),
          ),
        ],
      ),
    ),
  );
}


  Widget _buildScrollableTopicsGrid(BuildContext context) {
    final List<Map<String, dynamic>> topics = [
      {
        'image': tInjuryimg,
        'title': S.of(context).tFractures,
        'screen': const FracturesScreen(),
      },
      {
        'image': tAllergicReactionimg,
        'title': S.of(context).tAllergicReaction,
        'screen': const AllergicReactions(),
      },
      {'image': tAsthmaimg, 'title': S.of(context).asthma, 'screen': const Asthma()},
      {
        'image': tDiabeticsimg,
        'title': S.of(context).tDiabetics,
        'screen': const DiabeticsScreen(),
      },
      {
        'image': tDrugOverDoseimg,
        'title': S.of(context).tDrugOverdose,
        'screen': const DrugOverdoseScreen(),
      },
      {
        'image': tSoreEyesimg,
        'title': S.of(context).tEyeInjury,
        'screen': const EyeInjuryScreen(),
      },
      {'image': tHeadimg, 'title': S.of(context).tHeadInjury, 'screen': const HeadInjury()},
      {
        'image': tHeartAttackimg,
        'title': S.of(context).tHeartCondition,
        'screen': const HeartCondition(),
      },
      {'image': tSeizureimg, 'title': S.of(context).tSeizure, 'screen': const Seizures()},
      {'image': tEpilepsyimg, 'title': S.of(context).tShock, 'screen': const Shock()},
      {
        'image': tSpinalInjuryimg,
        'title': S.of(context).tSpinalInjury,
        'screen': const SpinalInjury(),
      },
      {
        'image': tSprainimg,
        'title': S.of(context).tSprainsStrains,
        'screen': const SprainsStrains(),
      },
      {'image': tStrotkeimg, 'title': S.of(context).tStroke, 'screen': const StrokeScreen()},
      {'image': tBandAidimg, 'title': S.of(context).tWoundCare, 'screen': const WoundCare()},
      {
        'image': tHelpingPersonimg,
        'title': S.of(context).tAssessing,
        'screen': const AssessingInjuredPerson(),
      },
      {
        'image': tRecoveryPosimg,
        'title': S.of(context).tRecoveryPos,
        'screen': const RecoveryPos(),
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            S.of(context).tAllTopics,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 10),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 3,
            mainAxisExtent: 80,
          ),
          itemCount: topics.length,
          itemBuilder: (context, index) {
            return _buildCompactButton(
              context,
              topics[index]['image'],
              topics[index]['title'],
              topics[index]['screen'],
            );
          },
        ),
      ],
    );
  }

  Widget _buildCompactButton(
    BuildContext context,
    String image,
    String text,
    Widget screen,
  ) {
    return OutlinedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        side: BorderSide(color: Colors.grey.shade300),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage(image), width: 30, height: 30),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
              ),
            ),
          ),
        ],
      ),
    );
  }
}