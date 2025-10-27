// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StatusEnum _$alive = const StatusEnum._('alive');
const StatusEnum _$dead = const StatusEnum._('dead');
const StatusEnum _$unknown = const StatusEnum._('unknown');

StatusEnum _$valueOf(String name) {
  switch (name) {
    case 'alive':
      return _$alive;
    case 'dead':
      return _$dead;
    case 'unknown':
      return _$unknown;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StatusEnum> _$values = BuiltSet<StatusEnum>(const <StatusEnum>[
  _$alive,
  _$dead,
  _$unknown,
]);

Serializer<StatusEnum> _$statusEnumSerializer = _$StatusEnumSerializer();

class _$StatusEnumSerializer implements PrimitiveSerializer<StatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'alive': 'ALIVE',
    'dead': 'DEAD',
    'unknown': 'UNKNOWN',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ALIVE': 'alive',
    'DEAD': 'dead',
    'UNKNOWN': 'unknown',
  };

  @override
  final Iterable<Type> types = const <Type>[StatusEnum];
  @override
  final String wireName = 'StatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    StatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
