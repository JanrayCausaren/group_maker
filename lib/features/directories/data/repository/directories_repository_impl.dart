import 'package:group_maker/core/contracts/directories_repository.dart';
import 'package:group_maker/features/directories/data/models/directory_hive_model.dart';
import 'package:group_maker/features/directories/data/models/members_directory_hive_model.dart';
import 'package:group_maker/features/directories/data/services/directories_hive_service.dart';
import 'package:group_maker/features/directories/domain/entities/directory.dart';
import 'package:group_maker/features/directories/domain/entities/members_directory.dart';

/// Implements [DirectoriesRepository] using local Hive storage.
/// Maps between [DirectoryHiveModel] and [Directory] domain entity.
class DirectoriesRepositoryImpl implements DirectoriesRepository {
  final DirectoriesHiveService _hiveService;

  DirectoriesRepositoryImpl({required DirectoriesHiveService hiveService})
      : _hiveService = hiveService;

  // --- Mappers ---

  /// Maps a [MembersDirectoryHiveModel] to a [MembersDirectory] domain entity.
  MembersDirectory _toDomainMember(MembersDirectoryHiveModel model) {
    return MembersDirectory(
      id: model.id,
      name: model.name,
      gender: model.gender,
    );
  }

  /// Maps a [Directory] domain entity to a [MembersDirectoryHiveModel].
  MembersDirectoryHiveModel _toHiveMember(MembersDirectory entity) {
    return MembersDirectoryHiveModel(
      id: entity.id,
      name: entity.name,
      gender: entity.gender,
    );
  }

  /// Maps a [DirectoryHiveModel] to a [Directory] domain entity.
  Directory _toDomain(DirectoryHiveModel model) {
    return Directory(
      id: model.id,
      title: model.title,
      description: model.description,
      directoryType: model.directoryType,
      members: model.members.map(_toDomainMember).toList(),
    );
  }

  /// Maps a [Directory] domain entity to a [DirectoryHiveModel].
  DirectoryHiveModel _toHive(Directory entity) {
    return DirectoryHiveModel(
      id: entity.id,
      title: entity.title,
      description: entity.description,
      directoryType: entity.directoryType,
      members: entity.members.map(_toHiveMember).toList(),
    );
  }

  // --- Repository methods ---

  @override
  Future<List<Directory>> getAllDirectories() async {
    final models = await _hiveService.getAll();
    return models.map(_toDomain).toList();
  }

  @override
  Future<void> saveDirectory(Directory directory) async {
    await _hiveService.save(_toHive(directory));
  }

  @override
  Future<void> deleteDirectory(String id) async {
    await _hiveService.delete(id);
  }

  @override
  Future<Directory?> getDirectoryById(String id) async {
    final model = await _hiveService.getById(id);
    if (model == null) return null;
    return _toDomain(model);
  }
}