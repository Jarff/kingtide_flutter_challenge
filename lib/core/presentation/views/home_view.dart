import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kingtide_challenge/core/core.dart';
import 'package:kingtide_challenge/inject/app_injector.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  late final CharactersStore charactersStore;
  late final CharactersFilterStore charactersFilterStore;
  final ScrollController _scrollController = ScrollController();
  static const double _endReachedThreshold = 200;

  @override
  void initState() {
    super.initState();

    /// Initialize the characters store and fetch the characters
    charactersStore = CharactersStore(apiService: getIt<ApiService>())..fetchCharacters();
    charactersFilterStore = getIt<CharactersFilterStore>();

    /// Add a listener to the scroll controller to load more characters when the user scrolls to the bottom of the list
    _scrollController.addListener(_onScroll);
  }

  void _onFilterApplied(ApiFilter filter) {
    charactersStore.fetchCharacters(filter: filter);
  }

  void _onFilterCleared() {
    charactersStore.fetchCharacters();
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;

    final thresholdReached = _scrollController.position.extentAfter < _endReachedThreshold;

    if (thresholdReached && !charactersStore.isLoadingMore) {
      // Load more!
      charactersFilterStore.nextPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorName.surface,
        surfaceTintColor: Colors.transparent,
        title: const Text(''),
      ),
      drawer: AppDrawer(),
      body: SafeArea(
        child: Stack(
          children: [
            Observer(
              builder: (context) {
                // Loading state
                if (charactersStore.isLoading) {
                  return const Center(child: CircularProgressIndicator(color: Colors.white));
                }

                // Empty State
                if (charactersStore.characters.isEmpty) {
                  return const Center(child: Text('No characters found'));
                }

                return Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 28),
                        child: ListView.builder(
                          controller: _scrollController,
                          itemCount: charactersStore.characters.length,
                          itemBuilder: (context, index) {
                            final character = charactersStore.characters[index];
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Column(
                                spacing: 5,
                                children: [
                                  CharacterCard(character: character),
                                  if (index == charactersStore.characters.length - 1 && charactersStore.isLoadingMore)
                                    const Center(child: CircularProgressIndicator(color: Colors.white)),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),

            // Filter Floating Button
            FilterFloatingButton(onFilterApplied: _onFilterApplied, onFilterCleared: _onFilterCleared),
          ],
        ),
      ),
    );
  }
}
