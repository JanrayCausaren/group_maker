import 'package:flutter/material.dart';

@immutable
class BrandColorsTheme extends ThemeExtension<BrandColorsTheme> {
  const BrandColorsTheme({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.surface,
    required this.surface9,
    required this.surface8,
    required this.surface7,
    required this.surface6,
    required this.text,
    required this.text9,
  });

  final Color primary;
  final Color secondary;
  final Color tertiary;

  final Color surface;
  final Color surface9;
  final Color surface8;
  final Color surface7;
  final Color surface6;

  final Color text;
  final Color text9;

  factory BrandColorsTheme.dark() {
    return const BrandColorsTheme(
      primary: Color(0xFF6453D2),
      secondary: Color(0xFF6453D2),
      tertiary: Color(0xFF6453D2),

      surface: Color(0xFF07051B),
      surface9: Color(0xFF0D0F35),
      surface8: Color(0xFF323558),
      surface7: Color(0xFF585C8B),
      surface6: Color(0xFF7277A6),

      text: Color(0xFFE1E1EC),
      text9: Color(0xFFE1E1EC),
    );
  }

  factory BrandColorsTheme.light() {
    return const BrandColorsTheme(
      primary: Color(0xFF6453D2),
      secondary: Color(0xFF6453D2),
      tertiary: Color(0xFF6453D2),

      surface: Color(0xFFFFFFFF),
      surface9: Color(0xFFF4F5F7),
      surface8: Color(0xFFE1E1EC),
      surface7: Color(0xFFE1E1EC),
      surface6: Color(0xFFE1E1EC),

      text: Color(0xFF07051B),
      text9: Color(0xFF0D0F35),
    );
  }

  @override
  ThemeExtension<BrandColorsTheme> copyWith({
    Color? primary,
    Color? secondary,
    Color? tertiary,
    Color? surface,
    Color? surface9,
    Color? surface8,
    Color? surface7,
    Color? surface6,
    Color? text,
    Color? text9,
  }) {
    return BrandColorsTheme(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      tertiary: tertiary ?? this.tertiary,
      surface: surface ?? this.surface,
      surface9: surface9 ?? this.surface9,
      surface8: surface8 ?? this.surface8,
      surface7: surface7 ?? this.surface7,
      surface6: surface6 ?? this.surface6,
      text: text ?? this.text,
      text9: text9 ?? this.text9,
    );
  }

  @override
  ThemeExtension<BrandColorsTheme> lerp(
    covariant ThemeExtension<BrandColorsTheme>? other,
    double t,
  ) {
    if (other is! BrandColorsTheme) {
      return this;
    }
    return BrandColorsTheme(
      primary: Color.lerp(primary, other.primary, t) ?? primary,
      secondary: Color.lerp(secondary, other.secondary, t) ?? secondary,
      tertiary: Color.lerp(tertiary, other.tertiary, t) ?? tertiary,
      surface: Color.lerp(surface, other.surface, t) ?? surface,
      surface9: Color.lerp(surface9, other.surface9, t) ?? surface9,
      surface8: Color.lerp(surface8, other.surface8, t) ?? surface8,
      surface7: Color.lerp(surface7, other.surface7, t) ?? surface7,
      surface6: Color.lerp(surface6, other.surface6, t) ?? surface6,
      text: Color.lerp(text, other.text, t) ?? text,
      text9: Color.lerp(text9, other.text9, t) ?? text9,
    );
  }
}

extension BrandThemeColorsDisplay on BuildContext{
 BrandColorsTheme get brandColors  => Theme.of(this).extension<BrandColorsTheme>()!;
}