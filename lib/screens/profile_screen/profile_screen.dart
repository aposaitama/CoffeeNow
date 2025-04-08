import 'package:coffee_now/screens/auth/providers/auth_provider.dart';
import 'package:coffee_now/screens/home_screen/user_provider.dart';
import 'package:coffee_now/screens/profile_screen/widgets/cutom_gray_button.dart';
import 'package:coffee_now/screens/profile_screen/widgets/profile_page_list_item_tile.dart';
import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authNotifier = ref.watch(authNotifierProvider.notifier);
    final user = ref.watch(userProvider).value;
    final userAvatar = user?.avatar?.url ?? '';
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SafeArea(
                bottom: false,
                child: CircleAvatar(
                  radius: 40.0,
                  backgroundColor: AppColors.nudeColor,
                  child: Transform.rotate(
                    angle: 3.1416,
                    child: CircleAvatar(
                      radius: 35.0,
                      backgroundImage: userAvatar.isEmpty
                          ? const AssetImage(
                              'lib/assets/icons/profile_image.png',
                            )
                          : NetworkImage('http://localhost:1337$userAvatar')
                              as ImageProvider,
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
              // GestureDetector(
              //   onTap: () {
              //     authNotifier.logout();
              //     ref.refresh(authNotifierProvider);
              //     context.go('/login');
              //   },
              //   child: const Text(
              //     'logout',
              //   ),
              // ),
              ProfilePageListItemTile(
                onTap: () => context.push('/edit_account'),
                pageTitle: 'Edit Account info',
                imgUrl: 'lib/assets/icons/Edit.svg',
              ),
              const SizedBox(
                height: 24.0,
              ),
              ProfilePageListItemTile(
                onTap: () => context.push('/address_info'),
                pageTitle: 'Address Info',
                imgUrl: 'lib/assets/icons/Location_profile.svg',
              ),
              const SizedBox(
                height: 24.0,
              ),

              ProfilePageListItemTile(
                onTap: () => context.push('/settings'),
                pageTitle: 'Settings',
                imgUrl: 'lib/assets/icons/Setting.svg',
              ),
              const SizedBox(
                height: 24.0,
              ),
              ProfilePageListItemTile(
                onTap: () => context.push('/privpolicy'),
                pageTitle: 'Privacy Policy',
                imgUrl: 'lib/assets/icons/Document_profile.svg',
              ),
              const SizedBox(
                height: 24.0,
              ),
              ProfilePageListItemTile(
                onTap: () => context.push('/about'),
                pageTitle: 'About Coffee Now Apps',
                imgUrl: 'lib/assets/icons/Info Square.svg',
              ),
              const SizedBox(
                height: 28.0,
              ),
              GestureDetector(
                onTap: () {
                  authNotifier.logout();

                  ref.invalidate(authNotifierProvider);
                  context.go('/login');
                },
                child: const CutomGrayButton(
                  buttonText: 'Logout',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
