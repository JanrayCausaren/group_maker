// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Directory _$DirectoryFromJson(Map<String, dynamic> json) => _Directory(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String?,
  directoryType: json['directoryType'] as String,
  members:
      (json['members'] as List<dynamic>?)
          ?.map((e) => MembersDirectory.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$DirectoryToJson(_Directory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'directoryType': instance.directoryType,
      'members': instance.members,
    };
