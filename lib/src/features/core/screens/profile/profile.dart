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
        title: IconButton(
          onPressed: () {},
          icon: Image(image: AssetImage(tLogo), height: height * 0.05),
        ),
        centerTitle: true,
        elevation: 0,
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
            Text(S.of(context).tuserNotFound, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => ap.getDataFromFirestore(),
              style: ElevatedButton.styleFrom(
                backgroundColor: tPrimaryColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                padding: const EdgeInsets.symmetric(horizontal: tDefaultSize, vertical: tButtonHeight / 2),
                elevation: 0,
              ),
              child: Text(
                S.of(context).tretryLoading,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, fontFamily: "Poppins"),
              ),
            ),
          ],
        ),
      );
    }

    final user = ap.userModel!;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          children: [
            _buildProfileImage(user, height),
            const SizedBox(height: 15),
            Text(
              user.name,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600, fontFamily: "Poppins"),
            ),
            const SizedBox(height: 4),
            Text(
              user.bio,
              style: const TextStyle(fontSize: 16, color: Colors.grey, fontFamily: "Poppins"),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 25),
            _buildProfileSection(header: S.of(context).tProfileHeader1, buttons: [
              MenuButtons(icon: Icons.person_2_outlined, title: S.of(context).tMyAccount, onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const UpdatedProfileScreen()))),
              MenuButtons(icon: Icons.public_sharp, title: S.of(context).tChangeLang, onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const LanguageSelectionScreen1()))),
              MenuButtons(icon: Icons.logout, title: S.of(context).tLogout, textColor: tPrimaryColor, onPressed: () => ap.userSignOut().then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const WelcomeScreen())))),
            ]),
            _buildProfileSection(header: S.of(context).tProfileHeader2, buttons: [
              MenuButtons(icon: Icons.support_agent, title: S.of(context).tContactUs, onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ContactSupportScreen()))),
            ]),
            _buildProfileSection(header: S.of(context).tProfileHeader3, buttons: [
              MenuButtons(icon: Icons.privacy_tip_outlined, title: S.of(context).tPrivacyPol, onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const PrivacyPolicyScreen()))),
              MenuButtons(icon: Icons.info_outline, title: S.of(context).tAboutUs, onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const AboutScreen()))),
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileImage(UserModel user, double height) {
    return CircleAvatar(
      radius: 60,
      backgroundImage: user.profilePic.isNotEmpty ? NetworkImage(user.profilePic) : AssetImage(tProfileImg) as ImageProvider,
    );
  }

  Widget _buildProfileSection({required String header, required List<MenuButtons> buttons}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(header, style: const TextStyle(color: tPrimaryColor, fontSize: 20, fontWeight: FontWeight.w600, fontFamily: "Poppins")),
          const SizedBox(height: 10),
          ...buttons,
        ],
      ),
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

  const MenuButtons({super.key, required this.icon, required this.title, this.iconColor, this.textColor, this.borderColor, this.iconSize = 22, this.horizontalPadding = 16, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final isRTL = Directionality.of(context) == TextDirection.rtl;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 3))],
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: horizontalPadding!, vertical: 8),
        leading: _DirectionAwareIcon(icon: icon, size: iconSize, color: iconColor ?? tPrimaryColor),
        title: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: textColor ?? Colors.black, fontFamily: "Poppins")),
        trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 16, color: Colors.grey),
        onTap: onPressed,
      ),
    );
  }
}

class _DirectionAwareIcon extends StatelessWidget {
  final IconData icon;
  final double? size;
  final Color? color;

  const _DirectionAwareIcon({required this.icon, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    final isRTL = Directionality.of(context) == TextDirection.rtl;
    final shouldMirror = isRTL && _shouldMirrorIcon(icon);

    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationY(shouldMirror ? math.pi : 0),
      child: Icon(icon, size: size, color: color),
    );
  }

  bool _shouldMirrorIcon(IconData icon) {
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
