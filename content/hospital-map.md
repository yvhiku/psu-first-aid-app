# Nearby hospital map

The home page keeps the app's existing illustrated assets and navigation. It
opens the phone dialer for 112, links to the existing guides, and displays actual
versioned quiz progress. No location request runs on home-page launch.

Users can request their location or open the map and search a manually selected
area. Only foreground location permission is requested. No location data is
written to Firebase or to the user's account.

Hospital discovery queries OpenStreetMap through Overpass, using both
`amenity=hospital` and `healthcare=hospital` for nodes, ways, and relations.
Distances are straight-line estimates from the search center. Names use the
selected language when available; phone and emergency-department information
are shown only when present. Opening hours, routing times, and live availability
are not inferred. Directions open an external maps application/web page.

Search radii are 5, 10, and 20 km. Nearby results are cached in memory for
15 minutes (up to eight areas); identical in-flight queries are shared. Errors,
incomplete Overpass responses, empty results, denied permissions, disabled
location services, and rate limiting have separate UI states. No background
polling or automatic retry loop is used. Location centers are rounded to three
decimal places for queries, with a slightly expanded query radius and exact
distance filtering afterwards.

`flutter_map` caches viewed tiles using its built-in HTTP-aware cache, capped
at 50 MB. There is no bulk download or guaranteed offline map. Visible
OpenStreetMap attribution links to its copyright information.

The default public services are suitable for development and light usage;
their shared capacity is not an emergency-service availability guarantee.
Before a wider release, review service capacity/terms, publish app contact
details, and configure a suitable tile and hospital-data provider if needed.
The endpoints can be set at build time:

```sh
flutter run --dart-define=OVERPASS_URL=https://your-provider.example/api/interpreter --dart-define=OSM_TILE_URL=https://your-provider.example/tiles/{z}/{x}/{y}.png
```

Changing the tile source also requires reviewing/updating attribution for that
provider. Never embed confidential provider credentials in build arguments.

- https://operations.osmfoundation.org/policies/tiles/
- https://dev.overpass-api.de/overpass-doc/en/preface/commons.html
