import 'dart:async';
import 'dart:convert';

import 'package:first_aid_app/src/features/core/services/hospital_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:latlong2/latlong.dart';

Map<String, Object> element(
  int id,
  double lat,
  double lon, {
  String? name,
  String type = 'node',
  Map<String, String> tags = const {},
}) => {
  'id': id,
  'type': type,
  if (type == 'node') ...{
    'lat': lat,
    'lon': lon,
  } else
    'center': {'lat': lat, 'lon': lon},
  'tags': {'amenity': 'hospital', if (name != null) 'name': name, ...tags},
};

http.Response response(List<Object> elements) => http.Response(
  jsonEncode({'elements': elements}),
  200,
  headers: {'content-type': 'application/json; charset=utf-8'},
);

void main() {
  test('location timeouts are distinct from hospital network errors', () async {
    var calls = 0;
    final search = HospitalSearchController(
      locate: () async => throw TimeoutException('No position'),
      repository: HospitalRepository(
        client: MockClient((_) async {
          calls++;
          return response([]);
        }),
      ),
    );
    await search.useMyLocation();
    expect(search.status, HospitalStatus.locationError);
    expect(calls, 0);
    expect(search.center, isNull);
    search.dispose();
  });
  test(
    'parses node, way and relation hospitals, validates coordinates and safe phone numbers',
    () {
      final data = HospitalRepository.parseHospitals({
        'elements': [
          element(
            1,
            0,
            .001,
            name: 'Hospital',
            tags: {
              'name:ar': 'مستشفى',
              'emergency': 'yes',
              'phone': '+44 (123) 456-789;999',
            },
          ),
          element(2, 0, .002, type: 'way', tags: {'emergency': 'no'}),
          element(
            3,
            0,
            .003,
            type: 'relation',
            tags: {'phone': 'javascript:alert(1)'},
          ),
          element(4, 91, 0),
          element(5, 0, 0, tags: {'amenity': 'clinic'}),
          element(6, 0, 0, tags: {'disused': 'yes'}),
          {
            'id': 7,
            'type': 'way',
            'tags': {'amenity': 'hospital'},
          },
        ],
      });
      expect(data.length, 3);
      expect(data.first.name('ar'), 'مستشفى');
      expect(data.first.phone, '+44123456789');
      expect(data.first.emergency, isTrue);
      expect(data[1].emergency, isFalse);
      expect(data.last.phone, isNull);
      expect(data.last.emergency, isNull);
      expect(
        const Hospital(
          id: 'node/9',
          point: LatLng(0, 0),
          tags: {'phone': '+---'},
        ).phone,
        isNull,
      );
      expect(
        () => HospitalRepository.parseHospitals({
          'elements': [],
          'remark': 'timed out',
        }),
        throwsFormatException,
      );
      expect(
        () => HospitalRepository.parseHospitals({}),
        throwsFormatException,
      );
    },
  );

  test(
    'searches hospitals, sorts, removes campus duplicates, filters radius and caches requests',
    () async {
      var calls = 0;
      final repository = HospitalRepository(
        client: MockClient((request) async {
          calls++;
          expect(request.method, 'POST');
          final query = request.bodyFields['data']!;
          expect(query, contains('nwr["amenity"="hospital"]'));
          expect(query, contains('nwr["healthcare"="hospital"]'));
          expect(query, contains('out center tags'));
          return response([
            element(1, 0, .02, name: 'Farther'),
            element(2, 0, .001, name: 'Nearby'),
            element(3, 0, .0011, type: 'way', name: 'Nearby'),
            element(4, 0, 1, name: 'Outside'),
          ]);
        }),
      );
      final result = await repository.search(const LatLng(0, 0), 5);
      expect(result.hospitals.map((h) => h.name('en')), ['Nearby', 'Farther']);
      await repository.search(const LatLng(0, 0), 5);
      expect(calls, 1);
    },
  );

  test(
    'service throttling is surfaced and does not hammer the server on retry',
    () async {
      var calls = 0;
      final repository = HospitalRepository(
        client: MockClient((_) async {
          calls++;
          return http.Response('', 429, headers: {'retry-after': '60'});
        }),
      );
      for (var i = 0; i < 2; i++) {
        await expectLater(
          repository.search(const LatLng(0, 0), 5),
          throwsA(
            isA<HospitalSearchException>().having(
              (e) => e.reason,
              'reason',
              HospitalStatus.rateLimited,
            ),
          ),
        );
      }
      expect(calls, 1);
    },
  );

  test(
    'permission denial makes no network request and manual area search still works',
    () async {
      var calls = 0;
      final search = HospitalSearchController(
        locate: () async =>
            throw const HospitalSearchException(HospitalStatus.denied),
        repository: HospitalRepository(
          client: MockClient((_) async {
            calls++;
            return response([]);
          }),
        ),
      );
      expect(search.status, HospitalStatus.idle);
      await search.useMyLocation();
      expect(search.status, HospitalStatus.denied);
      expect(calls, 0);
      await search.searchAt(const LatLng(0, 0));
      expect(search.status, HospitalStatus.ready);
      expect(search.hospitals, isEmpty);
      expect(search.userLocation, isNull);
      expect(calls, 1);
      search.dispose();
    },
  );

  test('latest search wins when older network requests finish later', () async {
    final old = Completer<http.Response>();
    var calls = 0;
    final search = HospitalSearchController(
      repository: HospitalRepository(
        client: MockClient((_) {
          calls++;
          return calls == 1
              ? old.future
              : Future.value(response([element(2, 1, 1, name: 'New area')]));
        }),
      ),
    );
    final first = search.searchAt(const LatLng(0, 0));
    await search.searchAt(const LatLng(1, 1));
    old.complete(response([element(1, 0, 0, name: 'Old area')]));
    await first;
    expect(search.center, const LatLng(1, 1));
    expect(search.hospitals.single.name('en'), 'New area');
    expect(search.status, HospitalStatus.ready);
    search.dispose();
  });

  test(
    'network failures do not appear as a successful zero-result search',
    () async {
      final search = HospitalSearchController(
        repository: HospitalRepository(
          client: MockClient((_) async => throw TimeoutException('offline')),
        ),
      );
      await search.searchAt(const LatLng(0, 0));
      expect(search.status, HospitalStatus.error);
      expect(search.updatedAt, isNull);
      search.dispose();
    },
  );
}
