import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/authentication/model/user_model.dart';
import 'package:flutter/material.dart';
import '../quizes/quiz_widgets.dart';
import 'profile_widgets.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({
    super.key,
    required this.guest,
    required this.loading,
    required this.user,
    required this.onSignIn,
    required this.onEdit,
    required this.onLanguage,
    required this.onContact,
    required this.onPrivacy,
    required this.onAbout,
    required this.onRetry,
    required this.onLogout,
  });
  final bool guest, loading;
  final UserModel? user;
  final VoidCallback onSignIn,
      onEdit,
      onLanguage,
      onContact,
      onPrivacy,
      onAbout,
      onRetry,
      onLogout;
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final language = switch (Localizations.localeOf(context).languageCode) {
      'ar' => 'العربية',
      'ru' => 'Русский',
      _ => 'English',
    };
    return ProfilePage(
      title: s.profile,
      children: [
        Text(
          s.profileIntro,
          style: const TextStyle(
            fontSize: 14,
            height: 1.6,
            color: QuizColors.muted,
          ),
        ),
        const SizedBox(height: 20),
        if (loading)
          ProfileCard(
            key: const Key('profile-loading'),
            child: Row(
              children: [
                const SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
                const SizedBox(width: 16),
                Expanded(child: Text(s.profileLoading)),
              ],
            ),
          )
        else if (guest)
          ProfileCard(
            key: const Key('profile-guest'),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  tProfileImg,
                  height: 64,
                  width: 64,
                  excludeFromSemantics: true,
                ),
                const SizedBox(height: 14),
                Text(
                  s.profileGuestTitle,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  s.guestProfileMessage,
                  style: const TextStyle(
                    fontSize: 14,
                    height: 1.6,
                    color: QuizColors.muted,
                  ),
                ),
                const SizedBox(height: 16),
                FilledButton.icon(
                  key: const Key('profile-sign-in'),
                  onPressed: onSignIn,
                  style: FilledButton.styleFrom(
                    backgroundColor: QuizColors.primary,
                    foregroundColor: Colors.white,
                  ),
                  icon: const Icon(Icons.login_rounded, size: 19),
                  label: Text(s.tLogin),
                ),
              ],
            ),
          )
        else if (user == null)
          ProfileCard(
            key: const Key('profile-error'),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.cloud_off_outlined, color: QuizColors.muted),
                const SizedBox(height: 12),
                Text(
                  s.profileLoadFailed,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  s.profileRetryBody,
                  style: const TextStyle(
                    fontSize: 14,
                    height: 1.6,
                    color: QuizColors.muted,
                  ),
                ),
                const SizedBox(height: 12),
                TextButton.icon(
                  key: const Key('profile-retry'),
                  onPressed: onRetry,
                  icon: const Icon(Icons.refresh_rounded),
                  label: Text(s.tretryLoading),
                ),
              ],
            ),
          )
        else
          _Identity(user: user!),
        ProfileSection(
          title: s.tProfileHeader1,
          children: [
            if (!guest && user != null && !loading)
              ProfileMenuItem(
                key: const Key('profile-edit'),
                icon: Icons.person_outline_rounded,
                title: s.tMyAccount,
                subtitle: s.profileEditBody,
                onTap: onEdit,
              ),
            ProfileMenuItem(
              key: const Key('profile-language'),
              icon: Icons.language_rounded,
              title: s.tChangeLang,
              subtitle: language,
              onTap: onLanguage,
            ),
          ],
        ),
        ProfileSection(
          title: s.tProfileHeader2,
          children: [
            ProfileMenuItem(
              key: const Key('profile-contact'),
              icon: Icons.support_agent_rounded,
              title: s.tContactUs,
              subtitle: s.profileContactBody,
              onTap: onContact,
            ),
          ],
        ),
        ProfileSection(
          title: s.tProfileHeader3,
          children: [
            ProfileMenuItem(
              key: const Key('profile-privacy'),
              icon: Icons.shield_outlined,
              title: s.tPrivacyPol,
              subtitle: s.profilePrivacyBody,
              onTap: onPrivacy,
            ),
            ProfileMenuItem(
              key: const Key('profile-about'),
              icon: Icons.info_outline_rounded,
              title: s.tAboutUs,
              subtitle: s.psuUniversity,
              onTap: onAbout,
            ),
          ],
        ),
        if (!guest && !loading) ...[
          const SizedBox(height: 24),
          ProfileCard(
            padding: EdgeInsets.zero,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: ProfileMenuItem(
                key: const Key('profile-logout'),
                icon: Icons.logout_rounded,
                title: s.tLogout,
                danger: true,
                onTap: () => _confirmLogout(context),
              ),
            ),
          ),
        ],
        const SizedBox(height: 24),
        Text(
          s.appDisplayName,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w700,
            color: QuizColors.muted,
          ),
        ),
      ],
    );
  }

  Future<void> _confirmLogout(BuildContext context) async {
    final s = S.of(context);
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(s.tLogout),
        content: Text(s.areyousureyouwanttologout),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext, false),
            child: Text(s.tcancel),
          ),
          FilledButton(
            key: const Key('profile-confirm-logout'),
            style: FilledButton.styleFrom(
              backgroundColor: QuizColors.primary,
              foregroundColor: Colors.white,
            ),
            onPressed: () => Navigator.pop(dialogContext, true),
            child: Text(s.tLogout),
          ),
        ],
      ),
    );
    if (confirmed == true) onLogout();
  }
}

class _Identity extends StatelessWidget {
  const _Identity({required this.user});
  final UserModel user;
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    Widget fallback() => Image.asset(
      tProfileImg,
      fit: BoxFit.contain,
      excludeFromSemantics: true,
    );
    return ProfileCard(
      key: const Key('profile-identity'),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 68,
                height: 68,
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: QuizColors.surface,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(19),
                  child: user.profilePic.trim().isEmpty
                      ? fallback()
                      : Image.network(
                          user.profilePic,
                          fit: BoxFit.cover,
                          excludeFromSemantics: true,
                          errorBuilder: (_, _, _) => fallback(),
                          loadingBuilder: (_, child, progress) =>
                              progress == null ? child : fallback(),
                        ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user.name.trim().isEmpty ? s.profileMember : user.name,
                      style: const TextStyle(
                        fontSize: 21,
                        height: 1.35,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    if (user.email.trim().isNotEmpty) ...[
                      const SizedBox(height: 6),
                      Text(
                        user.email,
                        textDirection: TextDirection.ltr,
                        style: const TextStyle(
                          fontSize: 13,
                          height: 1.5,
                          color: QuizColors.muted,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
          if (user.bio.trim().isNotEmpty) ...[
            const SizedBox(height: 16),
            Text(
              user.bio,
              style: const TextStyle(
                fontSize: 14,
                height: 1.6,
                color: QuizColors.muted,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
