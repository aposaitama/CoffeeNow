// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_instruction_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductInstructionHiveModelAdapter
    extends TypeAdapter<ProductInstructionHiveModel> {
  @override
  final int typeId = 3;

  @override
  ProductInstructionHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductInstructionHiveModel(
      instructionsTitle: fields[0] as String,
      instructionsElems: (fields[1] as List).cast<InstructionsElemHiveModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, ProductInstructionHiveModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.instructionsTitle)
      ..writeByte(1)
      ..write(obj.instructionsElems);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductInstructionHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
