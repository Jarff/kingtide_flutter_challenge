import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kingtide_challenge/core/core.dart';
import 'package:kingtide_challenge/core/routes.dart';

class CharacterCard extends StatelessWidget {
  final Character character;

  const CharacterCard({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Material(
          color: ColorName.colorOnSecondary,
          borderRadius: BorderRadius.circular(12),
          child: InkWell(
            onTap: () {
              context.push(Routes.characterDetailWithId(character.id.toString()));
            },
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  // Image on the left
                  CachedImageWidget(imageUrl: character.image, width: 80, height: 80, fit: BoxFit.cover),
                  const SizedBox(width: 16),
                  // Content in the middle
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 4,
                      children: [
                        Text(character.name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        StatusBadge(status: character.status),
                        SpeciesBadge(species: character.species),
                      ],
                    ),
                  ),
                  // Favorite button on the right
                  FavoriteButton(character: character),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
