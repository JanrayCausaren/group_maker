import 'package:hive_ce_flutter/hive_ce_flutter.dart';
import 'package:group_maker/features/directories/data/models/directory_hive_model.dart';

/// Raw Hive box operations for directories.
/// This class only reads and writes to the Hive box —
/// no business logic here.
class DirectoriesHiveService {
  static const String _boxName = 'directories';

  /// Opens the Hive box. Must be called before any operation.
  Future<Box<DirectoryHiveModel>> _openBox() async {
    return await Hive.openBox<DirectoryHiveModel>(_boxName);
  }

  /// Returns all directories stored in the box.
  Future<List<DirectoryHiveModel>> getAll() async {
    final box = await _openBox();
    return box.values.toList();
  }

  /// Saves a directory. Uses [directory.id] as the key.
  Future<void> save(DirectoryHiveModel directory) async {
    final box = await _openBox();
    await box.put(directory.id, directory);
  }

  /// Deletes a directory by its [id].
  Future<void> delete(String id) async {
    final box = await _openBox();
    await box.delete(id);
  }

  /// Returns a single directory by [id], or null if not found.
  Future<DirectoryHiveModel?> getById(String id) async {
    final box = await _openBox();
    return box.get(id);
  }
}