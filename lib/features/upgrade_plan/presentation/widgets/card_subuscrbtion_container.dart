import '../../../../core/theme/app_colors.dart';
import 'package:anime_moive/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CardSubscribtionContainer extends StatelessWidget {
  const CardSubscribtionContainer({
    super.key,
    required this.isSelected,

    required this.title,
    required this.price,
    required this.period,
    required this.subTitle,
    this.onTap,
  });
  final bool isSelected;

  final String title;
  final String price;
  final String period;
  final String subTitle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.navyColor : AppColors.whiteColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Image.asset('assets/images/Files_Folders.png'),
            const SizedBox(width: 22),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    fontSize: 16,
                    text: title,
                    color: isSelected
                        ? AppColors.whiteColor
                        : AppColors.navyColor,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      CustomText(
                        fontSize: 16,
                        text: price,
                        color: isSelected
                            ? AppColors.whiteColor
                            : AppColors.navyColor,
                      ),
                      CustomText(
                        fontSize: 16,
                        text: period,
                        color: AppColors.lightPurble,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),

                  CustomText(
                    fontSize: 16,
                    text: subTitle,
                    color: AppColors.lightPurble,
                  ),
                ],
              ),
            ),
            Container(
              width: 32,
              height: 32,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: Icon(
                Icons.check_circle_outlined,
                size: 32,
                color: isSelected
                    ? AppColors.lightBlueColor
                    : AppColors.navyColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
