// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CharacterModel> _$characterModelSerializer =
    _$CharacterModelSerializer();

class _$CharacterModelSerializer
    implements StructuredSerializer<CharacterModel> {
  @override
  final Iterable<Type> types = const [CharacterModel, _$CharacterModel];
  @override
  final String wireName = 'CharacterModel';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CharacterModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'gender',
      serializers.serialize(
        object.gender,
        specifiedType: const FullType(GenderEnum),
      ),
      'status',
      serializers.serialize(
        object.status,
        specifiedType: const FullType(StatusEnum),
      ),
      'species',
      serializers.serialize(
        object.species,
        specifiedType: const FullType(SpeciesEnum),
      ),
      'createdAt',
      serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      ),
    ];
    Object? value;
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    value = object.isFavorite;
    if (value != null) {
      result
        ..add('isFavorite')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(bool)),
        );
    }
    return result;
  }

  @override
  CharacterModel deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CharacterModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )!
                  as int;
          break;
        case 'name':
          result.name =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'gender':
          result.gender =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(GenderEnum),
                  )!
                  as GenderEnum;
          break;
        case 'status':
          result.status =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(StatusEnum),
                  )!
                  as StatusEnum;
          break;
        case 'species':
          result.species =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SpeciesEnum),
                  )!
                  as SpeciesEnum;
          break;
        case 'createdAt':
          result.createdAt =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )!
                  as DateTime;
          break;
        case 'image':
          result.image =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'isFavorite':
          result.isFavorite =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$CharacterModel extends CharacterModel {
  @override
  final int id;
  @override
  final String name;
  @override
  final GenderEnum gender;
  @override
  final StatusEnum status;
  @override
  final SpeciesEnum species;
  @override
  final DateTime createdAt;
  @override
  final String? image;
  @override
  final bool? isFavorite;

  factory _$CharacterModel([void Function(CharacterModelBuilder)? updates]) =>
      (CharacterModelBuilder()..update(updates))._build();

  _$CharacterModel._({
    required this.id,
    required this.name,
    required this.gender,
    required this.status,
    required this.species,
    required this.createdAt,
    this.image,
    this.isFavorite,
  }) : super._();
  @override
  CharacterModel rebuild(void Function(CharacterModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CharacterModelBuilder toBuilder() => CharacterModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CharacterModel &&
        id == other.id &&
        name == other.name &&
        gender == other.gender &&
        status == other.status &&
        species == other.species &&
        createdAt == other.createdAt &&
        image == other.image &&
        isFavorite == other.isFavorite;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, species.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, isFavorite.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CharacterModel')
          ..add('id', id)
          ..add('name', name)
          ..add('gender', gender)
          ..add('status', status)
          ..add('species', species)
          ..add('createdAt', createdAt)
          ..add('image', image)
          ..add('isFavorite', isFavorite))
        .toString();
  }
}

class CharacterModelBuilder
    implements Builder<CharacterModel, CharacterModelBuilder> {
  _$CharacterModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GenderEnum? _gender;
  GenderEnum? get gender => _$this._gender;
  set gender(GenderEnum? gender) => _$this._gender = gender;

  StatusEnum? _status;
  StatusEnum? get status => _$this._status;
  set status(StatusEnum? status) => _$this._status = status;

  SpeciesEnum? _species;
  SpeciesEnum? get species => _$this._species;
  set species(SpeciesEnum? species) => _$this._species = species;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  bool? _isFavorite;
  bool? get isFavorite => _$this._isFavorite;
  set isFavorite(bool? isFavorite) => _$this._isFavorite = isFavorite;

  CharacterModelBuilder();

  CharacterModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _gender = $v.gender;
      _status = $v.status;
      _species = $v.species;
      _createdAt = $v.createdAt;
      _image = $v.image;
      _isFavorite = $v.isFavorite;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CharacterModel other) {
    _$v = other as _$CharacterModel;
  }

  @override
  void update(void Function(CharacterModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CharacterModel build() => _build();

  _$CharacterModel _build() {
    final _$result =
        _$v ??
        _$CharacterModel._(
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'CharacterModel',
            'id',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'CharacterModel',
            'name',
          ),
          gender: BuiltValueNullFieldError.checkNotNull(
            gender,
            r'CharacterModel',
            'gender',
          ),
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'CharacterModel',
            'status',
          ),
          species: BuiltValueNullFieldError.checkNotNull(
            species,
            r'CharacterModel',
            'species',
          ),
          createdAt: BuiltValueNullFieldError.checkNotNull(
            createdAt,
            r'CharacterModel',
            'createdAt',
          ),
          image: image,
          isFavorite: isFavorite,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
