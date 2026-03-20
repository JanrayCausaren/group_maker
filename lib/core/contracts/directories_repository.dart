import 'package:group_maker/features/directories/domain/entities/directory.dart';

/// Abstract contract for all directory data operations.
/// Implemented by [DirectoriesRepositoryImpl].
abstract class DirectoriesRepository {
  /// Returns all directories.
  Future<List<Directory>> getAllDirectories();

  /// Saves a new directory or updates an existing one.
  Future<void> saveDirectory(Directory directory);

  /// Deletes a directory by its [id].
  Future<void> deleteDirectory(String id);

  /// Returns a single directory by [id], or null if not found.
  Future<Directory?> getDirectoryById(String id);
}