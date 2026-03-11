import 'package:flutter/material.dart';

class BrandTextTheme {
  const BrandTextTheme._();

  static TextTheme applyBrandFont({
    required TextTheme base,
    required String bodyFont,
    required String headingFont,
  }) {
    

    final bodyApplied = base.apply(fontFamily: bodyFont);

    // override headings with heading font
    return bodyApplied.copyWith(
      displayLarge: bodyApplied.displayLarge?.copyWith(fontFamily: headingFont),
      displayMedium: bodyApplied.displayMedium?.copyWith(
        fontFamily: headingFont,
      ),
      displaySmall: bodyApplied.displaySmall?.copyWith(fontFamily: headingFont),

      headlineLarge: bodyApplied.headlineLarge?.copyWith(
        fontFamily: headingFont,
      ),
      headlineMedium: bodyApplied.headlineMedium?.copyWith(
        fontFamily: headingFont,
      ),
      headlineSmall: bodyApplied.headlineSmall?.copyWith(
        fontFamily: headingFont,
      ),

      titleLarge: bodyApplied.titleLarge?.copyWith(fontFamily: headingFont),
      titleMedium: bodyApplied.titleMedium?.copyWith(fontFamily: headingFont),
      titleSmall: bodyApplied.titleSmall?.copyWith(fontFamily: headingFont),
    );
  }
}
