import 'package:kingtide_challenge/core/core.dart';
import 'package:mobx/mobx.dart';

part 'character_detail_store.g.dart';

class CharacterDetailStore = CharacterDetailStoreBase with _$CharacterDetailStore;

abstract class CharacterDetailStoreBase with Store {
  final ApiService apiService;

  CharacterDetailStoreBase({required this.apiService});

  @observable
  Character? character;

  @observable
  MediaItem? mediaItem;

  @observable
  bool isLoading = false;

  @action
  Future<void> fetchData(int id) async {
    isLoading = true;
    await fetchCharacter(id);
    await fetchMediaItem();
    isLoading = false;
  }

  Future<void> fetchCharacter(int id) async {
    final response = await apiService.getCharacter(id);
    character = response.fold((failure) => null, (characterMapped) => characterMapped);
  }

  Future<void> fetchMediaItem() async {
    final response = await apiService.getMediaItem('Futurama');
    mediaItem = response.fold((failure) => null, (mediaItemMapped) => mediaItemMapped);
  }
}
