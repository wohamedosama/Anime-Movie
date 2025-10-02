import 'package:anime_moive/features/upgrade_plan/presentation/widgets/card_subuscrbtion_container.dart';
import 'package:anime_moive/features/upgrade_plan/presentation/widgets/title_and_subtitle_for_details_screen.dart';
import 'package:anime_moive/features/upgrade_plan/presentation/widgets/upgrade_plan_headline.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../home/presentation/widgets/linear_gradient_container.dart';
import '../../../home/presentation/widgets/star_background_image.dart';

enum SubscriptionType { monthly, annually }

class UpgradePlan extends StatefulWidget {
  const UpgradePlan({super.key});

  @override
  State<UpgradePlan> createState() => _UpgradePlanState();
}

class _UpgradePlanState extends State<UpgradePlan> {
  SubscriptionType? selectedSubscription;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 600,
              child: Stack(
                children: [
                  const CustomLinearGradientContainer(),
                  const StarBackgroundImage(),
                  const StarBackgroundImage(right: 240, top: -120),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const SizedBox(height: 30),
                        const UpgradePlanHeadline(),
                        const SizedBox(height: 10),
                        Image.asset(
                          'assets/images/RocketBoy.png',
                          fit: BoxFit.cover,
                          width: 300,
                          height: 300,
                        ),
                        const SizedBox(height: 5),
                        const TitleAndSubTitleForDetailsScreen(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CardSubscribtionContainer(
                      onTap: () {
                        setState(() {
                          selectedSubscription = SubscriptionType.monthly;
                        });
                      },
                      price: '\$5 USD /',
                      title: 'Monthly',
                      subTitle: 'Include Family Sharing',
                      period: 'Month',
                      isSelected:
                          selectedSubscription == SubscriptionType.monthly,
                    ),
                    const SizedBox(height: 12),
                    CardSubscribtionContainer(
                      onTap: () {
                        setState(() {
                          selectedSubscription = SubscriptionType.annually;
                        });
                      },
                      price: '\$50 USD /',
                      title: 'Annually',
                      subTitle: 'Include Family Sharing',
                      period: 'Year',
                      isSelected:
                          selectedSubscription == SubscriptionType.annually,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: CustomElevatedButton(
                text: 'Continue ',
                backgroundColor: selectedSubscription != null
                    ? AppColors.primaryColor
                    : Colors.grey,
                onPressed: selectedSubscription != null ? () {} : null,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
