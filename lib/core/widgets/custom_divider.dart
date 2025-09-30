import 'package:anime_moive/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: AppColors.greyColor,
      endIndent: 20,
      indent: 20,
      thickness: 2,
    );
  }
}
