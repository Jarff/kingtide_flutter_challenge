import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter/material.dart';

part 'species_enum.g.dart';

class SpeciesEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: 'HUMAN')
  static const SpeciesEnum human = _$human;
  @BuiltValueEnumConst(wireName: 'ROBOT')
  static const SpeciesEnum robot = _$robot;
  @BuiltValueEnumConst(wireName: 'HEAD')
  static const SpeciesEnum head = _$head;
  @BuiltValueEnumConst(wireName: 'ALIEN')
  static const SpeciesEnum alien = _$alien;
  @BuiltValueEnumConst(wireName: 'MUTANT')
  static const SpeciesEnum mutant = _$mutant;
  @BuiltValueEnumConst(wireName: 'MONSTER')
  static const SpeciesEnum monster = _$monster;
  @BuiltValueEnumConst(wireName: 'UNKNOWN')
  static const SpeciesEnum unknown = _$unknown;

  const SpeciesEnum._(super.name);

  Color get color => switch (this) {
    SpeciesEnum.human => Colors.blue,
    SpeciesEnum.robot => Colors.red,
    SpeciesEnum.head => Colors.green,
    SpeciesEnum.alien => Colors.purple,
    SpeciesEnum.mutant => Colors.orange,
    SpeciesEnum.monster => Colors.brown,
    SpeciesEnum.unknown => Colors.grey,
    _ => Colors.grey,
  };

  static BuiltSet<SpeciesEnum> get values => _$values;
  static SpeciesEnum valueOf(String name) => _$valueOf(name);

  String toDisplayValue() {
    return switch (this) {
      SpeciesEnum.human => 'Human',
      SpeciesEnum.robot => 'Robot',
      SpeciesEnum.head => 'Head',
      SpeciesEnum.alien => 'Alien',
      SpeciesEnum.mutant => 'Mutant',
      SpeciesEnum.monster => 'Monster',
      SpeciesEnum.unknown => 'Unknown',
      _ => 'Unknown',
    };
  }

  static Serializer<SpeciesEnum> get serializer => _$speciesEnumSerializer;
}
