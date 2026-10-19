import 'package:first_aid_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:latlong2/latlong.dart';

import '../../services/hospital_service.dart';
import '../quizes/quiz_widgets.dart';
import 'hospital_actions.dart';

class HospitalStatusPanel extends StatelessWidget {
  const HospitalStatusPanel({required this.search, super.key});
  final HospitalSearchController search;
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final status = search.status;
    if (status == HospitalStatus.idle ||
        (status == HospitalStatus.ready && search.hospitals.isNotEmpty)) {
      return const SizedBox.shrink();
    }
    final message = switch (status) {
      HospitalStatus.locating => s.hospitalLocating,
      HospitalStatus.loading => s.hospitalLoading,
      HospitalStatus.denied => s.hospitalDenied,
      HospitalStatus.deniedForever => s.hospitalDeniedForever,
      HospitalStatus.locationOff => s.hospitalLocationOff,
      HospitalStatus.locationError => s.hospitalLocationError,
      HospitalStatus.rateLimited => s.hospitalRateLimited,
      HospitalStatus.ready => s.hospitalEmpty,
      _ => s.hospitalError,
    };
    return Container(
      key: ValueKey('hospital-status-${status.name}'),
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: QuizColors.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (search.busy)
                const Padding(
                  padding: EdgeInsets.only(top: 3),
                  child: SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                )
              else
                const Icon(
                  Icons.info_outline_rounded,
                  size: 20,
                  color: QuizColors.muted,
                ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  message,
                  style: const TextStyle(fontSize: 13, height: 1.5),
                ),
              ),
            ],
          ),
          if (status == HospitalStatus.ready) ...[
            const SizedBox(height: 6),
            Text(
              s.hospitalEmptyBody,
              style: const TextStyle(fontSize: 12, height: 1.5),
            ),
          ],
          if (status == HospitalStatus.locationOff ||
              status == HospitalStatus.deniedForever)
            TextButton(
              onPressed: () async {
                try {
                  if (status == HospitalStatus.locationOff) {
                    await Geolocator.openLocationSettings();
                  } else {
                    await Geolocator.openAppSettings();
                  }
                } catch (_) {
                  if (context.mounted) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(s.homeActionFailed)));
                  }
                }
              },
              child: Text(s.hospitalSettings),
            ),
          if (status == HospitalStatus.error ||
              status == HospitalStatus.locationError ||
              status == HospitalStatus.rateLimited)
            TextButton(
              onPressed: () =>
                  status == HospitalStatus.locationError ||
                      search.center == null
                  ? search.useMyLocation()
                  : search.searchAt(search.center!),
              child: Text(s.hospitalRetry),
            ),
        ],
      ),
    );
  }
}

class HospitalTile extends StatelessWidget {
  const HospitalTile({required this.hospital, required this.origin, super.key});
  final Hospital hospital;
  final LatLng origin;
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final locale = Localizations.localeOf(context).languageCode;
    final distance = NumberFormat(
      '0.0',
      locale,
    ).format(hospital.distanceFrom(origin) / 1000);
    return QuizCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: QuizColors.primaryLight.withValues(alpha: .45),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.local_hospital_rounded,
                  color: QuizColors.primary,
                  size: 23,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hospital.name(locale) ?? s.hospitalUnnamed,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                        height: 1.45,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      s.hospitalDistance(distance),
                      style: const TextStyle(
                        fontSize: 12,
                        color: QuizColors.muted,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            switch (hospital.emergency) {
              true => s.hospitalEmergencyYes,
              false => s.hospitalEmergencyNo,
              null => s.hospitalEmergencyUnknown,
            },
            style: TextStyle(
              fontSize: 12,
              height: 1.5,
              color: hospital.emergency == true
                  ? QuizColors.green
                  : QuizColors.muted,
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10,
            runSpacing: 8,
            children: [
              FilledButton.icon(
                onPressed: () => openHospitalAction(
                  context,
                  hospitalDirections(hospital.point),
                ),
                icon: const Icon(Icons.directions_outlined, size: 18),
                label: Text(s.hospitalDirections),
              ),
              if (hospital.phone != null)
                OutlinedButton.icon(
                  onPressed: () => openHospitalAction(
                    context,
                    Uri(scheme: 'tel', path: hospital.phone),
                  ),
                  icon: const Icon(Icons.phone_outlined, size: 18),
                  label: Text(s.hospitalCall),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

void showHospitalDetails(
  BuildContext context,
  HospitalSearchController search,
  Hospital hospital,
) {
  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    builder: (_) => SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
        child: HospitalTile(hospital: hospital, origin: search.center!),
      ),
    ),
  );
}
