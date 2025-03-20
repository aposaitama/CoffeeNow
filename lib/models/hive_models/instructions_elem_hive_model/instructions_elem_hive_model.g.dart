// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instructions_elem_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InstructionsElemHiveModelAdapter
    extends TypeAdapter<InstructionsElemHiveModel> {
  @override
  final int typeId = 4;

  @override
  InstructionsElemHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return InstructionsElemHiveModel(
      instructionsName: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, InstructionsElemHiveModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.instructionsName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InstructionsElemHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
