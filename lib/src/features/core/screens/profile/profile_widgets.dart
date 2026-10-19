import 'package:flutter/material.dart';
import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/features/authentication/screens/contacts/contact_support.dart';
import '../home/home_theme.dart';
import '../quizes/quiz_widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required this.title, required this.children});
  final String title;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) => Theme(
    data: homeTheme(context),
    child: Scaffold(
      backgroundColor: QuizColors.background,
      appBar: AppBar(
        title: Text(
          title,
          maxLines: 2,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        ),
        toolbarHeight: 72,
        backgroundColor: QuizColors.background,
        foregroundColor: QuizColors.ink,
        surfaceTintColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 28),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 720),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: children,
            ),
          ),
        ),
      ),
    ),
  );
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(20),
    this.color = Colors.white,
  });
  final Widget child;
  final EdgeInsetsGeometry padding;
  final Color color;
  @override
  Widget build(BuildContext context) => Container(
    padding: padding,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: QuizColors.border),
    ),
    child: child,
  );
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    super.key,
    required this.title,
    required this.children,
  });
  final String title;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(top: 24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w800,
              color: QuizColors.ink,
            ),
          ),
        ),
        ProfileCard(
          padding: EdgeInsets.zero,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Column(
              children: [
                for (var i = 0; i < children.length; i++) ...[
                  if (i > 0)
                    const Divider(
                      height: 1,
                      indent: 18,
                      endIndent: 18,
                      color: QuizColors.border,
                    ),
                  children[i],
                ],
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.subtitle,
    this.danger = false,
  });
  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback onTap;
  final bool danger;
  @override
  Widget build(BuildContext context) => Material(
    color: Colors.transparent,
    child: InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                color: const Color(0xFFFFEDEA),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, size: 21, color: QuizColors.primary),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: danger ? QuizColors.primary : QuizColors.ink,
                    ),
                  ),
                  if (subtitle != null) ...[
                    const SizedBox(height: 4),
                    Text(
                      subtitle!,
                      style: const TextStyle(
                        fontSize: 12,
                        height: 1.5,
                        color: QuizColors.muted,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(width: 8),
            const Icon(
              Icons.chevron_right_rounded,
              size: 22,
              color: QuizColors.muted,
            ),
          ],
        ),
      ),
    ),
  );
}

class InformationSection extends StatelessWidget {
  const InformationSection({
    super.key,
    required this.icon,
    required this.title,
    required this.body,
    this.warning = false,
  });
  final IconData icon;
  final String title;
  final String body;
  final bool warning;
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: 14),
    child: ProfileCard(
      color: warning ? const Color(0xFFFFF4DF) : Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                icon,
                color: warning ? const Color(0xFF805516) : QuizColors.primary,
                size: 21,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    height: 1.45,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            body,
            style: const TextStyle(
              fontSize: 14,
              height: 1.75,
              color: QuizColors.muted,
            ),
          ),
        ],
      ),
    ),
  );
}

class InformationContactCard extends StatelessWidget {
  const InformationContactCard({super.key, this.privacy = false});
  final bool privacy;
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return ProfileCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            privacy ? s.privacyContactTitle : s.tContactUs,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
          ),
          if (privacy) ...[
            const SizedBox(height: 8),
            Text(
              s.privacyContactBody,
              style: const TextStyle(
                fontSize: 14,
                height: 1.65,
                color: QuizColors.muted,
              ),
            ),
          ],
          const SizedBox(height: 10),
          const SelectableText(
            'yvhiku@yandex.ru',
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 14, color: QuizColors.muted),
          ),
          const SizedBox(height: 12),
          TextButton.icon(
            key: const Key('information-contact'),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (_) => const ContactSupportScreen(),
              ),
            ),
            style: TextButton.styleFrom(foregroundColor: QuizColors.primary),
            icon: const Icon(Icons.mail_outline_rounded, size: 19),
            label: Text(s.tContactSupport),
          ),
        ],
      ),
    );
  }
}
