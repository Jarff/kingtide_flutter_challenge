import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:kingtide_challenge/core/core.dart';

part 'serializers.g.dart';

@SerializersFor([CharacterModel, MediaItemModel, GenderEnum, SpeciesEnum, StatusEnum, CharactersResponse])
final Serializers coreSerializers =
    (_$coreSerializers.toBuilder()
          ..addPlugin(StandardJsonPlugin())
          ..addPlugin(DateTimeSerializerPlugin()))
        .build();

class DateTimeSerializerPlugin implements SerializerPlugin {
  final bool applyEncode;
  final bool applyDecode;
  final bool nullOnInvalid;

  DateTimeSerializerPlugin({this.applyEncode = true, this.applyDecode = true, this.nullOnInvalid = true});

  @override
  Object? beforeSerialize(Object? object, FullType specifiedType) {
    return object;
  }

  @override
  Object? afterSerialize(Object? object, FullType specifiedType) {
    if ((specifiedType.root != DateTime) || !applyEncode) return object;
    return DateTime.fromMicrosecondsSinceEpoch(object as int).toUtc().toIso8601String();
  }

  @override
  Object? beforeDeserialize(Object? object, FullType specifiedType) {
    if (specifiedType.root != DateTime || !applyDecode) return object;
    try {
      if (object is num) {
        return DateTime.fromMicrosecondsSinceEpoch(object as int).microsecondsSinceEpoch;
      } else if (object is String) {
        return DateTime.parse(object).toUtc().microsecondsSinceEpoch;
      } else if (object is DateTime) {
        return object.microsecondsSinceEpoch;
      }
      return object;
    } catch (e) {
      if (nullOnInvalid) {
        return null;
      }
      rethrow;
    }
  }

  @override
  Object? afterDeserialize(Object? object, FullType specifiedType) => object;
}
