import 'package:anime_moive/features/home/presentation/widgets/build_tab_widget.dart';
import 'package:flutter/material.dart';

class AnimeTypeListView extends StatefulWidget {
  const AnimeTypeListView({super.key});

  @override
  State<AnimeTypeListView> createState() => _AnimeTypeListViewState();
}

List<String> movieType = [
  'All',
  'Popular',
  'Trending',
  'New Releases',
  'Top Rated',
];

int selectedTabIndex = 0;

class _AnimeTypeListViewState extends State<AnimeTypeListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedTabIndex = index;
              });
            },
            child: BuildTab(
              isSelected: selectedTabIndex == index,
              text: movieType[index],
            ),
          );
        },
        itemCount: movieType.length,
      ),
    );
  }
}
