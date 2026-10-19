import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart';

class Hospital {
  const Hospital({required this.id, required this.point, required this.tags});
  final String id;
  final LatLng point;
  final Map<String, String> tags;

  String? name(String language) {
    for (final candidate in [
      tags['name:$language'],
      tags['name'],
      tags['name:en'],
    ]) {
      if (candidate != null && candidate.trim().isNotEmpty) {
        return candidate.trim();
      }
    }
    return null;
  }

  String? get phone {
    final value = (tags['contact:phone'] ?? tags['phone'])
        ?.split(';')
        .first
        .trim();
    // Never interpret arbitrary OSM content as a URI scheme.
    if (value == null || !RegExp(r'^\+?[\d ()-]{3,30}$').hasMatch(value)) {
      return null;
    }
    final number = value.replaceAll(RegExp(r'[^+\d]'), '');
    return RegExp(r'^\+?\d{3,20}$').hasMatch(number) ? number : null;
  }

  bool? get emergency => switch (tags['emergency']) {
    'yes' => true,
    'no' => false,
    _ => null,
  };
  double distanceFrom(LatLng origin) =>
      const Distance().as(LengthUnit.Meter, origin, point);
}

class HospitalSearchException implements Exception {
  const HospitalSearchException(this.reason);
  final HospitalStatus reason;
}

enum HospitalStatus {
  idle,
  locating,
  loading,
  ready,
  denied,
  deniedForever,
  locationOff,
  locationError,
  error,
  rateLimited,
}

class HospitalResult {
  const HospitalResult(this.hospitals, this.updatedAt);
  final List<Hospital> hospitals;
  final DateTime updatedAt;
}

class HospitalRepository {
  HospitalRepository({http.Client? client, Uri? endpoint})
    : _client = client ?? http.Client(),
      _endpoint =
          endpoint ??
          Uri.parse(
            const String.fromEnvironment(
              'OVERPASS_URL',
              defaultValue: 'https://overpass-api.de/api/interpreter',
            ),
          );
  static final shared = HospitalRepository();
  final http.Client _client;
  final Uri _endpoint;
  final _cache = <String, HospitalResult>{};
  final _pending = <String, Future<HospitalResult>>{};
  DateTime? _retryAfter;

  Future<HospitalResult> search(LatLng center, int radiusKm) async {
    if (![5, 10, 20].contains(radiusKm) ||
        !center.latitude.isFinite ||
        !center.longitude.isFinite ||
        center.latitude.abs() > 90 ||
        center.longitude.abs() > 180) {
      throw ArgumentError('Invalid search area');
    }
    final lat = center.latitude.toStringAsFixed(3);
    final lon = center.longitude.toStringAsFixed(3);
    final key = '$lat:$lon:$radiusKm';
    final cached = _cache[key];
    if (cached != null &&
        DateTime.now().difference(cached.updatedAt) <
            const Duration(minutes: 15)) {
      return _within(cached, center, radiusKm);
    }
    if (_retryAfter?.isAfter(DateTime.now()) ?? false) {
      throw const HospitalSearchException(HospitalStatus.rateLimited);
    }
    final pending = _pending[key];
    if (pending != null) return _within(await pending, center, radiusKm);
    final request = _fetch(lat, lon, radiusKm);
    _pending[key] = request;
    try {
      final result = await request;
      if (_cache.length >= 8) _cache.remove(_cache.keys.first);
      _cache[key] = result;
      return _within(result, center, radiusKm);
    } finally {
      _pending.remove(key);
    }
  }

  Future<HospitalResult> _fetch(String lat, String lon, int radiusKm) async {
    // Slightly widen the query to cover rounding, then filter exact distances locally.
    final radius = radiusKm * 1000 + 200;
    final query =
        '[out:json][timeout:18];('
        'nwr["amenity"="hospital"](around:$radius,$lat,$lon);'
        'nwr["healthcare"="hospital"](around:$radius,$lat,$lon);'
        ');out center tags;';
    final response = await _client
        .post(
          _endpoint,
          headers: {
            'User-Agent':
                'com.psu.first_aid_app/0.1 (https://github.com/yvhiku/psu-first-aid-app)',
            'Accept': 'application/json',
          },
          body: {'data': query},
        )
        .timeout(const Duration(seconds: 25));
    if (response.statusCode == 429 ||
        response.statusCode == 503 ||
        response.statusCode == 504) {
      final seconds = int.tryParse(response.headers['retry-after'] ?? '') ?? 60;
      _retryAfter = DateTime.now().add(
        Duration(seconds: seconds.clamp(30, 300)),
      );
      throw const HospitalSearchException(HospitalStatus.rateLimited);
    }
    if (response.statusCode != 200) {
      throw const HospitalSearchException(HospitalStatus.error);
    }
    return HospitalResult(
      parseHospitals(jsonDecode(utf8.decode(response.bodyBytes))),
      DateTime.now(),
    );
  }

