import 'package:kingtide_challenge/core/core.dart';
import 'package:dartz/dartz.dart';

abstract class ApiService {
  Future<Either<UnknownFailure, CharactersResponse>> getCharacters({ApiFilter? filter});
  Future<Either<UnknownFailure, Character>> getCharacter(int id);
  Future<Either<UnknownFailure, MediaItem>> getMediaItem(String name);
}
