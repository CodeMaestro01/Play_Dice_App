import 'package:flutter/material.dart';
import 'package:first_app/grad_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradContainer(
          listColors: [
            Color.fromARGB(255, 22, 6, 110),
            Color.fromARGB(255, 30, 238, 253)
          ],
        ),
      ),
    ),
  );
}
