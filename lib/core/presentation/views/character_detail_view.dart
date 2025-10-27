import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kingtide_challenge/core/core.dart';
import 'package:kingtide_challenge/inject/app_injector.dart';
import 'package:kingtide_challenge/core/presentation/widgets/detail_widgets/detail_widgets.dart';

class CharacterDetailView extends StatefulWidget {
  final String characterId;

  const CharacterDetailView({super.key, required this.characterId});

  @override
  State<CharacterDetailView> createState() => _CharacterDetailViewState();
}

class _CharacterDetailViewState extends State<CharacterDetailView> {
  late final CharacterDetailStore characterDetailStore;

  @override
  void initState() {
    super.initState();
    characterDetailStore = CharacterDetailStore(apiService: getIt<ApiService>());
    characterDetailStore.fetchData(int.parse(widget.characterId));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.surface,
      appBar: AppBar(
        title: const Text('Character Details'),
        backgroundColor: ColorName.primary,
        foregroundColor: ColorName.colorOnPrimary,
        elevation: 0,
      ),
      body: Observer(
        builder: (context) {
          if (characterDetailStore.isLoading) {
            return const Center(child: CircularProgressIndicator(color: ColorName.secondary));
          }

          final character = characterDetailStore.character;
          final mediaItem = characterDetailStore.mediaItem;

          if (character == null) {
            return _buildErrorState();
          }

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                CharacterHeaderCard(character: character),
                const SizedBox(height: 20),
                CharacterDetailsSection(mediaItem: mediaItem),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildErrorState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 64, color: ColorName.secondary),
          const SizedBox(height: 16),
          Text(
            'Character not found',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: ColorName.colorOnSurface),
          ),
        ],
      ),
    );
  }
}
