import 'package:kingtide_challenge/core/core.dart';
import 'package:mobx/mobx.dart';
import 'package:injectable/injectable.dart';

part 'characters_filter_store.g.dart';

@LazySingleton()
class CharactersFilterStore = CharactersFilterStoreBase with _$CharactersFilterStore;

abstract class CharactersFilterStoreBase with Store {
  @observable
  ApiFilter filter = ApiFilter.empty;

  @observable
  int currentPage = 1;

  @observable
  int? totalPages;

  @action
  void setFilter(ApiFilter filter) {
    this.filter = filter;
  }

  @action
  void clearFilter() {
    filter = ApiFilter.empty;
    currentPage = 1;
  }

  @action
  void nextPage() {
    if (totalPages != null && currentPage < totalPages!) {
      currentPage++;
    }
  }

  @action
  void resetPage() {
    currentPage = 1;
  }
}
