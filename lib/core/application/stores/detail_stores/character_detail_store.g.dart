// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_detail_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CharacterDetailStore on CharacterDetailStoreBase, Store {
  late final _$characterAtom = Atom(
    name: 'CharacterDetailStoreBase.character',
    context: context,
  );

  @override
  Character? get character {
    _$characterAtom.reportRead();
    return super.character;
  }

  @override
  set character(Character? value) {
    _$characterAtom.reportWrite(value, super.character, () {
      super.character = value;
    });
  }

  late final _$mediaItemAtom = Atom(
    name: 'CharacterDetailStoreBase.mediaItem',
    context: context,
  );

  @override
  MediaItem? get mediaItem {
    _$mediaItemAtom.reportRead();
    return super.mediaItem;
  }

  @override
  set mediaItem(MediaItem? value) {
    _$mediaItemAtom.reportWrite(value, super.mediaItem, () {
      super.mediaItem = value;
    });
  }

  late final _$isLoadingAtom = Atom(
    name: 'CharacterDetailStoreBase.isLoading',
    context: context,
  );

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$fetchDataAsyncAction = AsyncAction(
    'CharacterDetailStoreBase.fetchData',
    context: context,
  );

  @override
  Future<void> fetchData(int id) {
    return _$fetchDataAsyncAction.run(() => super.fetchData(id));
  }

  @override
  String toString() {
    return '''
character: ${character},
mediaItem: ${mediaItem},
isLoading: ${isLoading}
    ''';
  }
}
