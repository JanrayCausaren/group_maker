import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:group_maker/core/theme/bottom_navigation_bar/brand_navigation_bar_model.dart';
import 'package:group_maker/core/theme/bottom_navigation_bar/brand_navigation_item.dart';
import 'package:group_maker/core/theme/brand_colors_theme.dart';

class BrandNavigationBar extends StatelessWidget {
  final int currentIndex;
  final List<BrandNavigationBarModel> items;
  final ValueChanged<int> onTap;

  const BrandNavigationBar({
    super.key,
    required this.currentIndex,
    required this.items,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          height: 72,
          decoration: BoxDecoration(
            // Glass background
            color: context.brandColors.surface,
            border: BorderDirectional(
              top: BorderSide(color: Colors.white.withAlpha(14), width: 1),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: items.asMap().entries.map((entry) {
              final index = entry.key;
              final item = entry.value;
              final isActive = index == currentIndex;

              return Expanded(
                child: BrandNavigationItem(
                  item: item,
                  isActive: isActive,
                  onTap: () => onTap(index),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:group_maker/core/theme/bottom_navigation_bar/brand_navigation_bar_model.dart';
// import 'package:group_maker/core/theme/bottom_navigation_bar/brand_navigation_item.dart';

// class BrandNavigationBar extends StatelessWidget {
//   final int currentIndex;
//   final List<BrandNavigationBarModel> items;
//   final ValueChanged<int> onTap;
 
//   const BrandNavigationBar({super.key, 
//     required this.currentIndex,
//     required this.items,
//     required this.onTap,
//   });
 
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(12),
//         child: Container(
//           height: 72,
//           decoration: BoxDecoration(
//             // Glass background
//             color: Colors.transparent,
//             borderRadius: BorderRadius.circular(100),
//             border: Border.all(
//               color: Colors.white.withAlpha(14),
//               width: 1,
//             ),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withAlpha(102),
//                 blurRadius: 32,
//                 offset: const Offset(0, 8),
//               ),
//               // Top inner highlight
//               BoxShadow(
//                 color: Colors.white.withAlpha(130),
//                 blurRadius: 1,
//                 offset: const Offset(0, 1),
//               ),
//             ],
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: items.asMap().entries.map((entry) {
//               final index    = entry.key;
//               final item     = entry.value;
//               final isActive = index == currentIndex;
             
//               return Expanded(
//                 child: BrandNavigationItem(
//                   item:     item,
//                   isActive: isActive,
//                   onTap:    () => onTap(index),
//                 ),
//               );
//             }).toList(),
//           ),
//         ),
//       ),
//     );
//   }
// }