import 'package:kingtide_challenge/core/core.dart';
import 'package:kingtide_challenge/core/routes.dart';
import 'package:injectable/injectable.dart';

@injectable
class MainRouteProvider extends RouteProvider {
  @override
  Iterable<(String, RouteBuilder)> routes() {
    return [
      (Routes.home, (context, params) => HomeView()),
      (
        Routes.characterDetail,
        (context, params) {
          final characterId = params.params['id']!;
          return CharacterDetailView(characterId: characterId);
        },
      ),
      (Routes.favorites, (context, params) => FavoritesView()),
    ];
  }
}
