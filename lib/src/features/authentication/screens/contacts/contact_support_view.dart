import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/screens/quizes/quiz_widgets.dart';
import 'package:flutter/material.dart';
import 'support_details.dart';

class ContactSupportView extends StatelessWidget {
  const ContactSupportView({
    super.key,
    required this.onEmail,
    required this.onPhone,
    required this.onCopyEmail,
    required this.onCopyPhone,
  });
  final VoidCallback onEmail, onPhone, onCopyEmail, onCopyPhone;
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final faqs = [
      (s.tquestion1, s.tanswer1),
      (s.tquestion2, s.tanswer2),
      (s.contactFaqSavedQ, s.contactFaqSavedA),
      (s.contactFaqMapQ, s.contactFaqMapA),
      (s.contactFaqReportQ, s.contactFaqReportA),
      (s.contactFaqDataQ, s.contactFaqDataA),
    ];
    return Scaffold(
      backgroundColor: QuizColors.background,
      appBar: AppBar(
        title: Text(
          s.tContactUs,
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
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 64,
                      height: 64,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: QuizColors.border),
                      ),
                      child: Image.asset(tLogo, excludeFromSemantics: true),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Text(
                        s.tweAreHereToHelp,
                        style: const TextStyle(
                          fontSize: 25,
                          height: 1.4,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  s.tcontactOurSupportTeam,
                  style: const TextStyle(
                    fontSize: 14,
                    height: 1.7,
                    color: QuizColors.muted,
                  ),
                ),
                const SizedBox(height: 24),
                _ContactCard(
                  icon: Icons.mail_outline_rounded,
                  title: s.temailSupport,
                  detail: supportEmail,
                  description: s.contactEmailBody,
                  action: s.tsendEmail,
                  primary: true,
                  onAction: onEmail,
                  onCopy: onCopyEmail,
                  id: 'email',
                ),
                const SizedBox(height: 14),
                _ContactCard(
                  icon: Icons.phone_outlined,
                  title: s.tphoneSupport,
                  detail: supportPhone,
                  description: s.contactPhoneBody,
                  action: s.contactOpenDialer,
                  primary: false,
                  onAction: onPhone,
                  onCopy: onCopyPhone,
                  id: 'phone',
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFF4DF),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.info_outline_rounded,
                        color: Color(0xFF805516),
                        size: 20,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          s.contactEmergencyNote,
                          style: const TextStyle(
                            fontSize: 13,
                            height: 1.6,
                            color: QuizColors.ink,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 28),
                Text(
                  s.tfaq,
                  style: const TextStyle(
                    fontSize: 19,
                    height: 1.4,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  s.contactFaqIntro,
                  style: const TextStyle(
                    fontSize: 14,
                    height: 1.6,
                    color: QuizColors.muted,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: QuizColors.border),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      for (var i = 0; i < faqs.length; i++) ...[
                        if (i > 0)
                          const Divider(
                            height: 1,
                            indent: 18,
                            endIndent: 18,
                            color: QuizColors.border,
                          ),
                        ExpansionTile(
                          key: ValueKey('contact-faq-$i'),
                          shape: const Border(),
                          collapsedShape: const Border(),
                          iconColor: QuizColors.primary,
                          collapsedIconColor: QuizColors.muted,
                          tilePadding: const EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 6,
                          ),
                          childrenPadding: const EdgeInsets.fromLTRB(
                            18,
                            0,
                            18,
                            18,
                          ),
                          expandedCrossAxisAlignment: CrossAxisAlignment.start,
                          title: Text(
                            faqs[i].$1,
                            style: const TextStyle(
                              fontSize: 14,
                              height: 1.5,
                              fontWeight: FontWeight.w700,
                              color: QuizColors.ink,
                            ),
                          ),
                          children: [
                            Align(
                              alignment: AlignmentDirectional.centerStart,
                              child: Text(
                                faqs[i].$2,
                                style: const TextStyle(
                                  fontSize: 14,
                                  height: 1.75,
                                  color: QuizColors.muted,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ContactCard extends StatelessWidget {
  const _ContactCard({
    required this.icon,
    required this.title,
    required this.detail,
    required this.description,
    required this.action,
    required this.primary,
    required this.onAction,
    required this.onCopy,
    required this.id,
  });
  final IconData icon;
  final String title, detail, description, action, id;
  final bool primary;
  final VoidCallback onAction, onCopy;
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: QuizColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
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
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    height: 1.4,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          SelectableText(
            detail,
            textDirection: TextDirection.ltr,
            textAlign: Directionality.of(context) == TextDirection.rtl
                ? TextAlign.right
                : TextAlign.left,
            style: const TextStyle(
              fontSize: 17,
              height: 1.5,
              fontWeight: FontWeight.w700,
              color: QuizColors.ink,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(
              fontSize: 13,
              height: 1.65,
              color: QuizColors.muted,
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 10,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              if (primary)
                FilledButton.icon(
                  key: ValueKey('contact-$id'),
                  onPressed: onAction,
                  style: FilledButton.styleFrom(
                    backgroundColor: QuizColors.primary,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  icon: const Icon(Icons.mail_outline_rounded, size: 18),
                  label: Text(action),
                )
              else
                OutlinedButton.icon(
                  key: ValueKey('contact-$id'),
                  onPressed: onAction,
                  style: OutlinedButton.styleFrom(
                    foregroundColor: QuizColors.primary,
                    side: const BorderSide(color: QuizColors.border),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  icon: const Icon(Icons.phone_outlined, size: 18),
                  label: Text(action),
                ),
              TextButton.icon(
                key: ValueKey('contact-copy-$id'),
                onPressed: onCopy,
                style: TextButton.styleFrom(foregroundColor: QuizColors.muted),
                icon: const Icon(Icons.copy_outlined, size: 17),
                label: Text(s.contactCopy),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
