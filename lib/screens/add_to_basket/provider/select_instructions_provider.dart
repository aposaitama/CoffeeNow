import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'select_instructions_provider.g.dart';

@riverpod
class SelectedInstructions extends _$SelectedInstructions {
  @override
  Map<String, String> build() => {};

  void selectOption(String instructionTitle, String selectedOption) {
    state = {...state, instructionTitle: selectedOption};
  }

  bool isSelected(String instructionTitle, String option) {
    return state[instructionTitle] == option;
  }
}
