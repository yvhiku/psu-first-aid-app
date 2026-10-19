# Quiz question bank

The supplied English Markdown is retained as the source. All 230 questions,
four choices per question, and explanations are translated in
`lib/l10n/intl_en.arb`, `intl_ar.arb`, and `intl_ru.arb`.
Question keys retain existing prefixes and now run from `q1` to `q10`;
each question also has a `_explanation` key. The algorithm uses `ufaa_q*`.
Quiz interface strings use `quizUi*` keys, including the parameterized counter.
Readable Arabic and Russian Markdown versions are generated alongside this file
for content review; make translation edits in ARB and regenerate these exports.

Regenerate from the repository root:

```sh
node tool/generate_quiz_bank.mjs
dart run intl_utils:generate
dart format lib/src/features/core/models/auto_quiz_data.dart
flutter test
```

Edit translations in ARB. Edit English content in the Markdown source; the
generator updates English ARB values and the typed Dart answer keys.
Generation fails on missing translations or duplicate choices.

Two explicit editorial corrections are applied by the generator:

- Assessing Injured Person, question 8: choices B and D duplicated the correct
  AVPU expansion. B is now a distinct incorrect expansion; D remains correct.
- Universal First Aid Algorithm, question 7: explicitly describes an
  **unresponsive** casualty before asking about CPR for abnormal breathing.

Scores use language-independent topic IDs and the `quiz_v2_*_score` namespace.
Previous six-question results remain stored but are excluded from new progress.
Increment `quizBankVersion` when future bank changes invalidate results.

The supplied content is educational, not a substitute for certified training.
Core emergency wording was cross-checked against the 2025 Resuscitation Council
UK first-aid and adult basic life support guidelines. This is not a clinical
certification or a professional review of every question or translation.

- https://www.resus.org.uk/professional-library/2025-resuscitation-guidelines/first-aid-guidelines
- https://www.resus.org.uk/professional-library/2025-resuscitation-guidelines/adult-basic-life-support-guidelines
