import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/custom_divider.dart';
import '../widgets/action_buttons.dart';
import '../widgets/catogrize_movie_bar.dart';
import '../widgets/movie_backgroung_image_details_screen.dart';
import '../widgets/movie_stats_row.dart';
import '../widgets/movie_title_section.dart';
import '../../../home/data/anime_model.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.anime});
  final AnimeModel anime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.navyColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MovieBackgroungImageinDetailsScreen(image: anime.ainmeCover),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    CategorizeMoive(animeModel: anime),
                    const SizedBox(height: 20),
                    const CustomDivider(),
                    MovieStatsRow(animeModel: anime),
                    const CustomDivider(),
                    const SizedBox(height: 20),
                    MovieTitleSection(animeModel: anime),
                    const SizedBox(height: 20),
                    const ActionButtons(),
                    const SizedBox(height: 25),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
