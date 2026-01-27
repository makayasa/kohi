import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextThemes {
  AppTextThemes({this.color = Colors.black});
  final Color color;
  final _theme = GoogleFonts.nunitoSansTextTheme();
  TextTheme get textTheme => TextTheme(
    displayLarge: _theme.displayLarge!.copyWith(
      fontWeight: .w400,
      fontSize: 57,
      wordSpacing: -0.25,
    ),
    displayMedium: _theme.displayMedium!.copyWith(
      fontWeight: .w400,
      fontSize: 45,
      wordSpacing: 0,
    ),
    displaySmall: _theme.displaySmall!.copyWith(
      fontWeight: .w400,
      fontSize: 36,
      wordSpacing: 0,
    ),
    headlineLarge: _theme.headlineLarge!.copyWith(
      fontWeight: .w400,
      fontSize: 32,
      wordSpacing: 0,
    ),
    headlineMedium: _theme.headlineMedium!.copyWith(
      fontWeight: .w400,
      fontSize: 28,
      wordSpacing: 0,
    ),
    headlineSmall: _theme.headlineSmall!.copyWith(
      fontWeight: .w400,
      fontSize: 24,
      wordSpacing: 0,
    ),
    titleLarge: _theme.titleLarge!.copyWith(
      fontWeight: .w400,
      fontSize: 22,
      wordSpacing: 0,
    ),
    titleMedium: _theme.titleMedium!.copyWith(
      fontWeight: .w500,
      fontSize: 16,
      wordSpacing: 0.15,
    ),
    titleSmall: _theme.titleSmall!.copyWith(
      fontWeight: .w500,
      fontSize: 14,
      wordSpacing: 0.1,
    ),
    bodyLarge: _theme.bodyLarge!.copyWith(
      fontWeight: .w400,
      fontSize: 16,
      wordSpacing: 0.5,
    ),
    bodyMedium: _theme.bodyMedium!.copyWith(
      fontWeight: .w400,
      fontSize: 14,
      wordSpacing: 0.25,
    ),
    bodySmall: _theme.bodySmall!.copyWith(
      fontWeight: .w400,
      fontSize: 12,
      wordSpacing: 0.5,
    ),
    labelLarge: _theme.labelLarge!.copyWith(
      fontWeight: .w500,
      fontSize: 14,
      wordSpacing: 0.1,
    ),
    labelMedium: _theme.labelMedium!.copyWith(
      fontWeight: .w500,
      fontSize: 12,
      wordSpacing: 0.5,
    ),
    labelSmall: _theme.labelSmall!.copyWith(
      fontWeight: .w500,
      fontSize: 11,
      wordSpacing: 0.5,
    ),
  );
}
