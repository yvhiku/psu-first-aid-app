// Run from the repository root: node tool/generate_quiz_bank.mjs
// Then run: dart run intl_utils:generate
import fs from 'node:fs';
import assert from 'node:assert/strict';

const overrides = {
  'Assessing Injured Person:8': { option: 1, text: 'Alert, Voice, Pulse, Unconscious' },
  'Universal First Aid Algorithm:7': {
    question: 'What should you do if an unresponsive casualty is not breathing normally?',
  },
};
const aliases = {
  'Universal First Aid Algorithm': ['Universal First Aid Algorithm', 'ufaa', 'universal_first_aid_algorithm'],
  'Assessing Injured Person': ['Assessing Injured Person', 'assess', 'assessing'],
  'Recovery Position': ['Recovery Pos', 'recovery_pos', 'recovery_pos'],
  'Sprains & Strains': ['Sprainstrains', 'sprainstrains', 'sprains_strains'],
};
const source = fs.readFileSync('content/quiz/first_aid_question_bank_en.md', 'utf8');
const topics = source.split(/^## /m).slice(1).map(block => {
  const title = block.split('\n')[0].trim();
  const id = title.toLowerCase().replaceAll(' ', '_');
  const [mapKey, prefix, topicId] = aliases[title] ?? [title, id, id];
  const questions = block.split(/^### /m).slice(1).map((body, index) => {
    const lines = body.trim().split(/\r?\n/).filter(Boolean);
    assert(lines[0].startsWith(`${index + 1}. `));
    const options = lines.filter(line => /^- [A-D]\. /.test(line)).map(line => line.slice(5));
    const answer = lines.find(line => line.startsWith('**Correct answer:** ')).slice(20);
    const correctIndex = 'ABCD'.indexOf(answer[0]);
    assert.equal(options.length, 4);
    assert(correctIndex >= 0);
    assert.equal(answer.slice(3), options[correctIndex]);
    let question = lines[0].replace(/^\d+\. /, '');
    const explanation = lines.find(line => line.startsWith('**Explanation:** ')).slice(17);
    const override = overrides[`${title}:${index + 1}`];
    if (override?.question) question = override.question;
    if (override?.text) options[override.option] = override.text;
    assert.equal(new Set(options).size, 4, `${title} ${index + 1}: duplicate choices`);
    return { question, options, correctIndex, explanation };
  });
  assert.equal(questions.length, 10, title);
  return { title, mapKey, prefix, topicId, questions };
});
assert.equal(topics.length, 23);

const titleKeys = {
  cpr: 'tCpr', bleeding: 'tBleeding', burns: 'tBurns', choking: 'tChoking',
  poisons: 'tPoisons', bites: 'tBites', universal_first_aid_algorithm: 'ufaa_title',
  fractures: 'tFractures', allergic_reactions: 'tAllergicReaction', asthma: 'asthma',
  diabetics: 'tDiabetics', drug_overdose: 'tDrugOverdose', eye_injury: 'tEyeInjury',
  head_injury: 'tHeadInjury', heart_condition: 'tHeartCondition', seizures: 'tSeizure',
  shock: 'tShock', spinal_injury: 'tSpinalInjury', sprains_strains: 'tSprainsStrains',
  stroke: 'tStroke', wound_care: 'tWoundCare', assessing: 'tAssessing', recovery_pos: 'tRecoveryPos',
};

