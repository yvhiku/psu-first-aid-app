import 'package:first_aid_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../quizes/quiz_widgets.dart';
import 'profile_widgets.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return ProfilePage(
      title: s.tprivacyPolicy,
      children: [
        Container(
          width: 60,
          height: 60,
          alignment: AlignmentDirectional.centerStart,
          child: const Icon(
            Icons.verified_user_outlined,
            size: 40,
            color: QuizColors.primary,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          s.privacyHeadline,
          style: const TextStyle(
            fontSize: 25,
            height: 1.3,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          s.tprivacyPolicyHeader,
          style: const TextStyle(
            fontSize: 15,
            height: 1.7,
            color: QuizColors.muted,
          ),
        ),
        const SizedBox(height: 24),
        InformationSection(
          icon: Icons.person_outline_rounded,
          title: s.tprivacyQ1,
          body: s.tprivacyA1,
        ),
        InformationSection(
          icon: Icons.phone_android_outlined,
          title: s.tprivacyQ2,
          body: s.tprivacyA2,
        ),
        InformationSection(
          icon: Icons.location_on_outlined,
          title: s.tprivacyQ3,
          body: s.tprivacyA3,
        ),
        InformationSection(
          icon: Icons.cloud_outlined,
          title: s.tprivacyQ4,
          body: s.tprivacyA4,
        ),
        InformationSection(
          key: const Key('privacy-choices'),
          icon: Icons.tune_rounded,
          title: s.tprivacyQ5,
          body: s.tprivacyA5,
        ),
        InformationSection(
          icon: Icons.update_rounded,
          title: s.privacyUpdatesTitle,
          body: s.privacyUpdatesBody,
        ),
        ProfileSection(
          title: s.privacyProvidersTitle,
          children: [
            ProfileMenuItem(
              icon: Icons.open_in_new_rounded,
              title: 'Firebase',
              onTap: () => _openProviderPolicy(
                context,
                Uri.parse('https://firebase.google.com/support/privacy'),
              ),
            ),
            ProfileMenuItem(
              icon: Icons.open_in_new_rounded,
              title: 'OpenStreetMap',
              onTap: () => _openProviderPolicy(
                context,
                Uri.parse('https://osmfoundation.org/wiki/Privacy_Policy'),
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        const InformationContactCard(privacy: true),
      ],
    );
  }

  Future<void> _openProviderPolicy(BuildContext context, Uri uri) async {
    try {
      if (await launchUrl(uri, mode: LaunchMode.externalApplication)) return;
    } catch (_) {
      /* Show the localized failure below. */
    }
    if (context.mounted) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(S.of(context).profileLinkFailed)));
    }
  }
}
