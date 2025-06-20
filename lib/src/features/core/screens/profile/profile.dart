import 'package:first_aid_app/src/constants/colors.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/constants/sizes.dart';
import 'package:first_aid_app/src/constants/text_strings.dart';
import 'package:first_aid_app/src/features/authentication/model/user_model.dart';
import 'package:first_aid_app/src/features/authentication/provider/auth_provider.dart';
import 'package:first_aid_app/src/features/authentication/screens/contacts/contact_support.dart';
import 'package:first_aid_app/src/features/authentication/screens/welcome/welcom_screen.dart';
import 'package:first_aid_app/src/features/core/screens/profile/about.dart';
import 'package:first_aid_app/src/features/core/screens/profile/edit_profile.dart';
import 'package:first_aid_app/src/features/core/screens/profile/privacy_policy.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider1>(context, listen: true);
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
      body: _buildBody(context, ap, height),
    );
  }

  Widget _buildBody(BuildContext context, AuthProvider1 ap, double height) {
    if (ap.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (ap.userModel == null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('No user data found', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => ap.getDataFromFirestore(),
              style: ElevatedButton.styleFrom(
                backgroundColor: tPrimaryColor, // Use your red color constant
                foregroundColor: Colors.white, // White text
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), // Circular borders
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: tDefaultSize,
                  vertical: tButtonHeight / 2,
                ),
                elevation: 0, // Remove shadow if desired
              ),
              child: const Text(
                'Retry Loading',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                ),
              ),
            ),
          ],
        ),
      );
    }

    final user = ap.userModel!;
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Center(
          child: Column(
            children: [
              _buildProfileImage(user, height),
              const SizedBox(height: 15),
              Text(
                user.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins",
                ),
              ),
              Text(
                user.bio,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                ),
              ),

              const SizedBox(height: tDefaultSize),
              _buildProfileSection(
                header: tProfileHeader1,
                buttons: [
                  MenuButtons(
                    icon: Icons.person_2_outlined,
                    title: tMyAccount,
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const UpdatedProfileScreen(),
                      ),
                    ),
                  ),
                  MenuButtons(
                    icon: Icons.public_sharp,
                    title: tChangeLang,
                    onPressed: () {},
                  ),
                  MenuButtons(
                    icon: Icons.logout,
                    title: tLogout,
                    textColor: tPrimaryColor,
                    onPressed: () {
                      ap.userSignOut().then(
                        (value) => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WelcomeScreen(),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
              _buildProfileSection(
                header: tProfileHeader2,
                buttons: [
                  MenuButtons(
                    icon: Icons.support_agent,
                    title: tContactUs,
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ContactSupportScreen()),
                    ),
                  ),
                ],
              ),
              _buildProfileSection(
                header: tProfileHeader3,
                buttons: [
                  MenuButtons(
                    icon: Icons.privacy_tip_outlined,
                    title: tPrivacyPol,
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PrivacyPolicyScreen(),
                      ),
                    ),
                  ),
                  MenuButtons(
                    icon: Icons.info_outline,
                    title: tAboutUs,
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AboutScreen(),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileImage(UserModel user, double height) {
    return Stack(
      children: [
        SizedBox(
          width: 170,
          height: 170,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: user.profilePic.isNotEmpty
                ? Image.network(user.profilePic, fit: BoxFit.cover)
                : Image.asset(tProfileImg, fit: BoxFit.cover),
          ),
        ),
        // Positioned(
        //   bottom: 0,
        //   right: 0,
        //   child: Container(
        //     width: 35,
        //     height: 35,
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(100),
        //       color: Colors.red.withOpacity(0.25),
        //     ),
        //     child: const Icon(
        //       LineAwesomeIcons.pen_solid,
        //       color: Colors.black,
        //       size: 20,
        //     ),
        //   ),
        // ),
      ],
    );
  }

  Widget _buildProfileSection({
    required String header,
    required List<MenuButtons> buttons,
  }) {
    return Column(
      children: [
        Text(
          header,
          style: TextStyle(
            color: tPrimaryColor,
            fontSize: 24,
            fontWeight: FontWeight.w600,
            fontFamily: "Poppins",
          ),
        ),
        const SizedBox(height: 10),
        ...buttons,
      ],
    );
  }
}

class MenuButtons extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color? iconColor;
  final Color? textColor;
  final Color? borderColor;
  final double? iconSize;
  final double? horizontalPadding;
  final VoidCallback? onPressed;

  const MenuButtons({
    super.key,
    required this.icon,
    required this.title,
    this.iconColor,
    this.textColor,
    this.borderColor,
    this.iconSize = 25,
    this.horizontalPadding = 16,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              foregroundColor: textColor ?? tSecondaryColor,
              side: BorderSide(color: borderColor ?? tSecondaryColor),
              padding: EdgeInsets.symmetric(vertical: tButtonHeight),
              alignment: Alignment.centerLeft,
            ),
            onPressed: onPressed,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: horizontalPadding!),
                  child: Icon(icon, size: iconSize, color: iconColor),
                ),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    fontFamily: "Poppins",
                    color: textColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
