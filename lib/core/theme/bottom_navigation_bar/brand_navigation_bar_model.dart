import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BrandNavigationBarModel {
  final Object icon;
  final Object activeIcon;
  final String label;
 
  const BrandNavigationBarModel({
    required this.icon,
    required this.activeIcon,
    required this.label,
  });
}



class BrandIcon extends StatelessWidget {
  final Object iconData; // Accepts IconData or String (SVG path)
  final Color color;
  final double size;

  const BrandIcon({
    super.key,
    required this.iconData,
    required this.color,
    this.size = 22,
  });

  @override
  Widget build(BuildContext context) {
    if (iconData is IconData) {
      return Icon(
        iconData as IconData,
        size: size,
        color: color,
      );
    } else if (iconData is String) {
      return SvgPicture.asset(
        iconData as String,
        width: size,
        height: size,
        // This ensures your SVG takes the active/inactive color
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      );
    }
    return SizedBox(width: size, height: size);
  }
}