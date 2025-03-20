import 'package:coffee_now/models/detailed_product/detailed_product_model.dart';
import 'package:coffee_now/screens/add_to_basket/add_to_basket.dart';
import 'package:coffee_now/screens/add_to_basket/provider/select_instructions_provider.dart';
import 'package:coffee_now/screens/add_to_basket/widgets/product_options_item_tile.dart';
import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductInstructionItemTile extends ConsumerWidget {
  final ProductInstruction instruction;
  const ProductInstructionItemTile({super.key, required this.instruction});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Map<String, String> selectedInstructions =
        ref.watch(selectedInstructionsProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 12.0,
        ),
        Text(
          instruction.instructionsTitle,
          style: AppFonts.poppinsMedium.copyWith(
            fontSize: 14.0,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(0.0),
          itemCount: instruction.instructions_elems!.length,
          itemBuilder: (context, index) {
            final instructionElem = instruction.instructions_elems![index];
            final isSelected =
                selectedInstructions[instruction.instructionsTitle] ==
                    instructionElem.instructionsName;
            return GestureDetector(
              onTap: () {},
              child: ProductOptionsItemTile(
                isSelected: isSelected,
                optionsTitle: instructionElem.instructionsName,
                onCirclePressed: () {
                  ref.read(selectedInstructionsProvider.notifier).selectOption(
                        instruction.instructionsTitle,
                        instructionElem.instructionsName,
                      );
                },
              ),
            );
          },
        ),
        Container(
          height: 8.0,
          color: Theme.of(context).colorScheme.onPrimaryContainer,
        ),
      ],
    );
  }
}
