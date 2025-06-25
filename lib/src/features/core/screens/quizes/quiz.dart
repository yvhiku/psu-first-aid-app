import 'package:first_aid_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:first_aid_app/src/features/core/models/question_model.dart';

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
  int? _selectedIndex;

  void _check(int index) async {
    if (_answered) return;
    setState(() {
      _answered = true;
      _selectedIndex = index;
      if (index == widget.questions[_current].correctIndex) _score++;
    });

    await Future.delayed(const Duration(seconds: 1));

    if (_current < widget.questions.length - 1) {
      setState(() {
        _current++;
        _answered = false;
        _selectedIndex = null;
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
        title:  Text(S.of(context).quizcompleted, textAlign: TextAlign.center),
        content: Text(
          '${S.of(context).yourscore} $_score / ${widget.questions.length}',
          textAlign: TextAlign.center,
        ),
        actions: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop(); 
                Navigator.of(context).pop(); 
              },
              child:  Text(S.of(context).tOK),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final q = widget.questions[_current];
    final total = widget.questions.length;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.topicTitle),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: LinearProgressIndicator(
            value: (_current + 1) / total,
            backgroundColor: Colors.grey.shade300,
            valueColor: AlwaysStoppedAnimation(Theme.of(context).colorScheme.secondary),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder: (child, anim) {
            return FadeTransition(opacity: anim, child: ScaleTransition(scale: anim, child: child));
          },
          child: Column(
            key: ValueKey(_current),
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Question ${_current + 1} of $total',
                style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
              ),
              const SizedBox(height: 8),
              Text(
                q.question,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              ...List.generate(q.options.length, (i) {
                Color bgColor = Colors.white;
                if (_answered && _selectedIndex != null) {
                  if (i == q.correctIndex) {
                    bgColor = Colors.green.shade100;
                  } else if (i == _selectedIndex) {
                    bgColor = Colors.red.shade100;
                  }
                }
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(12),
                      onTap: () => _check(i),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                        decoration: BoxDecoration(
                          color: bgColor,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey.shade300),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Text(
                          q.options[i],
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
