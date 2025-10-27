import 'package:kingtide_challenge/core/core.dart';
import 'package:mobx/mobx.dart';
import 'package:kingtide_challenge/inject/app_injector.dart';
import 'package:injectable/injectable.dart';

part 'characters_store.g.dart';

@singleton
class CharactersStore = CharactersStoreBase with _$CharactersStore;

abstract class CharactersStoreBase with Store {
  final ApiService apiService;
  late CharactersFilterStore _filterStore;
  late ReactionDisposer _pageReaction;

  CharactersStoreBase({required this.apiService}) {
    _filterStore = getIt<CharactersFilterStore>();
    _setupPageReaction();
  }

  void _setupPageReaction() {
    _pageReaction = reaction((_) => _filterStore.currentPage, (int page) {
      // Trigger fetchCharacters only when page changes
      fetchCharacters(filter: _filterStore.filter.copyWith(page: page), preserveCurrent: true);
    });
  }

  void dispose() {
    _pageReaction();
  }

  @observable
  ObservableList<Character> characters = ObservableList<Character>();

  @observable
  bool isLoading = false;

  @observable
  bool isLoadingMore = false;

  @action
  Future<void> fetchCharacters({ApiFilter? filter, bool preserveCurrent = false}) async {
    if (preserveCurrent) {
      isLoadingMore = true;
      final response = await apiService.getCharacters(filter: filter);
      response.fold(
        (failure) => null, // Handle error if needed
        (charactersResponse) {
          final newCharacters = charactersResponse.items.toList();
          _filterStore.totalPages = charactersResponse.pages;
          characters.addAll(newCharacters);
        },
      );
      // Reset the flag after a short delay to prevent rapid triggers
      Future.delayed(const Duration(milliseconds: 1000), () {
        isLoadingMore = false;
      });
    } else {
      isLoading = true;
      final response = await apiService.getCharacters(filter: filter);
      response.fold((failure) => [], (charactersResponse) {
        _filterStore.totalPages = charactersResponse.pages;
        characters = ObservableList.of(charactersResponse.items.toList());
      });
      isLoading = false;
    }
  }
}
