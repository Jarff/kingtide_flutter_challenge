import 'package:kingtide_challenge/core/core.dart';

abstract class Character {
  int get id;
  String get name;
  GenderEnum get gender;
  StatusEnum get status;
  SpeciesEnum get species;
  DateTime get createdAt;
  String? get image;
  bool? get isFavorite;
}
