import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kingtide_challenge/core/core.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Implementation of LocalStorageService using SharedPreferences
@LazySingleton(as: LocalStorageService)
class LocalStorageServiceImpl implements LocalStorageService {
  final SharedPreferences _prefs;

  LocalStorageServiceImpl({required SharedPreferences prefs}) : _prefs = prefs;

  @override
  Either<UnknownFailure, String?> getString(String key) {
    try {
      return right(_prefs.getString(key));
    } catch (e) {
      return left(UnknownFailure.fromException(e));
    }
  }

  @override
  Future<Either<UnknownFailure, bool>> setString(String key, String value) async {
    try {
      final result = await _prefs.setString(key, value);
      return right(result);
    } catch (e) {
      return left(UnknownFailure.fromException(e));
    }
  }

  @override
  Future<Either<UnknownFailure, bool>> remove(String key) async {
    try {
      final result = await _prefs.remove(key);
      return right(result);
    } catch (e) {
      return left(UnknownFailure.fromException(e));
    }
  }

  @override
  Future<Either<UnknownFailure, bool>> clear() async {
    try {
      final result = await _prefs.clear();
      return right(result);
    } catch (e) {
      return left(UnknownFailure.fromException(e));
    }
  }

  @override
  Future<Either<UnknownFailure, void>> reload() async {
    try {
      await _prefs.reload();
      return right(null);
    } catch (e) {
      return left(UnknownFailure.fromException(e));
    }
  }
}
