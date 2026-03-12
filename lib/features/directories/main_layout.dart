import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:group_maker/app/config/assets_path.dart';
import 'package:group_maker/core/theme/bottom_navigation_bar/brand_navigation_bar.dart';
import 'package:group_maker/core/theme/bottom_navigation_bar/brand_navigation_bar_model.dart';

class MainLayout extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const MainLayout({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BrandNavigationBar(
        currentIndex: navigationShell.currentIndex,
        onTap: (int index) {
          navigationShell.goBranch(index);
        },
        items: [
          const BrandNavigationBarModel(
            icon: AssetsPath.iconHome,
            activeIcon: AssetsPath.iconHomeFill,
            label: 'Home',
          ),
          const BrandNavigationBarModel(
            icon: AssetsPath.iconDirectories,
            activeIcon: AssetsPath.iconDirectoriesFill,
            label: 'Directories',
          ),
          const BrandNavigationBarModel(
            icon:  AssetsPath.iconSegments,
            activeIcon: AssetsPath.iconSegmentsFill,
            label: 'Segments',
          ),
          const BrandNavigationBarModel(
            icon: Icons.person_outline,
            activeIcon: Icons.person_rounded,
            label: 'Profile',
          ),
        ],
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   onTap: (int index) {
      //     navigationShell.goBranch(index);
      //   },
      //   currentIndex: navigationShell
      //       .currentIndex, // Set the current index based on the selected tab
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings),
      //       label: "Settings",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: "Profile",
      //     ),
      //   ],
      // ),
    );
  }
}
