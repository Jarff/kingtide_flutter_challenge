import 'dart:convert';
import 'package:kingtide_challenge/core/core.dart';
import 'package:mobx/mobx.dart';
import 'package:injectable/injectable.dart';

part 'favorite_store.g.dart';

@singleton
class FavoriteStores = FavoriteStoresBase with _$FavoriteStores;

abstract class FavoriteStoresBase with Store {
  final LocalStorageService _localStorage;
  static const String _favoritesKey = 'favorite_characters';

  FavoriteStoresBase({required LocalStorageService localStorage}) : _localStorage = localStorage {
    loadFavorites();
  }

  @observable
  ObservableList<Character> favorites = ObservableList<Character>();

  /// Load favorites from local storage
  @action
  Future<void> loadFavorites() async {
    _localStorage
        .getString(_favoritesKey)
        .fold(
          (failure) {
            print('Error loading favorites: ${failure.message}');
            favorites = ObservableList<Character>();
          },
          (favoritesJson) {
            if (favoritesJson != null) {
              try {
                final List<dynamic> decoded = json.decode(favoritesJson) as List<dynamic>;
                favorites = ObservableList<Character>.of(
                  decoded.map((item) => CharacterModel.fromMap(item as Map<String, dynamic>)),
                );
              } catch (e) {
                print('Error parsing favorites: $e');
              }
            }
          },
        );
  }

  /// Save favorites to local storage
  Future<void> _saveFavorites() async {
    final List<Map<String, dynamic>> favoritesMap = favorites
        .map((character) => (character as CharacterModel).toMap())
        .toList();

    (await _localStorage.setString(
      _favoritesKey,
      json.encode(favoritesMap),
    )).fold((failure) => print('Error saving favorites: ${failure.message}'), (_) {});
  }

  @action
  Future<void> addFavorite(Character character) async {
    if (!favorites.any((fav) => fav.id == character.id)) {
      favorites.add(character);
      await _saveFavorites();
    }
  }

  @action
  Future<void> removeFavorite(Character character) async {
    favorites.removeWhere((fav) => fav.id == character.id);
    await _saveFavorites();
  }

  @action
  Future<void> toggleFavorite(Character character) async {
    if (favorites.any((fav) => fav.id == character.id)) {
      await removeFavorite(character);
    } else {
      await addFavorite(character);
    }
  }

  bool isFavorite(Character character) {
    return favorites.any((fav) => fav.id == character.id);
  }
}
