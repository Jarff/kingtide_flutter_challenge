import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kingtide_challenge/core/core.dart';

class GenderFilterBottomSheet extends StatelessWidget {
  final CharactersFilterStore filterStore;

  const GenderFilterBottomSheet({super.key, required this.filterStore});

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
                'Filter by Gender',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: ColorName.colorOnSurface),
              ),
              const SizedBox(height: 20),
              ...GenderEnum.values.map(
                (gender) => ListTile(
                  title: Text(gender.toDisplayValue(), style: const TextStyle(color: ColorName.colorOnSurface)),
                  // leading: Icon(Icons.person, color: ColorName.secondary),
                  trailing: filterStore.filter.gender == gender ? Icon(Icons.check, color: ColorName.secondary) : null,
                  onTap: () {
                    filterStore.setFilter(filterStore.filter.copyWith(gender: gender));
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
