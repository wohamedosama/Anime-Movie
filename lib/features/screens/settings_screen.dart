import 'package:anime_moive/core/theme/app_colors.dart';
import 'package:anime_moive/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        title: const Text('Settings Screen'),
      ),
      body: const Center(
        child: CustomText(
          text: 'Settings Screen',
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
