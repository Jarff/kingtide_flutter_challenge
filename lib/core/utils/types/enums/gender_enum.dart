import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gender_enum.g.dart';

class GenderEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: 'MALE')
  static const GenderEnum male = _$male;
  @BuiltValueEnumConst(wireName: 'FEMALE')
  static const GenderEnum female = _$female;
  @BuiltValueEnumConst(wireName: 'UNKNOWN')
  static const GenderEnum unknown = _$unknown;

  const GenderEnum._(super.name);

  static BuiltSet<GenderEnum> get values => _$values;
  static GenderEnum valueOf(String name) => _$valueOf(name);

  static Serializer<GenderEnum> get serializer => _$genderEnumSerializer;

  String toDisplayValue() {
    return switch (this) {
      GenderEnum.male => 'Male',
      GenderEnum.female => 'Female',
      GenderEnum.unknown => 'Unknown',
      _ => 'Unknown',
    };
  }
}
