import 'package:flutter/material.dart';

class MyStepper extends StatefulWidget {
  const MyStepper({super.key});

  @override
  State<MyStepper> createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Stepper"),
      ),
      body: Center(
        child: Stepper(
          steps: const [
            Step(
              title: Text("Step 1"),
              content: Text("Welcome to our App"),
            ),
            Step(
              title: Text("Step 2"),
              content: Text("Are you Enjoy, then Continue"),
            ),
            Step(
              title: Text("Step 3"),
              content: Text("You are in Final Step. Don't want then Cancel IT"),
            ),
          ],
          onStepTapped: (int newIndex) {
            setState(() {
              _currentStep = newIndex;
            });
          },
          currentStep: _currentStep,
          //Continue operation
          onStepContinue: () {
            if (_currentStep != 2) {
              setState(() {
                _currentStep += 1; // It means currentStep = currentStep + 1
              });
            }
          },
          //Cancel Operation
          onStepCancel: () {
            if (_currentStep != 0) {
              setState(() {
                _currentStep -= 1; // It means currentStep = currentStep - 1
              });
            }
          },
        ),
      ),
    );
  }
}
