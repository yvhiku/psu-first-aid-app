import 'package:first_aid_app/src/features/core/models/question_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class QuizScreen extends StatefulWidget {
  final String topicTitle;
  final List<Question> questions;

  const QuizScreen({required this.topicTitle, required this.questions, super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _current = 0;
  int _score = 0;
  bool _answered = false;

  void _check(int index) async {
    if (_answered) return;
    setState(() => _answered = true);

    if (index == widget.questions[_current].correctIndex) _score++;

    await Future.delayed(const Duration(seconds: 1));

    if (_current < widget.questions.length - 1) {
      setState(() {
        _current++;
        _answered = false;
      });
    } else {
      _saveScore();
      _showResult();
    }
  }

  void _saveScore() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('${widget.topicTitle}_score', _score);
  }

  void _showResult() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Quiz Completed!'),
        content: Text('Your score: $_score / ${widget.questions.length}'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('OK')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final q = widget.questions[_current];
    return Scaffold(
      appBar: AppBar(title: Text(widget.topicTitle)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(q.question, style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            ...List.generate(q.options.length, (i) {
              return GestureDetector(
                onTap: () => _check(i),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: _answered && i == q.correctIndex ? Colors.green : Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(q.options[i], style: const TextStyle(fontSize: 16)),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}