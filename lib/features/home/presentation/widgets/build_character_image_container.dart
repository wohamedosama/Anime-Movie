import 'package:flutter/material.dart';

class BuildCharacterImageContiner extends StatelessWidget {
  const BuildCharacterImageContiner({super.key, required this.characterImage});
  final String characterImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 92,
      width: 92,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(characterImage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
