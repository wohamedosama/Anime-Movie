import 'package:flutter/material.dart';

import 'core/routes/app_router.dart';
import 'core/routes/routes.dart';

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
