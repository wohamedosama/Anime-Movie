import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // SvgPicture.asset(
            //   'assets/images/home_background.svg',
            //   fit: BoxFit.cover,
            //   width: double.infinity,
            //   height: double.infinity,
            // ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text('Where Anime Comes Alive!')],
            ),
          ],
        ),
      ),
    );
  }
}
