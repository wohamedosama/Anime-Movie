import 'package:anime_moive/core/theme/app_images.dart';
import 'package:anime_moive/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MovieTitleSection extends StatelessWidget {
  const MovieTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(Assets.assetsSvgsFire),
            const SizedBox(width: 8),
            const Expanded(
              child: CustomText(
                text: 'Demon Slayer: Kimetsu no Yaiba follows Tanjiro',
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: CustomText(
            text:
                'A young boy named Tanjiro Kamado, who becomes a demon slayer after his family is slaughtered by demons and his younger sister Nezuko is turned into a demon.',
            maxLine: 5,
            color: Colors.white,
            fontSize: 15,
            height: 1.6,
          ),
        ),
      ],
    );
  }
}
