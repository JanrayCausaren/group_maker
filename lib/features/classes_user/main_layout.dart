import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
            icon: Icons.home_outlined,
            activeIcon: Icons.home_rounded,
            label: 'Home',
          ),
          const BrandNavigationBarModel(
            icon: Icons.search_outlined,
            activeIcon: Icons.search_rounded,
            label: 'Classes',
          ),
          const BrandNavigationBarModel(
            icon: Icons.bookmark_outline,
            activeIcon: Icons.bookmark_rounded,
            label: 'Groups',
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
