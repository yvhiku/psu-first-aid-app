import 'dart:math' as math;

import 'package:first_aid_app/src/constants/colors.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/constants/sizes.dart';
import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/features/authentication/model/user_model.dart';
import 'package:first_aid_app/src/features/authentication/provider/auth_provider.dart';
import 'package:first_aid_app/src/features/authentication/screens/contacts/contact_support.dart';
import 'package:first_aid_app/src/features/authentication/screens/welcome/welcom_screen.dart';
import 'package:first_aid_app/src/features/core/screens/profile/about.dart';
import 'package:first_aid_app/src/features/core/screens/profile/edit_profile.dart';
import 'package:first_aid_app/src/features/core/screens/profile/privacy_policy.dart';
import 'package:first_aid_app/src/features/core/screens/profile/select_lang.dart';
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
            Text(S.of(context).tuserNotFound, style: TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => ap.getDataFromFirestore(),
              style: ElevatedButton.styleFrom(
                backgroundColor: tPrimaryColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: tDefaultSize,
                  vertical: tButtonHeight / 2,
                ),
                elevation: 0,
              ),
              child: Text(
                S.of(context).tretryLoading,
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
                header: S.of(context).tProfileHeader1,
                buttons: [
                  MenuButtons(
                    icon: Icons.person_2_outlined,
                    title: S.of(context).tMyAccount,
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const UpdatedProfileScreen(),
                      ),
                    ),
                  ),
                  MenuButtons(
                    icon: Icons.public_sharp,
                    title: S.of(context).tChangeLang,
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const LanguageSelectionScreen1(),
                      ),
                    ),
                  ),
                  MenuButtons(
                    icon: Icons.logout,
                    title: S.of(context).tLogout,
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
                header: S.of(context).tProfileHeader2,
                buttons: [
                  MenuButtons(
                    icon: Icons.support_agent,
                    title: S.of(context).tContactUs,
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ContactSupportScreen()),
                    ),
                  ),
                ],
              ),
              _buildProfileSection(
                header: S.of(context).tProfileHeader3,
                buttons: [
                  MenuButtons(
                    icon: Icons.privacy_tip_outlined,
                    title: S.of(context).tPrivacyPol,
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PrivacyPolicyScreen(),
                      ),
                    ),
                  ),
                  MenuButtons(
                    icon: Icons.info_outline,
                    title: S.of(context).tAboutUs,
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
    this.horizontalPadding = 24,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final isRTL = Directionality.of(context) == TextDirection.rtl;
    
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              foregroundColor: textColor ?? Colors.black,
              side: BorderSide(color: borderColor ?? Colors.grey),
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 12,
              ),
              alignment: isRTL ? Alignment.centerRight : Alignment.centerLeft,
            ),
            onPressed: onPressed,
            child: Padding(
              padding: EdgeInsets.only(
                left: isRTL ? 0 : horizontalPadding!,
                right: isRTL ? horizontalPadding! : 0,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: isRTL ? MainAxisAlignment.end : MainAxisAlignment.start,
                children: [
                  _DirectionAwareIcon( // Using the private implementation
                    icon: icon,
                    size: iconSize,
                    color: iconColor,
                  ),
                  const SizedBox(width: 12),
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
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}


class _DirectionAwareIcon extends StatelessWidget {
  final IconData icon;
  final double? size;
  final Color? color;

  const _DirectionAwareIcon({
    required this.icon,
    this.size,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final isRTL = Directionality.of(context) == TextDirection.rtl;
    final shouldMirror = isRTL && _shouldMirrorIcon(icon);

    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationY(shouldMirror ? math.pi : 0),
      child: Icon(
        icon,
        size: size,
        color: color,
      ),
    );
  }

  bool _shouldMirrorIcon(IconData icon) {
    // List of icons that should NOT be mirrored
    const nonMirroredIcons = [
      Icons.person,
      Icons.person_outline,
      Icons.account_circle,
      Icons.public,
      Icons.language,
      Icons.logout,
      Icons.exit_to_app,
      Icons.info,
      Icons.privacy_tip,
      Icons.help,
      Icons.email,
    ];
    
    return !nonMirroredIcons.contains(icon);
  }
}