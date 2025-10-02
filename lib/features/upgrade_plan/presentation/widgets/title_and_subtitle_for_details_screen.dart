import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class TitleAndSubTitleForDetailsScreen extends StatelessWidget {
  const TitleAndSubTitleForDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomText(
          color: AppColors.navyColor,
          fontSize: 24,
          text: 'Seamless Anime \n Experience, Ad-Free.',
          maxLine: 2,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 5),

        CustomText(
          color: AppColors.greyColor,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          text: 'Enjoy unlimited anime streaming without \ninterruptions.',
          maxLine: 2,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
