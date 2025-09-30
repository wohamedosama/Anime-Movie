import 'package:anime_moive/core/theme/app_colors.dart';
import 'package:anime_moive/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CategorizeMoive extends StatelessWidget {
  const CategorizeMoive({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildCategorizeMovieType(text: 'Dark Fantasy'),
        _buildCategorizeMovieType(text: 'Action'),
        _buildCategorizeMovieType(text: 'Adventure'),
      ],
    );
  }

  Container _buildCategorizeMovieType({required String text}) {
    return Container(
      width: 110,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF6B5B95).withAlpha(85),
            blurRadius: 1,
          ),
        ],
      ),
      child: Center(
        child: CustomText(
          text: text,
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
