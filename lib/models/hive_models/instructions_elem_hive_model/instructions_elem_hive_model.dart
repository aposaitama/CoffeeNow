import 'package:coffee_now/models/detailed_product/detailed_product_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'instructions_elem_hive_model.g.dart';

@HiveType(typeId: 4)
class InstructionsElemHiveModel {
  @HiveField(0)
  final String instructionsName;

  InstructionsElemHiveModel({
    required this.instructionsName,
  });

  // Фабричный метод для конвертации из обычной модели в модель Hive
  factory InstructionsElemHiveModel.fromInstructionsElem(
      InstructionsElem elem) {
    return InstructionsElemHiveModel(
      instructionsName: elem.instructionsName,
    );
  }

  // Метод для конвертации модели Hive обратно в обычную модель
  InstructionsElem toInstructionsElem() {
    return InstructionsElem(
      instructionsName: instructionsName,
    );
  }
}
