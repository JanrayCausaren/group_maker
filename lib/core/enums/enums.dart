import 'package:hive_ce/hive.dart';

part 'enums.g.dart';

@HiveType(typeId: 2)
enum Gender {
  @HiveField(0)
  male,

  @HiveField(1)
  female,
}

/// Directory type — local means offline only, online means shareable via link.
enum DirectoryType {
  local,
  online,
}