import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helper/extension.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/custom_text_widget.dart';

class UpgradePlanHeadline extends StatelessWidget {
  const UpgradePlanHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const CustomText(
          text: 'Upgrade Plan',
          color: AppColors.navyColor,
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
        GestureDetector(
          onTap: () => context.pop(),
          child: SvgPicture.asset(
            'assets/svgs/closeIcon.svg',
            height: 35,
            width: 35,
          ),
        ),
      ],
    );
  }
}
