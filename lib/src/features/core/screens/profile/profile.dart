// lib/src/features/core/screens/profile/profile_screen.dart

import 'dart:math' as math;

import 'package:first_aid_app/src/constants/colors.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/constants/sizes.dart';
import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/features/authentication/model/user_model.dart';
import 'package:first_aid_app/src/features/authentication/provider/auth_provider.dart';
import 'package:first_aid_app/src/features/authentication/screens/contacts/contact_support.dart';
import 'package:first_aid_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:first_aid_app/src/features/authentication/screens/welcome/welcom_screen.dart';
import 'package:first_aid_app/src/features/core/screens/profile/about.dart';
import 'package:first_aid_app/src/features/core/screens/profile/edit_profile.dart';
import 'package:first_aid_app/src/features/core/screens/profile/privacy_policy.dart';
import 'package:first_aid_app/src/features/core/screens/profile/select_lang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider1>(context);
    final isLoading = authProvider.isLoading;
    final isGuest = authProvider.isGuest;
    final userModel = authProvider.userModel;
    final height = MediaQuery.of(context).size.height;
    final s = S.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(tLogo, height: height * 0.05),
        centerTitle: true,
        elevation: 0,
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : isGuest
          ? _buildGuestView(context, s)
          : userModel == null
          ? _buildRetryView(context, authProvider, s)
          : _buildUserView(context, userModel, authProvider, s),
    );
  }

  Widget _buildGuestView(BuildContext context, S s) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person_outline, size: 80, color: tPrimaryColor),
            const SizedBox(height: 16),
            Text(
              s.guestProfileMessage,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: tPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
                ),
                onPressed: () => Get.offAll(() => const LoginScreen()),
                child: Text(
                  s.tLogin.toUpperCase(),
                  style: const TextStyle(letterSpacing: 1.2),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () => Get.to(() => const ContactSupportScreen()),
              child: Text.rich(
                TextSpan(
                  text: "${s.tNeedHelp} ",
                  style: TextStyle(color: Colors.grey[600]),
                  children: [
                    TextSpan(
                      text: s.tContactSupport,
                      style: TextStyle(
                        color: tPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRetryView(BuildContext context, AuthProvider1 ap, S s) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(s.tuserNotFound, style: const TextStyle(fontSize: 18)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => ap.getDataFromFirestore(),
            style: ElevatedButton.styleFrom(
              backgroundColor: tPrimaryColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: tDefaultSize,
                vertical: tButtonHeight / 2,
              ),
              elevation: 0,
            ),
            child: Text(
              s.tretryLoading,
              style: const TextStyle(
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

  Widget _buildUserView(
    BuildContext context,
    UserModel user,
    AuthProvider1 ap,
    S s,
  ) {
    // ignore: unused_local_variable
    final height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: user.profilePic.isNotEmpty
                  ? NetworkImage(user.profilePic)
                  : AssetImage(tProfileImg) as ImageProvider,
            ),
            const SizedBox(height: 15),
            Text(
              user.name,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
              ),
            ),
            const SizedBox(height: 4),
            Text(
              user.bio,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontFamily: "Poppins",
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 25),
            _profileSection(
              context,
              header: s.tProfileHeader1,
              buttons: [
                MenuButtons(
                  icon: Icons.person_2_outlined,
                  title: s.tMyAccount,
                  onPressed: () => Get.to(() => const UpdatedProfileScreen()),
                ),
                MenuButtons(
                  icon: Icons.public_sharp,
                  title: s.tChangeLang,
                  onPressed: () =>
                      Get.to(() => const LanguageSelectionScreen1()),
                ),
                MenuButtons(
                  icon: Icons.logout,
                  title: s.tLogout,
                  textColor: tPrimaryColor,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        title: Text(
                          s.tLogout,
                        ), // or a separate “Confirm Logout” string
                        content: Text(s.areyousureyouwanttologout),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: Text(s.tcancel, style: TextStyle(color: Colors.red),), // e.g. “Cancel”
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              ap.userSignOut().then(
                                (_) => Get.offAll(() => const WelcomeScreen()),
                              );
                            },
                            child: Text(
                              s.yes, style: TextStyle(color: Colors.red),
                            ), // or s.yes if you have it localized
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
              s: s,
            ),
            _profileSection(
              context,
              header: s.tProfileHeader2,
              buttons: [
                MenuButtons(
                  icon: Icons.support_agent,
                  title: s.tContactUs,
                  onPressed: () => Get.to(() => const ContactSupportScreen()),
                ),
              ],
              s: s,
            ),
            _profileSection(
              context,
              header: s.tProfileHeader3,
              buttons: [
                MenuButtons(
                  icon: Icons.privacy_tip_outlined,
                  title: s.tPrivacyPol,
                  onPressed: () => Get.to(() => const PrivacyPolicyScreen()),
                ),
                MenuButtons(
                  icon: Icons.info_outline,
                  title: s.tAboutUs,
                  onPressed: () => Get.to(() => const AboutScreen()),
                ),
              ],
              s: s,
            ),
          ],
        ),
      ),
    );
  }

  Widget _profileSection(
    BuildContext context, {
    required String header,
    required List<MenuButtons> buttons,
    required S s,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            style: const TextStyle(
              color: tPrimaryColor,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins",
            ),
          ),
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
  final VoidCallback? onPressed;

  const MenuButtons({
    super.key,
    required this.icon,
    required this.title,
    this.iconColor,
    this.textColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final isRTL = Directionality.of(context) == TextDirection.rtl;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 3)),
        ],
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(
          horizontal: tDefaultSize,
          vertical: 8,
        ),
        leading: Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(isRTL ? math.pi : 0),
          child: Icon(icon, size: 22, color: iconColor ?? tPrimaryColor),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: textColor ?? Colors.black,
            fontFamily: "Poppins",
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          size: 16,
          color: Colors.grey,
        ),
        onTap: onPressed,
      ),
    );
  }
}
