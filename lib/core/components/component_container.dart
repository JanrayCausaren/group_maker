import 'package:flutter/material.dart';
import 'package:group_maker/core/theme/brand_colors_theme.dart';

class ComponentContainer extends StatelessWidget {
  const ComponentContainer({
    super.key,
    this.paddingH,
    this.paddingV,
    this.borderEnable = true,
    this.borderRadius = 12,
    required this.child,
  });

  final double? paddingH;
  final double? paddingV;
  final bool borderEnable;
  final double borderRadius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: paddingH ?? 4,
        vertical: paddingV ?? 8,
      ),
      decoration: BoxDecoration(
        color: context.brandColors.surface9,
        borderRadius: BorderRadius.circular(borderRadius),
        border: borderEnable
            ? Border.all(color: context.brandColors.surface8, width: 1)
            : null,
      ),
      child: child,
    );
  }
}
