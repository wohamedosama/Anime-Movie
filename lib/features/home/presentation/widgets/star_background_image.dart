import 'package:anime_moive/core/theme/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StarBackgroundImage extends StatelessWidget {
  const StarBackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: -240,
      top: -100,
      child: SvgPicture.asset(Assets.assetsSvgsStar1, height: 550, width: 550),
    );
  }
}
