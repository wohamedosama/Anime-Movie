import 'package:flutter/material.dart';

class MovieBackgroungImageinDetailsScreen extends StatelessWidget {
  const MovieBackgroungImageinDetailsScreen({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 500,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }
}
