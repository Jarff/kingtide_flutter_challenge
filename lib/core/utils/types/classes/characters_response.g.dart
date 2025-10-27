// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CharactersResponse> _$charactersResponseSerializer =
    _$CharactersResponseSerializer();

class _$CharactersResponseSerializer
    implements StructuredSerializer<CharactersResponse> {
  @override
  final Iterable<Type> types = const [CharactersResponse, _$CharactersResponse];
  @override
  final String wireName = 'CharactersResponse';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CharactersResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'items',
      serializers.serialize(
        object.items,
        specifiedType: const FullType(BuiltList, const [
          const FullType(CharacterModel),
        ]),
      ),
      'pages',
      serializers.serialize(object.pages, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  CharactersResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CharactersResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'items':
          result.items.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType(CharacterModel),
                  ]),
                )!
                as BuiltList<Object?>,
          );
          break;
        case 'pages':
          result.pages =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )!
                  as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CharactersResponse extends CharactersResponse {
  @override
  final BuiltList<CharacterModel> items;
  @override
  final int pages;

  factory _$CharactersResponse([
    void Function(CharactersResponseBuilder)? updates,
  ]) => (CharactersResponseBuilder()..update(updates))._build();

  _$CharactersResponse._({required this.items, required this.pages})
    : super._();
  @override
  CharactersResponse rebuild(
    void Function(CharactersResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CharactersResponseBuilder toBuilder() =>
      CharactersResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CharactersResponse &&
        items == other.items &&
        pages == other.pages;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, pages.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CharactersResponse')
          ..add('items', items)
          ..add('pages', pages))
        .toString();
  }
}

class CharactersResponseBuilder
    implements Builder<CharactersResponse, CharactersResponseBuilder> {
  _$CharactersResponse? _$v;

  ListBuilder<CharacterModel>? _items;
  ListBuilder<CharacterModel> get items =>
      _$this._items ??= ListBuilder<CharacterModel>();
  set items(ListBuilder<CharacterModel>? items) => _$this._items = items;

  int? _pages;
  int? get pages => _$this._pages;
  set pages(int? pages) => _$this._pages = pages;

  CharactersResponseBuilder();

  CharactersResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _pages = $v.pages;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CharactersResponse other) {
    _$v = other as _$CharactersResponse;
  }

  @override
  void update(void Function(CharactersResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CharactersResponse build() => _build();

  _$CharactersResponse _build() {
    _$CharactersResponse _$result;
    try {
      _$result =
          _$v ??
          _$CharactersResponse._(
            items: items.build(),
            pages: BuiltValueNullFieldError.checkNotNull(
              pages,
              r'CharactersResponse',
              'pages',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CharactersResponse',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
