import 'package:hive_ce/hive.dart';
import 'package:group_maker/core/enums/enums.dart';

part 'members_directory_hive_model.g.dart';

/// Hive model for a member inside a directory.
/// TypeId 1 is reserved for this model — do not reuse.
@HiveType(typeId: 1)
class MembersDirectoryHiveModel extends HiveObject {
  /// Unique identifier for the member.
  @HiveField(0)
  final String id;

  /// Display name of the member.
  @HiveField(1)
  final String name;

  /// Optional gender of the member, used for gender-based grouping.
  @HiveField(2)
  final Gender? gender;

  MembersDirectoryHiveModel({
    required this.id,
    required this.name,
    this.gender,
  });
}