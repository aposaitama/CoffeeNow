import 'dart:io';

import 'package:coffee_now/screens/auth/login_screen/widget/custom_button.dart';
import 'package:coffee_now/screens/home_screen/user_provider.dart';
import 'package:coffee_now/screens/profile_screen/edit_account_info_screen/provider/update_info_provider.dart';
import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

final selectedImageProvider = StateProvider<File?>((ref) => null);

class EditAccountInfoScreen extends ConsumerWidget {
  const EditAccountInfoScreen({super.key});

  Future<void> _pickImage(WidgetRef ref) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      ref.read(selectedImageProvider.notifier).state = File(pickedImage.path);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedImage = ref.watch(selectedImageProvider);
    final user = ref.watch(userProvider).value;
    final userAvatar = user?.avatar?.url ?? '';
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Container(
            width: 32.0,
            height: 32.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black.withOpacity(0.5),
            ),
            child: Transform.rotate(
              angle: 90 * 3.1415927 / 180,
              child: SvgPicture.asset(
                fit: BoxFit.scaleDown,
                'lib/assets/icons/Arrow - Down 2.svg',
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleChildScrollView(
              child: Column(children: [
                GestureDetector(
                  onTap: () => _pickImage(ref),
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundColor: AppColors.nudeColor,
                    child: Transform.rotate(
                      angle: 3.1416,
                      child: CircleAvatar(
                        radius: 35.0,
                        backgroundImage: selectedImage != null
                            ? FileImage(selectedImage)
                            : (userAvatar.isNotEmpty
                                ? NetworkImage(
                                        'http://localhost:1337$userAvatar')
                                    as ImageProvider
                                : const AssetImage(
                                    'lib/assets/icons/profile_image.png',
                                  )),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Text(
                    user?.username ?? '',
                    style: AppFonts.poppinsMedium.copyWith(
                      fontSize: 14.0,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 50.0,
              ),
              child: GestureDetector(
                onTap: () {
                  if (selectedImage != null) {
                    ref.watch(updateInfoProvider(
                        selectedImage, (user?.id ?? '').toString()));
                  }
                },
                child: const CustomButton(
                  buttonText: 'Update Info',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
