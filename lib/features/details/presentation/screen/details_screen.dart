import 'package:anime_moive/core/theme/app_colors.dart';
import 'package:anime_moive/core/theme/app_images.dart';
import 'package:anime_moive/core/widgets/custom_divider.dart';
import 'package:anime_moive/features/details/presentation/widgets/action_buttons.dart';
import 'package:anime_moive/features/details/presentation/widgets/catogrize_movie_bar.dart';
import 'package:anime_moive/features/details/presentation/widgets/movie_backgroung_image_details_screen.dart';
import 'package:anime_moive/features/details/presentation/widgets/movie_stats_row.dart';
import 'package:anime_moive/features/details/presentation/widgets/movie_title_section.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.navyColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MovieBackgroungImageinDetailsScreen(
                image: Assets.assetsImagesDetectiveconan,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    CategorizeMoive(),
                    SizedBox(height: 20),
                    CustomDivider(),
                    MovieStatsRow(),
                    CustomDivider(),
                    SizedBox(height: 20),
                    MovieTitleSection(),
                    SizedBox(height: 20),
                    ActionButtons(),
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
