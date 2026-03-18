// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'members_directory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MembersDirectory _$MembersDirectoryFromJson(Map<String, dynamic> json) =>
    _MembersDirectory(
      id: json['id'] as String,
      name: json['name'] as String,
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
    );

Map<String, dynamic> _$MembersDirectoryToJson(_MembersDirectory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': _$GenderEnumMap[instance.gender],
    };

const _$GenderEnumMap = {Gender.male: 'male', Gender.female: 'female'};
