// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:kingtide_challenge/core/application/stores/favorite_stores/favorite_store.dart'
    as _i42;
import 'package:kingtide_challenge/core/application/stores/home_stores/characters_filter_store.dart'
    as _i975;
import 'package:kingtide_challenge/core/application/stores/home_stores/characters_store.dart'
    as _i467;
import 'package:kingtide_challenge/core/core.dart' as _i728;
import 'package:kingtide_challenge/core/infrastructure/services/api_service_impl.dart'
    as _i754;
import 'package:kingtide_challenge/core/infrastructure/services/local_storage_service_impl.dart'
    as _i1067;
import 'package:kingtide_challenge/core/navigation/app_router.dart' as _i843;
import 'package:kingtide_challenge/core/navigation/main_route_provider.dart'
    as _i835;
import 'package:kingtide_challenge/core/navigation/route_provider.dart'
    as _i433;
import 'package:kingtide_challenge/inject/modules/app_module.dart' as _i453;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    gh.factory<_i835.MainRouteProvider>(() => _i835.MainRouteProvider());
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => appModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i975.CharactersFilterStore>(
      () => _i975.CharactersFilterStore(),
    );
    gh.lazySingleton<List<_i728.RouteProvider>>(
      () => appModule.routeProviders(),
    );
    gh.lazySingleton<_i728.ApiService>(() => _i754.ApiServiceImpl());
    gh.singleton<_i467.CharactersStore>(
      () => _i467.CharactersStore(apiService: gh<_i728.ApiService>()),
    );
    gh.singleton<_i843.AppRouter>(
      () => _i843.AppRouter(gh<List<_i433.RouteProvider>>()),
    );
    gh.lazySingleton<_i728.LocalStorageService>(
      () =>
          _i1067.LocalStorageServiceImpl(prefs: gh<_i460.SharedPreferences>()),
    );
    gh.singleton<_i42.FavoriteStores>(
      () => _i42.FavoriteStores(localStorage: gh<_i728.LocalStorageService>()),
    );
    return this;
  }
}

class _$AppModule extends _i453.AppModule {}
