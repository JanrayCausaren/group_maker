// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'members_directory_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MembersDirectoryHiveModelAdapter
    extends TypeAdapter<MembersDirectoryHiveModel> {
  @override
  final typeId = 1;

  @override
  MembersDirectoryHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MembersDirectoryHiveModel(
      id: fields[0] as String,
      name: fields[1] as String,
      gender: fields[2] as Gender?,
    );
  }

  @override
  void write(BinaryWriter writer, MembersDirectoryHiveModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.gender);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MembersDirectoryHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
