// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directory_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DirectoryHiveModelAdapter extends TypeAdapter<DirectoryHiveModel> {
  @override
  final typeId = 0;

  @override
  DirectoryHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DirectoryHiveModel(
      id: fields[0] as String,
      title: fields[1] as String,
      description: fields[2] as String?,
      directoryType: fields[3] as String,
      members: (fields[4] as List?)?.cast<MembersDirectoryHiveModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, DirectoryHiveModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.directoryType)
      ..writeByte(4)
      ..write(obj.members);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DirectoryHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
