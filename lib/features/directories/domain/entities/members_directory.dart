import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:group_maker/core/enums/enums.dart';

part 'members_directory.freezed.dart';
part 'members_directory.g.dart';

@freezed
abstract class MembersDirectory with _$MembersDirectory {
  const factory MembersDirectory({
    required String id,
    required String name,
    Gender? gender,
  }) = _MembersDirectory;

  factory MembersDirectory.fromJson(Map<String, dynamic> json) =>
      _$MembersDirectoryFromJson(json);
}