  static List<Hospital> parseHospitals(dynamic json) {
    if (json is! Map || json['elements'] is! List || json['remark'] != null) {
      throw const FormatException('Incomplete hospital response');
    }
    final hospitals = <String, Hospital>{};
    for (final element in json['elements'] as List) {
      if (element is! Map || element['tags'] is! Map || element['id'] is! num) {
        continue;
      }
      final tags = Map<String, String>.fromEntries(
        (element['tags'] as Map).entries
            .where((entry) => entry.key is String && entry.value is String)
            .map(
              (entry) => MapEntry(entry.key as String, entry.value as String),
            ),
      );
      if (tags['amenity'] != 'hospital' && tags['healthcare'] != 'hospital') {
        continue;
      }
      if (tags['disused'] == 'yes' ||
          tags['abandoned'] == 'yes' ||
          tags['construction'] == 'yes') {
        continue;
      }
      final coordinates = element['center'] is Map
          ? element['center'] as Map
          : element;
      final lat = coordinates['lat'];
      final lon = coordinates['lon'];
      if (lat is! num ||
          lon is! num ||
          !lat.isFinite ||
          !lon.isFinite ||
          lat.abs() > 90 ||
          lon.abs() > 180) {
        continue;
      }
      final id = '${element['type']}/${element['id']}';
      hospitals[id] = Hospital(
        id: id,
        point: LatLng(lat.toDouble(), lon.toDouble()),
        tags: tags,
      );
    }
    return hospitals.values.toList();
  }

  HospitalResult _within(HospitalResult result, LatLng center, int radiusKm) {
    final sorted =
        result.hospitals
            .where((h) => h.distanceFrom(center) <= radiusKm * 1000)
            .toList()
          ..sort(
            (a, b) => a.distanceFrom(center).compareTo(b.distanceFrom(center)),
          );
    final unique = <Hospital>[];
    for (final hospital in sorted) {
      final name = hospital.tags['name']?.trim().toLowerCase();
      if (name != null &&
          unique.any(
            (other) =>
                other.tags['name']?.trim().toLowerCase() == name &&
                hospital.distanceFrom(other.point) < 120,
          )) {
        continue;
      }
      unique.add(hospital);
    }
    return HospitalResult(unique, result.updatedAt);
  }
}

Future<LatLng> locateHospitalSearch() async {
  if (!await Geolocator.isLocationServiceEnabled()) {
    throw const HospitalSearchException(HospitalStatus.locationOff);
  }
  var permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
  }
  if (permission == LocationPermission.deniedForever) {
    throw const HospitalSearchException(HospitalStatus.deniedForever);
  }
  if (permission == LocationPermission.denied ||
      permission == LocationPermission.unableToDetermine) {
    throw const HospitalSearchException(HospitalStatus.denied);
  }
  final position = await Geolocator.getCurrentPosition(
    locationSettings: const LocationSettings(
      accuracy: LocationAccuracy.medium,
      timeLimit: Duration(seconds: 20),
    ),
  );
  return LatLng(position.latitude, position.longitude);
}

class HospitalSearchController extends ChangeNotifier {
  HospitalSearchController({
    HospitalRepository? repository,
    Future<LatLng> Function()? locate,
  }) : _repository = repository ?? HospitalRepository.shared,
       _locate = locate ?? locateHospitalSearch;
  final HospitalRepository _repository;
  final Future<LatLng> Function() _locate;
  HospitalStatus status = HospitalStatus.idle;
  LatLng? center;
  LatLng? userLocation;
  int radiusKm = 5;
  List<Hospital> hospitals = [];
  DateTime? updatedAt;
  int _request = 0;
  bool _disposed = false;
  bool get busy =>
      status == HospitalStatus.locating || status == HospitalStatus.loading;

  Future<void> useMyLocation() async {
    if (busy) return;
    final request = ++_request;
    status = HospitalStatus.locating;
    notifyListeners();
    try {
      final point = await _locate();
      if (_disposed || request != _request) return;
      userLocation = point;
      await searchAt(point);
    } catch (error) {
      if (_disposed || request != _request) return;
      if (kDebugMode) debugPrint('Hospital location failed: $error');
      status = error is HospitalSearchException
          ? error.reason
          : error is LocationServiceDisabledException
          ? HospitalStatus.locationOff
          : error is PermissionDeniedException
          ? HospitalStatus.denied
          : HospitalStatus.locationError;
      notifyListeners();
    }
  }

  Future<void> searchAt(LatLng point, {int? radius}) async {
    final request = ++_request;
    if (radius != null) radiusKm = radius;
    center = point;
    // Never show pins from a previous search area as current results.
    hospitals = [];
    updatedAt = null;
    status = HospitalStatus.loading;
    notifyListeners();
    try {
      final result = await _repository.search(point, radiusKm);
      if (_disposed || request != _request) return;
      hospitals = result.hospitals;
      updatedAt = result.updatedAt;
      status = HospitalStatus.ready;
    } catch (error) {
      if (_disposed || request != _request) return;
      if (kDebugMode) debugPrint('Hospital search failed: $error');
      status = error is HospitalSearchException
          ? error.reason
          : HospitalStatus.error;
    }
    if (!_disposed) notifyListeners();
  }

  void changeRadius(int value) {
    if (busy || radiusKm == value) return;
    if (center != null) {
      searchAt(center!, radius: value);
    } else {
      radiusKm = value;
      notifyListeners();
    }
  }

  @override
  void dispose() {
    _disposed = true;
    _request++;
    super.dispose();
  }
}
