import 'package:anime_moive/core/theme/app_colors.dart';
import 'package:anime_moive/core/widgets/custom_text_widget.dart';
import 'package:anime_moive/features/home/data/characters_model.dart';
import 'package:anime_moive/features/home/presentation/widgets/build_character_image_container.dart';
import 'package:flutter/material.dart';

class ListViewToDisplayTopCharacters extends StatelessWidget {
  const ListViewToDisplayTopCharacters({
    super.key,
    required this.charactersModel,
  });
  final CharactersModel charactersModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BuildCharacterImageContiner(
          characterImage: charactersModel.characterImage,
        ),
        const SizedBox(height: 10),
        CustomText(
          text: charactersModel.characterName,
          fontSize: 16,
          color: AppColors.navyColor,
          fontWeight: FontWeight.w600,
        ),
        const SizedBox(height: 6),
        CustomText(
          text: charactersModel.characterMovieName,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: AppColors.greyColor,
        ),
      ],
    );
  }
}