const enPath = 'lib/l10n/intl_en.arb';
let english = fs.readFileSync(enPath, 'utf8');
const existing = JSON.parse(english);
const additions = {};
for (const topic of topics) {
  for (const [index, question] of topic.questions.entries()) {
    const key = `${topic.prefix}_q${index + 1}`;
    const fields = { [key]: question.question, [`${key}_explanation`]: question.explanation };
    question.options.forEach((option, i) => fields[`${key}_opt${i + 1}`] = option);
    for (const [name, value] of Object.entries(fields)) {
      if (Object.hasOwn(existing, name)) {
        english = english.replace(new RegExp(`("${name}"\\s*:\\s*)"(?:[^"\\\\]|\\\\.)*"`),
          (_, before) => before + JSON.stringify(value));
      } else additions[name] = value;
    }
  }
}
if (Object.keys(additions).length) {
  english = english.trimEnd().slice(0, -1).trimEnd() + ',\n' +
    JSON.stringify(additions, null, 3).slice(2);
}
JSON.parse(english);
fs.writeFileSync(enPath, english.trimEnd() + '\n');

// Translations live in ARB files; never silently fall back to English content.
for (const locale of ['en', 'ar', 'ru']) {
  const arb = JSON.parse(fs.readFileSync(`lib/l10n/intl_${locale}.arb`, 'utf8'));
  for (const topic of topics) for (let i = 1; i <= 10; i++) {
    const key = `${topic.prefix}_q${i}`;
    const values = ['', '_opt1', '_opt2', '_opt3', '_opt4', '_explanation'].map(suffix => arb[key + suffix]);
    assert(values.every(value => typeof value === 'string' && value.trim()), `${locale}: ${key} missing translation`);
    assert.equal(new Set(values.slice(1, 5)).size, 4, `${locale}: ${key} duplicate choices`);
  }
  if (locale !== 'en') {
    const label = locale === 'ar'
      ? {title: 'بنك أسئلة الإسعافات الأولية', answer: 'الإجابة الصحيحة', explanation: 'الشرح'}
      : {title: 'Банк вопросов по первой помощи', answer: 'Правильный ответ', explanation: 'Объяснение'};
    let markdown = `# ${label.title}\n\n> ${arb.quizUiEducationalNotice}\n\n`;
    for (const topic of topics) {
      assert(arb[titleKeys[topic.topicId]], `Missing topic title: ${locale} ${topic.topicId}`);
      markdown += `## ${arb[titleKeys[topic.topicId]]}\n\n`;
      for (const [index, question] of topic.questions.entries()) {
        const key = `${topic.prefix}_q${index + 1}`;
        markdown += `### ${index + 1}. ${arb[key]}\n\n`;
        for (let option = 0; option < 4; option++) {
          markdown += `- ${'ABCD'[option]}. ${arb[`${key}_opt${option + 1}`]}\n`;
        }
        markdown += `\n**${label.answer}:** ${'ABCD'[question.correctIndex]}. ${arb[`${key}_opt${question.correctIndex + 1}`]}\n\n` +
          `**${label.explanation}:** ${arb[`${key}_explanation`]}\n\n`;
      }
    }
    fs.writeFileSync(`content/quiz/first_aid_question_bank_${locale}.md`, markdown);
  }
}

let dart = "// GENERATED by tool/generate_quiz_bank.mjs. Edit source content/ARB, then regenerate.\n" +
  "import 'package:first_aid_app/generated/l10n.dart';\nimport 'question_model.dart';\n\n" +
  'Map<String, List<Question>> generateLocalizedQuizData(S s) => {\n';
for (const topic of topics) {
  dart += `  '${topic.mapKey}': [\n`;
  for (const [index, question] of topic.questions.entries()) {
    const key = `${topic.prefix}_q${index + 1}`;
    dart += `    Question(\n      topicId: '${topic.topicId}',\n      question: s.${key},\n` +
      `      options: [${[1, 2, 3, 4].map(n => `s.${key}_opt${n}`).join(', ')}],\n` +
      `      correctIndex: ${question.correctIndex},\n      explanation: s.${key}_explanation,\n    ),\n`;
  }
  dart += '  ],\n';
}
dart += '};\n';
fs.writeFileSync('lib/src/features/core/models/auto_quiz_data.dart', dart);
console.log('Validated 230 questions in each of en/ar/ru; generated typed quiz data.');
