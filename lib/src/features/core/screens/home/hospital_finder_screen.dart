import 'package:first_aid_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:intl/intl.dart';

import '../../services/hospital_service.dart';
import '../quizes/quiz_widgets.dart';
import 'home_theme.dart';
import 'hospital_actions.dart';
import 'hospital_map.dart';
import 'hospital_widgets.dart';

class HospitalFinderScreen extends StatefulWidget {
  const HospitalFinderScreen({
    required this.search,
    this.tileProvider,
    super.key,
  });
  final HospitalSearchController search;
  final TileProvider? tileProvider;
  @override
  State<HospitalFinderScreen> createState() => _HospitalFinderScreenState();
}

class _HospitalFinderScreenState extends State<HospitalFinderScreen> {
  final _map = MapController();
  @override
  void dispose() {
    _map.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Theme(
    data: homeTheme(context),
    child: Builder(
      builder: (context) => AnimatedBuilder(
        animation: widget.search,
        builder: (context, _) {
          final s = S.of(context);
          final search = widget.search;
          return Scaffold(
            appBar: AppBar(
              title: Text(s.hospitalMapTitle),
              backgroundColor: QuizColors.background,
            ),
            body: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          s.hospitalRadius,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Wrap(
                          spacing: 8,
                          runSpacing: 6,
                          children: [
                            for (final radius in [5, 10, 20])
                              ChoiceChip(
                                label: Text(s.hospitalRadiusKm(radius)),
                                selected: search.radiusKm == radius,
                                onSelected: search.busy
                                    ? null
                                    : (_) => search.changeRadius(radius),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: (MediaQuery.sizeOf(context).height * .42).clamp(
                      240,
                      420,
                    ),
                    child: HospitalMap(
                      search: search,
                      tileProvider: widget.tileProvider,
                      controller: _map,
                      onHospitalTap: (hospital) =>
                          showHospitalDetails(context, search, hospital),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(16),
                  sliver: SliverList.list(
                    children: [
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          FilledButton.icon(
                            key: const ValueKey('hospital-search-area'),
                            onPressed: search.busy
                                ? null
                                : () => search.searchAt(_map.camera.center),
                            icon: const Icon(Icons.search_rounded, size: 18),
                            label: Text(s.hospitalSearchArea),
                          ),
                          OutlinedButton.icon(
                            onPressed: search.busy
                                ? null
                                : search.useMyLocation,
                            icon: const Icon(
                              Icons.my_location_rounded,
                              size: 18,
                            ),
                            label: Text(s.homeUseLocation),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        s.hospitalChooseArea,
                        style: const TextStyle(
                          fontSize: 12,
                          height: 1.5,
                          color: QuizColors.muted,
                        ),
                      ),
                      HospitalStatusPanel(search: search),
                      if (search.status == HospitalStatus.ready) ...[
                        const SizedBox(height: 12),
                        Text(
                          s.hospitalCount(search.hospitals.length),
                          style: const TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        if (search.updatedAt != null)
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text(
                              s.hospitalUpdated(
                                DateFormat.Hm(
                                  Localizations.localeOf(context).languageCode,
                                ).format(search.updatedAt!.toLocal()),
                              ),
                              style: const TextStyle(
                                fontSize: 11,
                                color: QuizColors.muted,
                              ),
                            ),
                          ),
                      ],
                      const SizedBox(height: 14),
                      Text(
                        s.hospitalDistanceNote,
                        style: const TextStyle(
                          fontSize: 12,
                          height: 1.6,
                          color: QuizColors.muted,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        s.homeLocationPrivacy,
                        style: const TextStyle(
                          fontSize: 11,
                          height: 1.6,
                          color: QuizColors.muted,
                        ),
                      ),
                      const SizedBox(height: 14),
                    ],
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  sliver: SliverList.builder(
                    itemCount: search.hospitals.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: HospitalTile(
                        key: ValueKey(
                          'hospital-card-${search.hospitals[index].id}',
                        ),
                        hospital: search.hospitals[index],
                        origin: search.center!,
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
                    child: TextButton.icon(
                      onPressed: () => openHospitalAction(
                        context,
                        Uri.https('www.google.com', '/maps/search/', {
                          'api': '1',
                          'query': search.center == null
                              ? 'hospitals near me'
                              : 'hospitals near ${search.center!.latitude},${search.center!.longitude}',
                        }),
                      ),
                      icon: const Icon(Icons.open_in_new_rounded, size: 17),
                      label: Text(s.hospitalExternalMaps),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    ),
  );
}
