// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_history_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SearchHistoryHiveModelAdapter
    extends TypeAdapter<SearchHistoryHiveModel> {
  @override
  final int typeId = 0;

  @override
  SearchHistoryHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SearchHistoryHiveModel(
      userID: fields[0] as String,
      searchHistoryItem: (fields[1] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, SearchHistoryHiveModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.userID)
      ..writeByte(1)
      ..write(obj.searchHistoryItem);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SearchHistoryHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
