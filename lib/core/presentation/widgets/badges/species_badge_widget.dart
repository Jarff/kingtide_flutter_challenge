import 'package:flutter/material.dart';
import 'package:kingtide_challenge/core/core.dart';

class SpeciesBadge extends StatelessWidget {
  final SpeciesEnum species;
  const SpeciesBadge({super.key, required this.species});

  @override
  Widget build(BuildContext context) {
    return AppBadge(label: species.toDisplayValue(), color: species.color);
  }
}
