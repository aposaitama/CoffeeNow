// import 'package:coffee_now/navigation/cubit/navigation_cubit.dart';
// import 'package:coffee_now/style/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:go_router/go_router.dart';

// class CustomBottomNavBar extends StatefulWidget {
//   const CustomBottomNavBar({super.key});

//   @override
//   State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
// }

// Widget _buildSvgIcon(
//   String currentRoute,
//   String routeName,
//   String inactivePath,
//   String activePath,
// ) {
//   return SvgPicture.asset(
//     currentRoute == routeName ? activePath : inactivePath,
//   );
// }

// String _getRouteFromIndex(int currentIndex) {
//   switch (currentIndex) {
//     case 0:
//       return '/home';
//     case 1:
//       return '/search';
//     case 2:
//       return '/transactions';
//     case 3:
//       return '/profile';
//     default:
//       return '/home';
//   }
// }

// class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
//   void _onTap(index) {
//     context.read<NavigationCubit>().navigateTo(index);

//     switch (index) {
//       case 0:
//         context.go('/home');
//         break;
//       case 1:
//         context.go('/search');
//         break;
//       case 2:
//         context.go('/transactions');
//         break;
//       case 3:
//         context.go('/profile');
//         break;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<NavigationCubit, NavigationState>(
//       builder: (context, state) {
//         final currentRoute = _getRouteFromIndex(state.currentIndex);
//         return Container(
//           height: 100,
//           padding: EdgeInsets.only(
//             bottom: 24.0,
//             left: 20.0,
//             right: 20.0,
//           ),
//           child: BottomNavigationBar(
//             selectedFontSize: 0.0,
//             unselectedFontSize: 0.0,
//             backgroundColor: const Color.fromARGB(255, 100, 48, 3),
//             currentIndex: state.currentIndex,
//             showSelectedLabels: false,
//             showUnselectedLabels: false,
//             onTap: _onTap,
//             selectedItemColor: AppColors.purpleColor,
//             unselectedItemColor: AppColors.fontColor,
//             selectedLabelStyle: const TextStyle(
//               color: AppColors.purpleColor,
//               fontSize: 10.0,
//               fontWeight: FontWeight.w500,
//               fontFamily: 'TTNorms',
//             ),
//             unselectedLabelStyle: const TextStyle(
//               color: AppColors.fontColor,
//               fontSize: 10.0,
//               fontWeight: FontWeight.w500,
//               fontFamily: 'TTNorms',
//             ),
//             type: BottomNavigationBarType.fixed,
//             items: [
//               BottomNavigationBarItem(
//                 icon: SvgPicture.asset('lib/assets/icons/Home-1.svg'),
//                 activeIcon: SvgPicture.asset(
//                   'lib/assets/icons/Home.svg',
//                 ),
//                 label: '',
//               ),
//               BottomNavigationBarItem(
//                 icon: SvgPicture.asset('lib/assets/icons/Home-1.svg'),
//                 activeIcon: SvgPicture.asset(
//                   'lib/assets/icons/Home.svg',
//                 ),
//                 label: '',
//               ),
//               BottomNavigationBarItem(
//                 icon: SvgPicture.asset('lib/assets/icons/Home-1.svg'),
//                 activeIcon: SvgPicture.asset(
//                   'lib/assets/icons/Home.svg',
//                 ),
//                 label: '',
//               ),
//               BottomNavigationBarItem(
//                 icon: SvgPicture.asset('lib/assets/icons/Home-1.svg'),
//                 activeIcon: SvgPicture.asset(
//                   'lib/assets/icons/Home.svg',
//                 ),
//                 label: '',
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

import 'package:coffee_now/navigation/cubit/navigation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  void _onTap(int index) {
    context.read<NavigationCubit>().navigateTo(index);
    switch (index) {
      case 0:
        context.go('/home');
        break;
      case 1:
        context.go('/search');
        break;
      case 2:
        context.go('/transactions');
        break;
      case 3:
        context.go('/profile');
        break;
    }
  }

  Widget _buildNavItem(String route, String activeIcon, String inactiveIcon,
      int index, int currentIndex) {
    return GestureDetector(
      onTap: () => _onTap(index),
      child: SvgPicture.asset(
        currentIndex == index ? activeIcon : inactiveIcon,
        height: 24,
        width: 24,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 24.0),
          child: Container(
            height: 68,
            padding: const EdgeInsets.only(
              left: 26.0,
              right: 26.0,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.all(Radius.circular(18.0)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildNavItem('/home', 'lib/assets/icons/Home.svg',
                    'lib/assets/icons/Home-1.svg', 0, state.currentIndex),
                _buildNavItem('/search', 'lib/assets/icons/Search-1.svg',
                    'lib/assets/icons/Search.svg', 1, state.currentIndex),
                _buildNavItem(
                    '/transactions',
                    'lib/assets/icons/Document-1.svg',
                    'lib/assets/icons/Document.svg',
                    2,
                    state.currentIndex),
                _buildNavItem('/profile', 'lib/assets/icons/Profile-2.svg',
                    'lib/assets/icons/Profile-1.svg', 3, state.currentIndex),
              ],
            ),
          ),
        );
      },
    );
  }
}
