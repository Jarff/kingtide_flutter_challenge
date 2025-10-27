import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:kingtide_challenge/core/core.dart';
import 'package:kingtide_challenge/environment_config.dart';

@LazySingleton(as: ApiService)
class ApiServiceImpl implements ApiService {
  @override
  Future<Either<UnknownFailure, CharactersResponse>> getCharacters({ApiFilter? filter}) async {
    try {
      String url = '${EnvironmentConfig.futurama_api_url}/characters';

      // Add filter parameters if provided
      if (filter != null && filter.hasFilters) {
        url += filter.toQueryString();
      }

      final response = await http.get(Uri.parse(url));
      final parsedBody = jsonDecode(response.body);

      return right(CharactersResponse.fromMap(parsedBody));
    } catch (e) {
      print(e);
      return left(UnknownFailure.fromException(e));
    }
  }

  @override
  Future<Either<UnknownFailure, Character>> getCharacter(int id) async {
    try {
      final response = await http.get(Uri.parse('${EnvironmentConfig.futurama_api_url}/characters/$id'));
      final parsedBody = jsonDecode(response.body);
      return right(CharacterModel.fromMap(parsedBody as Map<String, dynamic>));
    } catch (e) {
      print(e);
      return left(UnknownFailure.fromException(e));
    }
  }

  @override
  Future<Either<UnknownFailure, MediaItem>> getMediaItem(String name) async {
    try {
      final response = await http.get(
        Uri.parse('${EnvironmentConfig.omdb_api_url}/?t=$name&apikey=${EnvironmentConfig.omdb_api_key}'),
      );
      final parsedBody = jsonDecode(response.body);
      return right(MediaItemModel.fromMap(parsedBody as Map<String, dynamic>));
    } catch (e) {
      print(e);
      return left(UnknownFailure.fromException(e));
    }
  }
}
