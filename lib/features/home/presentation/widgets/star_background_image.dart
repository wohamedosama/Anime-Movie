import '../../../../core/theme/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StarBackgroundImage extends StatelessWidget {
  const StarBackgroundImage({super.key, this.right, this.top, this.bottom});
  final double? right;
  final double? top;
  final double? bottom;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: right ?? -240,
      top: top ?? -100,
      bottom: bottom,
      child: SvgPicture.asset(Assets.assetsSvgsStar1, height: 550, width: 550),
    );
  }
}
