import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';
  var counter = 0;
  void rollDice() {
    setState(() {
      counter++;
      if (counter % 6 == 0) {
        activeDiceImage = 'assets/images/dice-6.png';
      } else if (counter % 6 == 5) {
        activeDiceImage = 'assets/images/dice-5.png';
      } else if (counter % 6 == 4) {
        activeDiceImage = 'assets/images/dice-4.png';
      } else if (counter % 6 == 3) {
        activeDiceImage = 'assets/images/dice-3.png';
      } else if (counter % 6 == 2) {
        activeDiceImage = 'assets/images/dice-2.png';
      } else if (counter % 6 == 1) {
        activeDiceImage = 'assets/images/dice-1.png';
      } else {
        activeDiceImage = 'assets/images/dice-1.png';
      }
    });
    print('Dice rolled!');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activeDiceImage, width: 200, height: 200),
        const SizedBox(height: 40),
        TextButton(
          onPressed: rollDice,
          child: const Text('Roll Dice'),
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 30),
          ),
        ),
      ],
    );
  }
}
