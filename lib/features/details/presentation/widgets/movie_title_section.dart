import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/app_images.dart';
import '../../../../core/widgets/custom_text_widget.dart';
import '../../../home/data/model/anime_model.dart';

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
                text: animeModel.name,
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
            text: animeModel.description!,
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
