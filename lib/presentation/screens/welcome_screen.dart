import 'package:flutter/material.dart';

import '../presentation.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2D334C),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Spacer(flex: 5),
              Text(
                'Let\'s Play Quiz',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              // const SizedBox(height: 10),
              // const Spacer(),
              // CustomInputField(),
              // const SizedBox(height: 10),
              Spacer(),
              Align(
                alignment: Alignment.center,
                child: StartQuizButton(),
              ),
              Spacer(flex: 5),
            ],
          ),
        ),
      ),
    );
  }
}
