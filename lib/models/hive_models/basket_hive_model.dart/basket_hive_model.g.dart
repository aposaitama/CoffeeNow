// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BasketHiveModelAdapter extends TypeAdapter<BasketHiveModel> {
  @override
  final int typeId = 1;

  @override
  BasketHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BasketHiveModel(
      userID: fields[0] as String,
      basketItem: (fields[1] as List).cast<BasketItemHiveModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, BasketHiveModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.userID)
      ..writeByte(1)
      ..write(obj.basketItem);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BasketHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
