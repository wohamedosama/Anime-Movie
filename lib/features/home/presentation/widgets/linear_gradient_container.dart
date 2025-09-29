import 'package:flutter/material.dart';

class CustomLinearGradientContainer extends StatelessWidget {
  const CustomLinearGradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            colors: [Color(0xffD3D6ff), Colors.white],
          ),
        ),
      ),
    );
  }
}
