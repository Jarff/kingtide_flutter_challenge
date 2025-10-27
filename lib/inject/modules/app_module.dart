import 'package:injectable/injectable.dart';
import 'package:kingtide_challenge/core/core.dart';
import 'package:kingtide_challenge/core/navigation/main_route_provider.dart';
import 'package:kingtide_challenge/core/navigation/route_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class AppModule {
  @lazySingleton
  List<RouteProvider> routeProviders() {
    return [MainRouteProvider()];
  }

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
