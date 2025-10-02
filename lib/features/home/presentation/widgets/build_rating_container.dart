import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/app_images.dart';
import '../../../../core/widgets/custom_text_widget.dart';

class BuildRatingContainer extends StatelessWidget {
  const BuildRatingContainer({super.key, required this.ratingText});
  final String ratingText;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 8,
      right: 8,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(Assets.assetsSvgsStar, height: 15, width: 15),
            const SizedBox(width: 2),
            CustomText(text: ratingText, fontSize: 12),
          ],
        ),
      ),
    );
  }
}
