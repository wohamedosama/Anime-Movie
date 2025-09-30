import 'package:anime_moive/core/theme/app_images.dart';
import 'package:anime_moive/features/details/presentation/widgets/build_views_details_and_count_of_sessons.dart';
import 'package:flutter/material.dart';

class MovieStatsRow extends StatelessWidget {
  const MovieStatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: BuildViewsDetailsAndCountOfSessons(
            iconPath: Assets.assetsSvgsEyesIcons,
            text: '2.3M views',
          ),
        ),
        Expanded(
          child: BuildViewsDetailsAndCountOfSessons(
            iconPath: Assets.assetsSvgsClapIcons,
            text: '2K clap',
          ),
        ),
        Expanded(
          child: BuildViewsDetailsAndCountOfSessons(
            iconPath: Assets.assetsSvgsSessonIcon,
            text: '4 Seasons',
          ),
        ),
      ],
    );
  }
}
