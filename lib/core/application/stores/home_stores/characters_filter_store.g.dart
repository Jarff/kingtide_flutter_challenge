// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters_filter_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CharactersFilterStore on CharactersFilterStoreBase, Store {
  late final _$filterAtom = Atom(
    name: 'CharactersFilterStoreBase.filter',
    context: context,
  );

  @override
  ApiFilter get filter {
    _$filterAtom.reportRead();
    return super.filter;
  }

  @override
  set filter(ApiFilter value) {
    _$filterAtom.reportWrite(value, super.filter, () {
      super.filter = value;
    });
  }

  late final _$currentPageAtom = Atom(
    name: 'CharactersFilterStoreBase.currentPage',
    context: context,
  );

  @override
  int get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(int value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  late final _$totalPagesAtom = Atom(
    name: 'CharactersFilterStoreBase.totalPages',
    context: context,
  );

  @override
  int? get totalPages {
    _$totalPagesAtom.reportRead();
    return super.totalPages;
  }

  @override
  set totalPages(int? value) {
    _$totalPagesAtom.reportWrite(value, super.totalPages, () {
      super.totalPages = value;
    });
  }

  late final _$CharactersFilterStoreBaseActionController = ActionController(
    name: 'CharactersFilterStoreBase',
    context: context,
  );

  @override
  void setFilter(ApiFilter filter) {
    final _$actionInfo = _$CharactersFilterStoreBaseActionController
        .startAction(name: 'CharactersFilterStoreBase.setFilter');
    try {
      return super.setFilter(filter);
    } finally {
      _$CharactersFilterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearFilter() {
    final _$actionInfo = _$CharactersFilterStoreBaseActionController
        .startAction(name: 'CharactersFilterStoreBase.clearFilter');
    try {
      return super.clearFilter();
    } finally {
      _$CharactersFilterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void nextPage() {
    final _$actionInfo = _$CharactersFilterStoreBaseActionController
        .startAction(name: 'CharactersFilterStoreBase.nextPage');
    try {
      return super.nextPage();
    } finally {
      _$CharactersFilterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetPage() {
    final _$actionInfo = _$CharactersFilterStoreBaseActionController
        .startAction(name: 'CharactersFilterStoreBase.resetPage');
    try {
      return super.resetPage();
    } finally {
      _$CharactersFilterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
filter: ${filter},
currentPage: ${currentPage},
totalPages: ${totalPages}
    ''';
  }
}
