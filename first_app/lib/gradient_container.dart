import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 129, 163, 209),
            Color.fromARGB(255, 2, 13, 40),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Text(
          'Welcome to Gradient Container',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
