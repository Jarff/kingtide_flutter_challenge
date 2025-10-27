import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:kingtide_challenge/core/core.dart';

part 'characters_response.g.dart';

abstract class CharactersResponse implements Built<CharactersResponse, CharactersResponseBuilder> {
  BuiltList<CharacterModel> get items;
  int get pages;

  CharactersResponse._();
  factory CharactersResponse([void Function(CharactersResponseBuilder) updates]) = _$CharactersResponse;

  static Serializer<CharactersResponse> get serializer => _$charactersResponseSerializer;

  static CharactersResponse fromMap(Map<String, dynamic> map) {
    return coreSerializers.deserializeWith(CharactersResponse.serializer, map) as CharactersResponse;
  }
}
