// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_hive_item_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavouriteHiveItemModelAdapter
    extends TypeAdapter<FavouriteHiveItemModel> {
  @override
  final int typeId = 7;

  @override
  FavouriteHiveItemModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavouriteHiveItemModel(
      userID: fields[0] as String,
      items: (fields[1] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, FavouriteHiveItemModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.userID)
      ..writeByte(1)
      ..write(obj.items);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavouriteHiveItemModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
