// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'species_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SpeciesEnum _$human = const SpeciesEnum._('human');
const SpeciesEnum _$robot = const SpeciesEnum._('robot');
const SpeciesEnum _$head = const SpeciesEnum._('head');
const SpeciesEnum _$alien = const SpeciesEnum._('alien');
const SpeciesEnum _$mutant = const SpeciesEnum._('mutant');
const SpeciesEnum _$monster = const SpeciesEnum._('monster');
const SpeciesEnum _$unknown = const SpeciesEnum._('unknown');

SpeciesEnum _$valueOf(String name) {
  switch (name) {
    case 'human':
      return _$human;
    case 'robot':
      return _$robot;
    case 'head':
      return _$head;
    case 'alien':
      return _$alien;
    case 'mutant':
      return _$mutant;
    case 'monster':
      return _$monster;
    case 'unknown':
      return _$unknown;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SpeciesEnum> _$values = BuiltSet<SpeciesEnum>(
  const <SpeciesEnum>[
    _$human,
    _$robot,
    _$head,
    _$alien,
    _$mutant,
    _$monster,
    _$unknown,
  ],
);

Serializer<SpeciesEnum> _$speciesEnumSerializer = _$SpeciesEnumSerializer();

class _$SpeciesEnumSerializer implements PrimitiveSerializer<SpeciesEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'human': 'HUMAN',
    'robot': 'ROBOT',
    'head': 'HEAD',
    'alien': 'ALIEN',
    'mutant': 'MUTANT',
    'monster': 'MONSTER',
    'unknown': 'UNKNOWN',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'HUMAN': 'human',
    'ROBOT': 'robot',
    'HEAD': 'head',
    'ALIEN': 'alien',
    'MUTANT': 'mutant',
    'MONSTER': 'monster',
    'UNKNOWN': 'unknown',
  };

  @override
  final Iterable<Type> types = const <Type>[SpeciesEnum];
  @override
  final String wireName = 'SpeciesEnum';

  @override
  Object serialize(
    Serializers serializers,
    SpeciesEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SpeciesEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SpeciesEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
