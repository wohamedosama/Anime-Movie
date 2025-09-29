import 'package:anime_moive/core/theme/app_colors.dart';
import 'package:anime_moive/core/widgets/custom_text_widget.dart';
import 'package:anime_moive/features/home/logic/anime_item_list.dart';
import 'package:anime_moive/features/home/logic/characters_item_list.dart';
import 'package:anime_moive/features/home/presentation/widgets/anime_type_list_view.dart';
import 'package:anime_moive/features/home/presentation/widgets/linear_gradient_container.dart';
import 'package:anime_moive/features/home/presentation/widgets/list_view_to_display_the_movie_cover.dart';
import 'package:anime_moive/features/home/presentation/widgets/list_view_to_display_top_characters.dart';
import 'package:anime_moive/features/home/presentation/widgets/star_background_image.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            //  fit: StackFit.expand,
            children: [
              const CustomLinearGradientContainer(),
              const StarBackgroundImage(),
              Padding(
                padding: const EdgeInsets.only(left: 14.0, top: 24, bottom: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      text: 'Where Anime Comes Alive!',
                      color: AppColors.navyColor,
                    ),
                    const SizedBox(height: 24),
                    const AnimeTypeListView(),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 400,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return ListViewItemToDisplayTheMovieCover(
                            animeModel: AnimeItemList.animeITemList[index],
                          );
                        },
                        itemCount: AnimeItemList.animeITemList.length,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const CustomText(
                      text: 'Top Characters',
                      color: AppColors.navyColor,
                    ),
                    const SizedBox(height: 12),

                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: CharactersItemList.characters.length,
                        itemBuilder: (context, index) {
                          return ListViewToDisplayTopCharacters(
                            charactersModel:
                                CharactersItemList.characters[index],
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 12),
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
