import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currDiceNo = 2;

  void rollDice() {
    setState(() {
      currDiceNo = randomizer.nextInt(6) + 1;// Generate a random number between 1 and 6
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/dice_images/dice-$currDiceNo.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
            //padding: const EdgeInsets.only(top: 20),
          ),
          child: const Text('Roll Dice!'),
        )
      ],
    );
  }
}
