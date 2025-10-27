import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter/material.dart';

part 'status_enum.g.dart';

class StatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: 'ALIVE')
  static const StatusEnum alive = _$alive;
  @BuiltValueEnumConst(wireName: 'DEAD')
  static const StatusEnum dead = _$dead;
  @BuiltValueEnumConst(wireName: 'UNKNOWN')
  static const StatusEnum unknown = _$unknown;

  const StatusEnum._(super.name);

  Color get color => switch (this) {
    StatusEnum.alive => Colors.green,
    StatusEnum.dead => Colors.redAccent,
    StatusEnum.unknown => Colors.grey,
    _ => Colors.grey,
  };

  static BuiltSet<StatusEnum> get values => _$values;
  static StatusEnum valueOf(String name) => _$valueOf(name);

  String toDisplayValue() {
    return switch (this) {
      StatusEnum.alive => 'Alive',
      StatusEnum.dead => 'Dead',
      StatusEnum.unknown => 'Unknown',
      _ => 'Unknown',
    };
  }

  static Serializer<StatusEnum> get serializer => _$statusEnumSerializer;
}
