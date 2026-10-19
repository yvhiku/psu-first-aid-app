import 'package:first_aid_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../../services/hospital_service.dart';
import '../quizes/quiz_widgets.dart';
import 'hospital_actions.dart';

class HospitalMap extends StatefulWidget {
  const HospitalMap({
    required this.search,
    this.onHospitalTap,
    this.controller,
    this.interactive = true,
    this.tileProvider,
    super.key,
  });
  final HospitalSearchController search;
  final ValueChanged<Hospital>? onHospitalTap;
  final MapController? controller;
  final bool interactive;
  final TileProvider? tileProvider;
  @override
  State<HospitalMap> createState() => _HospitalMapState();
}

class _HospitalMapState extends State<HospitalMap> {
  late final MapController _map = widget.controller ?? MapController();
  late final TileProvider _tiles =
      widget.tileProvider ??
      NetworkTileProvider(
        cachingProvider: BuiltInMapCachingProvider.getOrCreateInstance(
          maxCacheSize: 50 * 1024 * 1024,
        ),
      );
  bool _tileError = false;
  bool _ready = false;
  LatLng? _lastCenter;
  int? _lastRadius;
  List<Hospital>? _lastHospitals;

  @override
  void initState() {
    super.initState();
    widget.search.addListener(_update);
  }

  void _update() {
    final search = widget.search;
    if (_ready &&
        search.center != null &&
        (_lastCenter != search.center || _lastRadius != search.radiusKm)) {
      _lastCenter = search.center;
      _lastRadius = search.radiusKm;
      _map.move(search.center!, _zoom);
    }
    if (_ready &&
        search.status == HospitalStatus.ready &&
        search.hospitals.isNotEmpty &&
        !identical(_lastHospitals, search.hospitals)) {
      _lastHospitals = search.hospitals;
      _map.fitCamera(
        CameraFit.coordinates(
          coordinates: [
            search.center!,
            ...search.hospitals.map((hospital) => hospital.point),
          ],
          padding: const EdgeInsets.all(40),
          maxZoom: 14,
        ),
      );
    }
    if (mounted) setState(() {});
  }

  double get _zoom => widget.search.radiusKm == 20
      ? 10.0
      : widget.search.radiusKm == 10
      ? 11.0
      : 12.0;

  @override
  void dispose() {
    widget.search.removeListener(_update);
    if (widget.controller == null) _map.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final search = widget.search;
    return Stack(
      children: [
        FlutterMap(
          mapController: _map,
          options: MapOptions(
            initialCenter: search.center ?? const LatLng(25, 0),
            initialZoom: search.center == null ? 2 : _zoom,
            minZoom: 2,
            maxZoom: 18,
            backgroundColor: QuizColors.surface,
            onMapReady: () {
              _ready = true;
              _lastCenter = search.center;
              _lastRadius = search.radiusKm;
              _update();
            },
            interactionOptions: InteractionOptions(
              flags: widget.interactive
                  ? InteractiveFlag.all & ~InteractiveFlag.rotate
                  : InteractiveFlag.none,
            ),
          ),
          children: [
            TileLayer(
              urlTemplate: const String.fromEnvironment(
                'OSM_TILE_URL',
                defaultValue: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              ),
              userAgentPackageName: 'com.psu.first_aid_app',
              maxNativeZoom: 19,
              panBuffer: 0,
              keepBuffer: 1,
              tileProvider: _tiles,
              errorTileCallback: (_, _, _) {
                if (_tileError) return;
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  if (mounted && !_tileError) setState(() => _tileError = true);
                });
              },
            ),
            MarkerLayer(
              markers: [
                if (search.userLocation != null)
                  Marker(
                    point: search.userLocation!,
                    width: 32,
                    height: 32,
                    child: Tooltip(
                      message: s.hospitalYou,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF2463CF),
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 4),
                          boxShadow: const [
                            BoxShadow(color: Colors.black26, blurRadius: 5),
                          ],
                        ),
                        child: const Icon(
                          Icons.person,
                          size: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                if (search.center != null &&
                    search.center != search.userLocation)
                  Marker(
                    point: search.center!,
                    width: 28,
                    height: 28,
                    child: Tooltip(
                      message: s.hospitalSearchCenter,
                      child: const Icon(
                        Icons.center_focus_strong,
                        color: QuizColors.muted,
                      ),
                    ),
                  ),
                for (final hospital in search.hospitals)
                  Marker(
                    key: ValueKey('hospital-pin-${hospital.id}'),
                    point: hospital.point,
                    width: 48,
                    height: 48,
                    child: Semantics(
                      button: true,
                      label:
                          hospital.name(
                            Localizations.localeOf(context).languageCode,
                          ) ??
                          s.hospitalUnnamed,
                      child: IconButton(
                        tooltip:
                            hospital.name(
                              Localizations.localeOf(context).languageCode,
                            ) ??
                            s.hospitalUnnamed,
                        onPressed: () => widget.onHospitalTap?.call(hospital),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: QuizColors.primary,
                          side: const BorderSide(
                            color: QuizColors.primary,
                            width: 2,
                          ),
                        ),
                        icon: const Icon(
                          Icons.local_hospital_rounded,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            // Attribution remains visible on the preview and full map.
            Align(
              alignment: Alignment.bottomLeft,
              child: Material(
                color: Colors.white.withValues(alpha: .95),
                child: InkWell(
                  onTap: () => openHospitalAction(
                    context,
                    Uri.parse('https://www.openstreetmap.org/copyright'),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 5),
                    child: Text(
                      '© OpenStreetMap contributors',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontSize: 10, color: QuizColors.ink),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        if (_tileError)
          Positioned(
            top: 8,
            left: 8,
            right: 8,
            child: Material(
              color: Colors.white.withValues(alpha: .95),
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.all(9),
                child: Text(
                  s.hospitalMapUnavailable,
                  style: const TextStyle(fontSize: 11, height: 1.4),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
