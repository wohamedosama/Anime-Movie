import 'package:anime_moive/core/routes/routes.dart';
import 'package:anime_moive/features/details/presentation/screen/details_screen.dart';
import 'package:anime_moive/features/home/data/anime_model.dart';
import 'package:anime_moive/features/home/presentation/screen/home_screen.dart';
import 'package:anime_moive/features/home/presentation/screen/nav_bar.dart';
import 'package:anime_moive/features/upgrade_plan/presentation/screen/details_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.navBar:
        return MaterialPageRoute(builder: (_) => const NavBar());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.details:
        return MaterialPageRoute(
          builder: (_) =>
              DetailsScreen(anime: settings.arguments as AnimeModel),
          settings: settings,
        );
      case Routes.upgradePlan:
        return MaterialPageRoute(builder: (_) => const UpgradePlan());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route found ${settings.name}')),
          ),
        );
    }
  }
}
