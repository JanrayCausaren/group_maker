import 'package:flutter/material.dart';
import 'package:group_maker/core/theme/bottom_navigation_bar/brand_navigation_bar_model.dart';
import 'package:group_maker/core/theme/brand_colors_theme.dart';

class BrandNavigationItem extends StatefulWidget {
  final BrandNavigationBarModel item;
  final bool isActive;
  final VoidCallback onTap;

  const BrandNavigationItem({
    super.key,
    required this.item,
    required this.isActive,
    required this.onTap,
  });

  @override
  State<BrandNavigationItem> createState() => BrandNavigationItemState();
}

class BrandNavigationItemState extends State<BrandNavigationItem>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scaleAnim;
  late final Animation<double> _opacityAnim;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );

    _scaleAnim = Tween<double>(
      begin: 0.85,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.elasticOut));

    _opacityAnim = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    if (widget.isActive) _controller.value = 1.0;
  }

  @override
  void didUpdateWidget(BrandNavigationItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isActive && !oldWidget.isActive) {
      _controller.forward(from: 0.0);
    } else if (!widget.isActive && oldWidget.isActive) {
      _controller.reverse();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.brandColors;

    return GestureDetector(
      onTap: widget.onTap,
      behavior: HitTestBehavior.opaque,
      child: Column(
        children: [
          AnimatedContainer(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              
              borderRadius: BorderRadius.circular(20),
              color: widget.isActive
                  ? colors.primary.withAlpha(46)
                  : Colors.transparent,
              border: widget.isActive
                  ? Border.all(color: colors.primary.withAlpha(77), width: 1)
                  : Border.all(color: Colors.transparent),
              boxShadow: widget.isActive
                  ? [
                      BoxShadow(
                        color: colors.primary.withAlpha(51),
                        blurRadius: 16,
                        offset: const Offset(0, 4),
                      ),
                    ]
                  : [],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Icon with scale animation
                ScaleTransition(
                  scale: widget.isActive
                      ? _scaleAnim
                      : const AlwaysStoppedAnimation(1.0),
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 200),
                    transitionBuilder: (child, animation) =>
                        ScaleTransition(scale: animation, child: child),
                    child: Icon(
                      widget.isActive
                          ? widget.item.activeIcon
                          : widget.item.icon,
                      key: ValueKey(widget.isActive),
                      size: 22,
                      color: widget.isActive
                          ? colors.primary
                          : Colors.white.withAlpha(89),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // const SizedBox(height: 4),
          // Label
          AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 250),
            style: TextStyle(
              fontSize: 10,
              fontWeight: widget.isActive ? FontWeight.w700 : FontWeight.w400,
              letterSpacing: 0.3,
              color: widget.isActive
                  ? colors.primary
                  : Colors.white.withAlpha(89),
            ),
            child: Text(widget.item.label),
          ),
        ],
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:group_maker/core/theme/bottom_navigation_bar/brand_navigation_bar_model.dart';
// import 'package:group_maker/core/theme/brand_colors_theme.dart';

// class BrandNavigationItem extends StatefulWidget {
//   final BrandNavigationBarModel item;
//   final bool isActive;
//   final VoidCallback onTap;

//   const BrandNavigationItem({
//     super.key,
//     required this.item,
//     required this.isActive,
//     required this.onTap,
//   });

//   @override
//   State<BrandNavigationItem> createState() => BrandNavigationItemState();
// }

// class BrandNavigationItemState extends State<BrandNavigationItem>
//     with SingleTickerProviderStateMixin {
//   late final AnimationController _controller;
//   late final Animation<double> _scaleAnim;
//   late final Animation<double> _opacityAnim;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 350),
//     );

//     _scaleAnim = Tween<double>(
//       begin: 0.85,
//       end: 1.0,
//     ).animate(CurvedAnimation(parent: _controller, curve: Curves.elasticOut));

//     _opacityAnim = Tween<double>(
//       begin: 0.0,
//       end: 1.0,
//     ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

//     if (widget.isActive) _controller.value = 1.0;
//   }

//   @override
//   void didUpdateWidget(BrandNavigationItem oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     if (widget.isActive && !oldWidget.isActive) {
//       _controller.forward(from: 0.0);
//     } else if (!widget.isActive && oldWidget.isActive) {
//       _controller.reverse();
//     }
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final colors = context.brandColors;

//     return GestureDetector(
//       onTap: widget.onTap,
//       behavior: HitTestBehavior.opaque,
//       child: AnimatedContainer(
//         duration: const Duration(milliseconds: 300),
//         curve: Curves.easeInOut,
//         margin: const EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           color: widget.isActive
//               ? colors.primary.withAlpha(46)
//               : Colors.transparent,
//           border: widget.isActive
//               ? Border.all(
//                   color: colors.primary.withAlpha(77),
//                   width: 1,
//                 )
//               : Border.all(color: Colors.transparent),
//           boxShadow: widget.isActive
//               ? [
//                   BoxShadow(
//                     color: colors.primary.withAlpha(51),
//                     blurRadius: 16,
//                     offset: const Offset(0, 4),
//                   ),
//                 ]
//               : [],
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             // Icon with scale animation
//             ScaleTransition(
//               scale: widget.isActive
//                   ? _scaleAnim
//                   : const AlwaysStoppedAnimation(1.0),
//               child: AnimatedSwitcher(
//                 duration: const Duration(milliseconds: 200),
//                 transitionBuilder: (child, animation) =>
//                     ScaleTransition(scale: animation, child: child),
//                 child: Icon(
//                   widget.isActive ? widget.item.activeIcon : widget.item.icon,
//                   key: ValueKey(widget.isActive),
//                   size: 22,
//                   color: widget.isActive
//                       ? colors.primary
//                       : Colors.white.withAlpha(89),
//                 ),
//               ),
//             ),

//             const SizedBox(height: 4),

//             // Label
//             AnimatedDefaultTextStyle(
//               duration: const Duration(milliseconds: 250),
//               style: TextStyle(
//                 fontSize: 10,
//                 fontWeight: widget.isActive ? FontWeight.w700 : FontWeight.w400,
//                 letterSpacing: 0.3,
//                 color: widget.isActive
//                     ? colors.primary
//                     : Colors.white.withAlpha(89),
//               ),
//               child: Text(widget.item.label),
//             ),

//             const SizedBox(height: 2),

//             // Active dot indicator
//             AnimatedContainer(
//               duration: const Duration(milliseconds: 300),
//               curve: Curves.easeInOut,
//               width: widget.isActive ? 4 : 0,
//               height: widget.isActive ? 4 : 0,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: widget.isActive
//                     ? colors.primary.withAlpha(204)
//                     : Colors.transparent,
//                 boxShadow: widget.isActive
//                     ? [
//                         BoxShadow(
//                           color: colors.primary.withAlpha(153),
//                           blurRadius: 6,
//                         ),
//                       ]
//                     : [],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
