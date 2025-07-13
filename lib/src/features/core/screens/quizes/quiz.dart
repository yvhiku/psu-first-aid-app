import 'package:first_aid_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:first_aid_app/src/features/core/models/question_model.dart';

// QuizScreen shows a list of questions, handles checking answers, scoring & saving
class QuizScreen extends StatefulWidget {
  final String topicTitle;         // e.g. "CPR"
  final List<Question> questions;  // list of Question objects for the quiz

  const QuizScreen({
    required this.topicTitle,
    required this.questions,
    super.key,
  });

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _current = 0;      // current question index
  int _score = 0;        // running score
  bool _answered = false;
  int? _selectedIndex;   // which option the user tapped

  // Handles checking if selected answer is correct, updates state & proceeds
  void _check(int index) async {
    if (_answered) return;  // prevent clicking again

    setState(() {
      _answered = true;
      _selectedIndex = index;
      if (index == widget.questions[_current].correctIndex) _score++;
    });

    // wait for a second to show result before moving on
    await Future.delayed(const Duration(seconds: 1));

    if (_current < widget.questions.length - 1) {
      // move to next question
      setState(() {
        _current++;
        _answered = false;
        _selectedIndex = null;
      });
    } else {
      // end of quiz: save and show result dialog
      _saveScore();
      _showResult();
    }
  }

  // Save the score locally with a unique key
  void _saveScore() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('${widget.topicTitle}_score', _score);
  }

  // Shows a result dialog with the final score
  void _showResult() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(S.of(context).quizcompleted, textAlign: TextAlign.center),
        content: Text(
          '${S.of(context).yourscore} $_score / ${widget.questions.length}',
          textAlign: TextAlign.center,
        ),
        actions: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // close dialog
                Navigator.of(context).pop(); // go back from quiz
              },
              child: Text(S.of(context).tOK),
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
            return FadeTransition(
              opacity: anim,
              child: ScaleTransition(scale: anim, child: child),
            );
          },
          // The key makes sure it rebuilds on each question change
          child: Column(
            key: ValueKey(_current),
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Question count
              Text(
                'Question ${_current + 1} of $total',
                style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
              ),
              const SizedBox(height: 8),

              // Actual question text
              Text(
                q.question,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),

              // Build list of options
              ...List.generate(q.options.length, (i) {
                Color bgColor = Colors.white;

                // Color the options if answered
                if (_answered && _selectedIndex != null) {
                  if (i == q.correctIndex) {
                    bgColor = Colors.green.shade100; // correct answer
                  } else if (i == _selectedIndex) {
                    bgColor = Colors.red.shade100;   // wrong selection
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
