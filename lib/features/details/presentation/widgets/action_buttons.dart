import '../../../../core/helper/extension.dart';
import '../../../../core/routes/routes.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_images.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomElevatedButton(
            backgroundColor: Color(0xff8D8998),
            svgName: Assets.assetsSvgsPreviewIcon,
            text: 'preview',
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: CustomElevatedButton(
            onPressed: () {
              context.pushNamed(Routes.upgradePlan);
            },
            svgName: Assets.assetsSvgsWatchNow,
            text: 'Watch Now',
            backgroundColor: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
