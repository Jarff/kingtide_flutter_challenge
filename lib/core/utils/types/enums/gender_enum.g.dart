// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gender_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GenderEnum _$male = const GenderEnum._('male');
const GenderEnum _$female = const GenderEnum._('female');
const GenderEnum _$unknown = const GenderEnum._('unknown');

GenderEnum _$valueOf(String name) {
  switch (name) {
    case 'male':
      return _$male;
    case 'female':
      return _$female;
    case 'unknown':
      return _$unknown;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GenderEnum> _$values = BuiltSet<GenderEnum>(const <GenderEnum>[
  _$male,
  _$female,
  _$unknown,
]);

Serializer<GenderEnum> _$genderEnumSerializer = _$GenderEnumSerializer();

class _$GenderEnumSerializer implements PrimitiveSerializer<GenderEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'male': 'MALE',
    'female': 'FEMALE',
    'unknown': 'UNKNOWN',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'MALE': 'male',
    'FEMALE': 'female',
    'UNKNOWN': 'unknown',
  };

  @override
  final Iterable<Type> types = const <Type>[GenderEnum];
  @override
  final String wireName = 'GenderEnum';

  @override
  Object serialize(
    Serializers serializers,
    GenderEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  GenderEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => GenderEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
