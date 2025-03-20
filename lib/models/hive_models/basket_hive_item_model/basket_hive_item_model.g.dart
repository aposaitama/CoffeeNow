// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_hive_item_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BasketItemHiveModelAdapter extends TypeAdapter<BasketItemHiveModel> {
  @override
  final int typeId = 2;

  @override
  BasketItemHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BasketItemHiveModel(
      shopID: fields[0] as String,
      documentId: fields[1] as String,
      price: fields[2] as double,
      productName: fields[3] as String,
      productDescription: fields[4] as String,
      productImage: fields[5] as CoffeeShopImageHiveModel,
      instructions: (fields[6] as List).cast<ProductInstructionHiveModel>(),
      selectedOptions: (fields[7] as Map).cast<String, String>(),
      productCount: fields[8] as int,
    );
  }

  @override
  void write(BinaryWriter writer, BasketItemHiveModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.shopID)
      ..writeByte(1)
      ..write(obj.documentId)
      ..writeByte(2)
      ..write(obj.price)
      ..writeByte(3)
      ..write(obj.productName)
      ..writeByte(4)
      ..write(obj.productDescription)
      ..writeByte(5)
      ..write(obj.productImage)
      ..writeByte(6)
      ..write(obj.instructions)
      ..writeByte(7)
      ..write(obj.selectedOptions)
      ..writeByte(8)
      ..write(obj.productCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BasketItemHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
