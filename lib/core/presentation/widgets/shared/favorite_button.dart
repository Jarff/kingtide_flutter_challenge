import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kingtide_challenge/core/core.dart';
import 'package:kingtide_challenge/gen/colors.gen.dart';
import 'package:kingtide_challenge/inject/app_injector.dart';

class FavoriteButton extends StatefulWidget {
  final Character character;
  const FavoriteButton({super.key, required this.character});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  late final FavoriteStores favoritesStore;

  @override
  void initState() {
    super.initState();
    favoritesStore = getIt<FavoriteStores>();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        final isFavorite = favoritesStore.isFavorite(widget.character);

        return IconButton(
          onPressed: () {
            favoritesStore.toggleFavorite(widget.character);
          },
          icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border, size: 16),
          style: IconButton.styleFrom(
            backgroundColor: isFavorite
                ? ColorName.secondary.withValues(alpha: 0.1)
                : ColorName.secondary.withValues(alpha: 0.05),
            foregroundColor: isFavorite ? Colors.red : ColorName.secondary,
          ),
        );
      },
    );
  }
}
