import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kingtide_challenge/core/core.dart';

class SpeciesFilterBottomSheet extends StatelessWidget {
  final CharactersFilterStore filterStore;

  const SpeciesFilterBottomSheet({super.key, required this.filterStore});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Filter by Species',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: ColorName.colorOnSurface),
              ),
              const SizedBox(height: 20),
              ...SpeciesEnum.values.map(
                (species) => ListTile(
                  title: Text(species.toDisplayValue(), style: const TextStyle(color: ColorName.colorOnSurface)),
                  // leading: Icon(Icons.pets, color: ColorName.secondary),
                  trailing: filterStore.filter.species == species ? Icon(Icons.check, color: ColorName.secondary) : null,
                  onTap: () {
                    filterStore.setFilter(filterStore.filter.copyWith(species: species));
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
