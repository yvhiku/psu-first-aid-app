import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/features/core/screens/home/home_theme.dart';
import 'package:first_aid_app/src/features/core/screens/quizes/quiz_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'contact_support_view.dart';
import 'support_details.dart';

class ContactSupportScreen extends StatelessWidget {
  const ContactSupportScreen({super.key, this.launch});
  final Future<bool> Function(Uri)? launch;

  @override
  Widget build(BuildContext context) => Theme(
    data: homeTheme(context),
    child: Builder(
      builder: (context) => ContactSupportView(
        onEmail: () => _openContact(context, email: true),
        onPhone: () => _openContact(context, email: false),
        onCopyEmail: () => _copy(context, email: true),
        onCopyPhone: () => _copy(context, email: false),
      ),
    ),
  );

  Future<void> _openContact(BuildContext context, {required bool email}) async {
    final uri = email
        ? supportEmailUri(S.of(context).tsubject)
        : supportPhoneUri;
    try {
      final opened =
          await (launch?.call(uri) ??
              launchUrl(uri, mode: LaunchMode.externalApplication));
      if (opened) return;
    } catch (_) {
      /* The selectable contact and copy action remain available. */
    }
    if (!context.mounted) return;
    final s = S.of(context);
    await showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(
          email ? s.contactEmailUnavailable : s.contactPhoneUnavailable,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(s.contactCopyFallback),
            const SizedBox(height: 14),
            SelectableText(
              email ? supportEmail : supportPhone,
              textDirection: TextDirection.ltr,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text(s.tOK),
          ),
          FilledButton(
            key: const Key('contact-fallback-copy'),
            style: FilledButton.styleFrom(
              backgroundColor: QuizColors.primary,
              foregroundColor: Colors.white,
            ),
            onPressed: () async {
              final copied = await _copy(context, email: email);
              if (copied && dialogContext.mounted) Navigator.pop(dialogContext);
            },
            child: Text(s.contactCopy),
          ),
        ],
      ),
    );
  }

  Future<bool> _copy(BuildContext context, {required bool email}) async {
    final s = S.of(context);
    try {
      await Clipboard.setData(
        ClipboardData(text: email ? supportEmail : supportPhone),
      );
      if (!context.mounted) return false;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(email ? s.temailCopied : s.tcopyphone)),
      );
      return true;
    } catch (_) {
      if (!context.mounted) return false;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(s.contactCopyFailed)));
      return false;
    }
  }
}
