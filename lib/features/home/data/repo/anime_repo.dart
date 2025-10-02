import 'package:anime_moive/features/home/data/model/anime_model.dart';
import 'package:anime_moive/features/home/logic/anime_item_list.dart';

class AnimeRepository {
  Future<List<AnimeModel>> getAnimeList() async {
    final List<AnimeModel> animes = AnimeItemList.animeITemList;
    return animes;
  }
}
