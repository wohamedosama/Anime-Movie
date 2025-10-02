import 'package:flutter/material.dart';

import '../../features/details/presentation/screen/details_screen.dart';
import '../../features/home/data/anime_model.dart';
import '../../features/home/presentation/screen/home_screen.dart';
import '../../features/home/presentation/screen/nav_bar.dart';
import '../../features/upgrade_plan/presentation/screen/upgrade_plan.dart';
import 'routes.dart';

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
