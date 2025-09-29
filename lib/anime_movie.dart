import 'package:anime_moive/core/routes/app_router.dart';
import 'package:anime_moive/core/routes/routes.dart';
import 'package:flutter/material.dart';

class AnimeMovie extends StatelessWidget {
  const AnimeMovie({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Raleway', brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.navBar,
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
