import 'package:anime_moive/core/theme/app_images.dart';
import 'package:anime_moive/core/widgets/custom_text_widget.dart';
import 'package:anime_moive/features/home/data/anime_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MovieTitleSection extends StatelessWidget {
  const MovieTitleSection({super.key, required this.animeModel});
  final AnimeModel animeModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(Assets.assetsSvgsFire),
            const SizedBox(width: 8),
            Expanded(
              child: CustomText(
                text: animeModel.animeName,
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: CustomText(
            text: animeModel.discreption!,
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
