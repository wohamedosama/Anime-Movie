import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/custom_text_widget.dart';
import '../../data/model/anime_model.dart';
import 'build_rating_container.dart';

class ListViewItemToDisplayTheMovieCover extends StatelessWidget {
  const ListViewItemToDisplayTheMovieCover({
    super.key,
    required this.animeModel,
  });
  final AnimeModel animeModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          child: _buildAnimeCoverImage(),
        ),
        const SizedBox(height: 8),
        CustomText(
          text: animeModel.name,
          fontSize: 18,
          color: AppColors.navyColor,
        ),
        const SizedBox(height: 4),
        CustomText(
          text: animeModel.animeType,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColors.greyColor,
        ),
      ],
    );
  }

  ClipRRect _buildAnimeCoverImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 325,
        width: 245,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(animeModel.coverImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            BuildRatingContainer(ratingText: animeModel.rating.toString()),
          ],
        ),
      ),
    );
  }
}
