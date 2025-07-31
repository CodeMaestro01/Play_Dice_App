import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

const startAlign = Alignment.topLeft;
const endAlign = Alignment.bottomRight;

class GradContainer extends StatelessWidget {
  const GradContainer({super.key, required this.listColors});

  final List<Color> listColors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: listColors,
          begin: startAlign,
          end: endAlign,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
