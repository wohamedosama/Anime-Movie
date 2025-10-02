import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_images.dart';
import 'home_screen.dart';
import '../../../screens/library_screen.dart';
import '../../../screens/search_screen.dart';
import '../../../screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class NavBarItems {
  static List<PersistentBottomNavBarItem> navBarItem = [
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        Assets.assetsSvgsHomeIcon,
        colorFilter: const ColorFilter.mode(
          AppColors.greyColor,
          BlendMode.srcIn,
        ),
      ),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      title: 'Home',
      activeColorPrimary: AppColors.primaryColor,
      inactiveColorPrimary: AppColors.greyColor,
      activeColorSecondary: AppColors.whiteColor,
      inactiveColorSecondary: AppColors.whiteColor,
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Assets.assetsSvgsLibraryIcon),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      title: 'Library',
      activeColorPrimary: AppColors.primaryColor,
      inactiveColorPrimary: AppColors.greyColor,
      activeColorSecondary: AppColors.whiteColor,
      inactiveColorSecondary: AppColors.whiteColor,
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Assets.assetsSvgsSearchIcon),
      title: 'Search',
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      activeColorPrimary: AppColors.primaryColor,
      inactiveColorPrimary: AppColors.greyColor,
      activeColorSecondary: AppColors.whiteColor,
      inactiveColorSecondary: AppColors.whiteColor,
    ),

    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Assets.assetsSvgsSettingIcon),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      title: 'settings',
      activeColorPrimary: AppColors.primaryColor,
      inactiveColorPrimary: AppColors.greyColor,
      activeColorSecondary: AppColors.whiteColor,
      inactiveColorSecondary: AppColors.whiteColor,
    ),
  ];
  static List<Widget> screess() {
    return const [
      HomeScreen(),
      LibraryScreen(),
      SearchScreen(),
      //BrowseScreen(),
      SettingsScreen(),
    ];
  }
}
