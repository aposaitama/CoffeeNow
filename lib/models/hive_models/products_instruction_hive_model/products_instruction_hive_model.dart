import 'package:coffee_now/models/detailed_product/detailed_product_model.dart';
import 'package:coffee_now/models/hive_models/instructions_elem_hive_model/instructions_elem_hive_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'products_instruction_hive_model.g.dart';

@HiveType(typeId: 3)
class ProductInstructionHiveModel {
  @HiveField(0)
  final String instructionsTitle;

  @HiveField(1)
  final List<InstructionsElemHiveModel> instructionsElems;

  ProductInstructionHiveModel({
    required this.instructionsTitle,
    required this.instructionsElems,
  });

  // Фабричный метод для конвертации из обычной модели в модель Hive
  factory ProductInstructionHiveModel.fromProductInstruction(
      ProductInstruction instruction) {
    return ProductInstructionHiveModel(
      instructionsTitle: instruction.instructionsTitle,
      instructionsElems: instruction.instructions_elems
              ?.map((e) => InstructionsElemHiveModel(
                  instructionsName: e.instructionsName))
              .toList() ??
          [], // Якщо instructions_elems == null, то повертається порожній список
    );
  }

  // Метод для конвертации модели Hive обратно в обычную модель
  ProductInstruction toProductInstruction() {
    return ProductInstruction(
      instructionsTitle: instructionsTitle,
      instructions_elems: instructionsElems
          .map((e) => InstructionsElem(instructionsName: e.instructionsName))
          .toList(),
    );
  }
}
