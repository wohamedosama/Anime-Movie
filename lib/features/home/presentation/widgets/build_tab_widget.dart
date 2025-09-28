import 'package:anime_moive/core/theme/app_colors.dart';
import 'package:anime_moive/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class BuildTab extends StatelessWidget {
  const BuildTab({super.key, required this.isSelected, required this.text});
  final bool isSelected;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primaryColor : AppColors.whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: CustomText(
        text: text,
        color: isSelected ? AppColors.whiteColor : AppColors.primaryColor,
        fontSize: 15,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
