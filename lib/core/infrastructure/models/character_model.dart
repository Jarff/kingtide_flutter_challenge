import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:kingtide_challenge/core/core.dart';

part 'character_model.g.dart';

abstract class CharacterModel implements Character, Built<CharacterModel, CharacterModelBuilder> {
  CharacterModel._();

  factory CharacterModel([void Function(CharacterModelBuilder) updates]) = _$CharacterModel;

  static Serializer<CharacterModel> get serializer => _$characterModelSerializer;

  static CharacterModel fromMap(Map<String, dynamic> map) {
    return coreSerializers.deserializeWith(CharacterModel.serializer, map) as CharacterModel;
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'gender': gender.name,
      'status': status.name,
      'species': species.name,
      'createdAt': createdAt.toIso8601String(),
      if (image != null) 'image': image,
      if (isFavorite != null) 'isFavorite': isFavorite,
    };
  }
}
