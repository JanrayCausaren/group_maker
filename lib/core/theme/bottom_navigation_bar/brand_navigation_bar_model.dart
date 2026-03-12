import 'package:flutter/material.dart';

class BrandNavigationBarModel {
  final IconData icon;
  final IconData activeIcon;
  final String label;
 
  const BrandNavigationBarModel({
    required this.icon,
    required this.activeIcon,
    required this.label,
  });
}