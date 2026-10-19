# Topic instruction screens

All 23 existing topic routes delegate to the same guide presentation:

- `instruction_data.dart` maps stable topic IDs to the existing localized headings,
  steps, signs, notes and quiz keys.
- `instruction_models.dart` describes the content blocks, including the universal
  algorithm's numbered decision branches.
- `instruction_view.dart` renders the compact topic icon, numbered cards, signs,
  warning panels, emergency dialer action and pinned quiz button.
- `instruction_screen.dart` connects authentication, saved topics and quizzes.
  Saved topics are resolved by stable type across languages; removal retains the
  original stored title so the existing Firestore document can be removed.

Only the existing topic icons are used. No generated photos or step illustrations
are registered, loaded or required. Guide content is bundled for offline reading;
saved-topic synchronization retains the existing authentication requirements.
The emergency action opens the dialer for 112; it does not place a call directly.

Existing clinical text and its translations are retained. This layout refactor is
not a clinical review or a revision of the first-aid procedures.

New shared interface labels use `guide*` keys in the English, Arabic and Russian
ARB files. After changing labels, run `dart run intl_utils:generate`.

`test/instruction_screen_test.dart` checks all catalog guides, bundled icons,
quiz availability, actions, decision branches and narrow-screen layouts with
large text in all three languages. Optional local Windows previews can be
rendered to the ignored `.dart_tool/` directory:

```sh
flutter test test/instruction_screen_test.dart --dart-define=GUIDE_PREVIEWS=true --update-goldens
```
