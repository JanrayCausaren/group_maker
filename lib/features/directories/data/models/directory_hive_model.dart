import 'package:hive_ce/hive.dart';
import 'package:group_maker/features/directories/data/models/members_directory_hive_model.dart';

part 'directory_hive_model.g.dart';

/// Hive model for a directory.
/// TypeId 0 is reserved for this model — do not reuse.
@HiveType(typeId: 0)
class DirectoryHiveModel extends HiveObject {
  /// Unique identifier for the directory.
  @HiveField(0)
  final String id;

  /// Title of the directory.
  @HiveField(1)
  final String title;

  /// Optional description of the directory.
  @HiveField(2)
  final String? description;

  /// Type of directory — either 'local' or 'online'.
  @HiveField(3)
  final String directoryType;

  /// List of members belonging to this directory.
  @HiveField(4)
  final List<MembersDirectoryHiveModel> members;

  DirectoryHiveModel({
    required this.id,
    required this.title,
    this.description,
    required this.directoryType,
    List<MembersDirectoryHiveModel>? members,
  }) : members = members ?? [];
}