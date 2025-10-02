import '../../core/theme/app_colors.dart';
import '../../core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        title: const Text('Search Screen'),
      ),
      body: const Center(
        child: CustomText(text: 'Search Screen', color: AppColors.primaryColor),
      ),
    );
  }
}
