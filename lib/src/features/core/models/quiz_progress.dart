// Increment when the question bank changes in a way that invalidates scores.
const quizBankVersion = 2;

String quizScoreKey(String topicId) =>
    'quiz_v${quizBankVersion}_${topicId}_score';
