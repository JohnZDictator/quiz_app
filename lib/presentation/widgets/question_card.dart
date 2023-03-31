import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/presentation/models/models.dart';
import 'package:quiz_app/presentation/screens/screens.dart';

class QuestionCard extends StatefulWidget {
  const QuestionCard({
    super.key,
    required this.question,
    required this.index,
    required this.questionLength,
  });

  final Question question;
  final int index;
  final int questionLength;

  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  late List<int?> choiceAnswer;

  @override
  void initState() {
    super.initState();
    choiceAnswer = List.generate(widget.questionLength, (index) => null);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.question.question,
              style: const TextStyle(
                color: kBackgroundColor,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              onTap: () {
                setState(() {
                  choiceAnswer[widget.index] = 0;
                });
              },
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 2),
                borderRadius: BorderRadius.circular(16),
              ),
              title: Text(
                'A. ${widget.question.options[0]}',
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Radio(
                fillColor: MaterialStateColor.resolveWith(
                  (states) => Colors.grey[400]!,
                ),
                focusColor:
                    MaterialStateColor.resolveWith((states) => Colors.green),
                value: 0,
                groupValue: choiceAnswer[widget.index],
                onChanged: (value) {
                  choiceAnswer[widget.index] = value ?? 0;
                },
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              onTap: () {
                setState(() {
                  choiceAnswer[widget.index] = 1;
                });
              },
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 2),
                borderRadius: BorderRadius.circular(16),
              ),
              title: Text(
                'B. ${widget.question.options[1]}',
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Radio(
                fillColor: MaterialStateColor.resolveWith(
                  (states) => Colors.grey[400]!,
                ),
                value: 1,
                groupValue: choiceAnswer[widget.index],
                onChanged: (value) {
                  choiceAnswer[widget.index] = value ?? 1;
                },
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              onTap: () {
                setState(() {
                  choiceAnswer[widget.index] = 2;
                });
              },
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 2),
                borderRadius: BorderRadius.circular(16),
              ),
              title: Text(
                'C. ${widget.question.options[2]}',
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Radio(
                fillColor: MaterialStateColor.resolveWith(
                  (states) => Colors.grey[400]!,
                ),
                value: 2,
                groupValue: choiceAnswer[widget.index],
                onChanged: (value) {
                  choiceAnswer[widget.index] = value ?? 2;
                },
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              onTap: () {
                setState(() {
                  choiceAnswer[widget.index] = 3;
                });
              },
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 2),
                borderRadius: BorderRadius.circular(16),
              ),
              title: Text(
                'D. ${widget.question.options[3]}',
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Radio(
                activeColor: kBackgroundColor,
                fillColor: MaterialStateColor.resolveWith(
                  (states) => Colors.grey[400]!,
                ),
                value: 3,
                groupValue: choiceAnswer[widget.index],
                onChanged: (value) {
                  choiceAnswer[widget.index] = value ?? 3;
                },
              ),
            ),
            const Spacer(),
            widget.index == widget.questionLength - 1
                ? Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        int score = calculateScore(choiceAnswer);
                        // Todo: Navigate to the result screen
                        // Todo: pass the score and the number of questions as parameter to result screen
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 20),
                        decoration: BoxDecoration(
                          color: kBackgroundColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Submit'.toUpperCase(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }

  int calculateScore(List<int?> answers) {
    // Todo: calculate how many questions were answered correctly
    // Todo: return the calculated result
    return 0;
  }
}
