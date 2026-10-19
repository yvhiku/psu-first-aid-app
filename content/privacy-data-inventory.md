# Profile and privacy copy

The app name is **PSU First Aid**. PSU stands for **Penza State University**.
About, Privacy and Profile use English, Arabic and Russian ARB strings. The
Android launcher label, iOS display name and welcome copy use the corrected name.
Legacy localization identifier `taboutPGUFA` remains compatible; its displayed
value uses PSU.

The policy text was matched to the current implementation on 19 October 2026:

| Data / action | Implementation |
| --- | --- |
| Google, phone and guest sign-in | Firebase Authentication in `auth_provider.dart` |
| Profile fields | `UserModel`: name, email, phone number, bio, photo URL, account ID and creation time |
| Profile and saved topics | Firestore `users/{uid}` and its `savedTopics` subcollection |
| Uploaded profile photos | Firebase Storage `profile_pics/{uid}` |
| Local preferences and profile cache | SharedPreferences in the auth provider and `main.dart` |
| Quiz progress and recent topic | SharedPreferences in quiz progress and topic screens |
| Foreground location | Explicit hospital-finder location action; no background tracking |
| Map requests | Tile area and Overpass search center; temporary in-memory search cache and disk tile cache |
| Sign-out | Clears SharedPreferences; does not delete the Firebase account or cloud profile |
| Deletion requests | Existing support contact; there is no in-app account deletion implementation |

The previous promises of no third-party processing, universal data deletion and
notifications of every major policy change were removed. Provider privacy links
are available in the app. The copy does not assert certification, legal compliance,
fixed deletion deadlines or a particular cloud retention period.

Before a public release, the app operator should review its identity/contact
details, retention practices and handling of access/deletion requests. This code
review does not verify production Firebase rules or establish a deletion workflow.

Provider references consulted:

- [Firebase privacy and security](https://firebase.google.com/support/privacy)
- [OpenStreetMap Foundation privacy policy](https://osmfoundation.org/wiki/Privacy_Policy)

`profile_view.dart` isolates loading, guest, retry and signed-in presentation from
the auth provider. Existing edit, language, support and sign-out flows are reused.
No generated photos or new image dependencies are included.
