import 'package:dartz/dartz.dart';
import 'package:kingtide_challenge/core/core.dart';

/// Service for managing local storage (SharedPreferences)
abstract class LocalStorageService {
  /// Get a string value from storage
  Either<UnknownFailure, String?> getString(String key);

  /// Set a string value to storage
  Future<Either<UnknownFailure, bool>> setString(String key, String value);

  /// Remove a value from storage
  Future<Either<UnknownFailure, bool>> remove(String key);

  /// Clear all values from storage
  Future<Either<UnknownFailure, bool>> clear();

  /// Reload preferences from disk
  Future<Either<UnknownFailure, void>> reload();
}
