import 'package:anime_moive/core/theme/app_colors.dart';
import 'package:anime_moive/core/widgets/custom_text_widget.dart';
import 'package:anime_moive/features/home/presentation/widgets/anime_type_list_view.dart';
import 'package:anime_moive/features/home/presentation/widgets/linear_gradient_container.dart';
import 'package:anime_moive/features/home/presentation/widgets/star_background_image.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Stack(
          //  fit: StackFit.expand,
          children: [
            CustomLinearGradientContainer(),
            StarBackgroundImage(),

            Padding(
              padding: EdgeInsets.only(left: 14.0, top: 24, bottom: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Where Anime Comes Alive!',
                    color: AppColors.navyColor,
                  ),
                  SizedBox(height: 24),
                  AnimeTypeListView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
