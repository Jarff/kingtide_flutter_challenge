import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kingtide_challenge/core/core.dart';
import 'package:kingtide_challenge/inject/app_injector.dart';

class FavoritesView extends StatefulWidget {
  const FavoritesView({super.key});

  @override
  State<FavoritesView> createState() => _FavoritesViewState();
}

class _FavoritesViewState extends State<FavoritesView> {
  late final FavoriteStores favoriteStore;

  @override
  void initState() {
    super.initState();
    favoriteStore = getIt<FavoriteStores>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorName.surface,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context)),
        title: const Text('Favorites'),
      ),
      body: SafeArea(
        child: Observer(
          builder: (context) {
            // Empty State
            if (favoriteStore.favorites.isEmpty) {
              return const Center(child: Text('No favorites yet'));
            }

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: ListView.builder(
                itemCount: favoriteStore.favorites.length,
                itemBuilder: (context, index) {
                  final character = favoriteStore.favorites[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: CharacterCard(character: character),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
