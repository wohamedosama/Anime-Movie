import 'package:anime_moive/core/theme/app_colors.dart';
import 'package:anime_moive/core/theme/app_images.dart';
import 'package:anime_moive/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomElevatedButton(
            backgroundColor: Color(0xff8D8998),
            svgName: Assets.assetsSvgsPreviewIcon,
            text: 'preview',
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: CustomElevatedButton(
            svgName: Assets.assetsSvgsWatchNow,
            text: 'Watch Now',
            backgroundColor: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
