import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/features/authentication/provider/auth_provider.dart';
import 'package:first_aid_app/src/features/authentication/screens/contacts/contact_support.dart';
import 'package:first_aid_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:first_aid_app/src/features/authentication/screens/welcome/welcom_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'about.dart';
import 'edit_profile.dart';
import 'privacy_policy.dart';
import 'profile_view.dart';
import 'select_lang.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthProvider1>();
    return ProfileView(
      guest: auth.isGuest || !auth.isFullySignedIn,
      loading: auth.isLoading,
      user: auth.userModel,
      onSignIn: () => Get.offAll(() => const LoginScreen()),
      onEdit: () => Get.to(() => const UpdatedProfileScreen()),
      onLanguage: () => Get.to(() => const LanguageSelectionScreen1()),
      onContact: () => Get.to(() => const ContactSupportScreen()),
      onPrivacy: () => Get.to(() => const PrivacyPolicyScreen()),
      onAbout: () => Get.to(() => const AboutScreen()),
      onRetry: () => auth.getDataFromFirestore(),
      onLogout: () async {
        await auth.userSignOut();
        if (!context.mounted) return;
        if (auth.errorMessage != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(S.of(context).profileLogoutFailed)),
          );
          return;
        }
        Get.offAll(() => const WelcomeScreen());
      },
    );
  }
}
