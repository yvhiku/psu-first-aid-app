import 'package:first_aid_app/src/constants/colors.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/features/core/controllers/widgets/navbar.dart';
import 'package:first_aid_app/src/features/core/screens/topics/all_topic.dart';
import 'package:first_aid_app/src/features/core/screens/topics/bleeding.dart';
import 'package:first_aid_app/src/features/core/screens/topics/burns.dart';
import 'package:first_aid_app/src/features/core/screens/topics/choking.dart';
import 'package:first_aid_app/src/features/core/screens/topics/cpr.dart';
import 'package:first_aid_app/src/features/core/screens/topics/poisons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(appBar: _buildAppBar(height), body: _buildBody(context));
  }

  AppBar _buildAppBar(double height) {
    return AppBar(
      title: IconButton(
        onPressed: () {},
        icon: Image(image: AssetImage(tLogo), height: height * 0.05),
      ),
      centerTitle: true,
      elevation: 0,
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            _buildEmergencyCallSection(context),
            const SizedBox(height: 25),
            _buildDoctorGuide(context),
            const SizedBox(height: 15),
            _buildTopicGrid(context),
            const SizedBox(height: 25),
            _buildHospitalFinder(context), 
            // _buildDailyTip(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildEmergencyCallSection(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.red[700],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text(
            S.of(context).tEmergencyNum,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => _makeEmergencyCall(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            ),
            child: const Text(
              "112",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: "Poppins",
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDoctorGuide(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/images/doctor_guide.png',
          height: 100,
          width: 80,
          fit: BoxFit.contain,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: tCardBgColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              S.of(context).doctor,
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTopicGrid(BuildContext context) {
    final topics = [
      {'img': tCprimg, 'text': S.of(context).tCpr, 'screen': CprScreen()},
      {'img': tWoundimg, 'text': S.of(context).tBleeding, 'screen': Bleeding()},
      {'img': tBurnimg, 'text': S.of(context).tBurns, 'screen': BurnScreen()},
      {
        'img': tChokingimg,
        'text': S.of(context).tChoking,
        'screen': ChokingScreen(),
      },
      {
        'img': tPoisonimg,
        'text': S.of(context).tPoisons,
        'screen': PoisonScreen(),
      },
      {
        'img': tServiceToOhersimg,
        'text': S.of(context).tAllTopics,
        'screen': AllTopicsScreen(),
      },
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 1,
      ),
      itemCount: topics.length,
      itemBuilder: (context, index) {
        final item = topics[index];
        return _buildButton(
          context,
          item['img'] as String,
          item['text'] as String,
          item['screen'] as Widget,
        );
      },
    );
  }

  // Widget _buildDailyTip() {
  //   return Container(
  //     padding: const EdgeInsets.all(16),
  //     decoration: BoxDecoration(
  //       color: Colors.orange.shade100,
  //       borderRadius: BorderRadius.circular(12),
  //     ),
  //     child: Row(
  //       children: const [
  //         Icon(Icons.notifications_active, color: Colors.orange),
  //         SizedBox(width: 12),
  //         Expanded(
  //           child: Text(
  //             "Tip: Would you know what to do if someone fainted?",
  //             style: TextStyle(fontFamily: "Poppins"),
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }

  void _makeEmergencyCall(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          S.of(context).temergencyCall,
          style: const TextStyle(
            color: Colors.black,
            fontFamily: "Poppins",
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        content: Text(
          S.of(context).tareYouSureCall112,
          style: const TextStyle(
            color: Colors.black,
            fontFamily: "Poppins",
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              S.of(context).tcancel,
              style: const TextStyle(
                color: tPrimaryColor,
                fontFamily: "Poppins",
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              launch('tel:112');
            },
            child: Text(
              S.of(context).tcall,
              style: const TextStyle(
                color: tPrimaryColor,
                fontFamily: "Poppins",
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
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
                fontSize: 13,
                fontWeight: FontWeight.w700,
                fontFamily: "Poppins",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildHospitalFinder(BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 20),
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.green[50],
      borderRadius: BorderRadius.circular(12),
    ),
    child: ListTile(
      leading: const Icon(Icons.local_hospital, color: Colors.red),
      title: Text(
        S.of(context).findNearestHospital,
        style: const TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () => _launchNearestHospital(context), // ✅ wrap in lambda
    ),
  );
}


Future<void> _launchNearestHospital(BuildContext context) async {
  const yandexUrl = 'yandexmaps://search?text=больница';
  const fallbackGoogleUrl = 'https://www.google.com/maps/search/?api=1&query=nearest+hospital';

  final Uri yandexUri = Uri.parse(yandexUrl);
  final Uri googleUri = Uri.parse(fallbackGoogleUrl);

  bool launched = false;

  if (await canLaunchUrl(yandexUri)) {
    launched = await launchUrl(yandexUri);
  } else if (await canLaunchUrl(googleUri)) {
    launched = await launchUrl(googleUri);
  }

  // Access context only after ensuring we're still in the same frame
  if (!launched) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(S.of(context).couldNotLaunchMaps)),
      );
    });
  }
}


