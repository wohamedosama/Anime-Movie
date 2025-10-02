import 'package:flutter/material.dart';

import '../../../../core/theme/app_images.dart';
import '../../../home/data/model/anime_model.dart';
import 'build_views_details_and_count_of_sessons.dart';

class MovieStatsRow extends StatelessWidget {
  const MovieStatsRow({super.key, required this.animeModel});
  final AnimeModel animeModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: BuildViewsDetailsAndCountOfSessons(
            iconPath: Assets.assetsSvgsEyesIcons,
            text: '${animeModel.view}M views',
          ),
        ),
        Expanded(
          child: BuildViewsDetailsAndCountOfSessons(
            iconPath: Assets.assetsSvgsClapIcons,
            text: '${animeModel.clapCount}K clap',
          ),
        ),
        Expanded(
          child: BuildViewsDetailsAndCountOfSessons(
            iconPath: Assets.assetsSvgsSessonIcon,
            text: '${animeModel.seasonCount} Seasons',
          ),
        ),
      ],
    );
  }
}
