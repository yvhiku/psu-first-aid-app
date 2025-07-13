// Simple data model to represent a quiz question
class Question {
  final String question;       // The question text
  final List<String> options;  // List of possible answer options
  final int correctIndex;      // The index in 'options' that is correct

  Question({
    required this.question,
    required this.options,
    required this.correctIndex,
  });
}
