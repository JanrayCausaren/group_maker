import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:group_maker/features/directories/domain/entities/members_directory.dart';

part 'directory.freezed.dart';
part 'directory.g.dart';

@freezed
abstract class Directory with _$Directory {
  const factory Directory({
    required String id,
    required String title,
    String? description,
    required String directoryType,
    @Default([]) List<MembersDirectory> members,
  }) = _Directory;

  factory Directory.fromJson(Map<String, dynamic> json) =>
      _$DirectoryFromJson(json);
}
