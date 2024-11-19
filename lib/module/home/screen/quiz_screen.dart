import 'package:ditech_crm/module/home/widget/custom_quiz_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz"),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CustomQuizCard(
              question: "Phnom Penh is in Cambodia",
            ),
            CustomQuizCard(
              question: "The sun is a star.",
            ),
            CustomQuizCard(
              question: "Penguins can fly.",
              isMultipleSelect: true,
            ),
            CustomQuizCard(
              question: "Fish breathe underwater using their lungs.",
            ),
            CustomQuizCard(
              question: "Bananas grow on trees.",
            ),
            CustomQuizCard(
              question: "Elephants are the largest land animals on Earth.",
            ),
            Gap(20),
          ],
        ),
      ),
    );
  }
}
