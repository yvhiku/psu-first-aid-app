import 'package:first_aid_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openHospitalAction(BuildContext context, Uri uri) async {
  try {
    if (await launchUrl(uri, mode: LaunchMode.externalApplication)) return;
  } catch (_) {
    /* Report unsupported launchers without disrupting the screen. */
  }
  if (context.mounted) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(S.of(context).homeActionFailed)));
  }
}

Uri hospitalDirections(LatLng point) => Uri.https(
  'www.google.com',
  '/maps/dir/',
  {'api': '1', 'destination': '${point.latitude},${point.longitude}'},
);
