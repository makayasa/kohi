import 'package:flutter/material.dart';
import 'package:kohi/core/themes/app_colors.dart';
import 'package:kohi/core/themes/app_text_themes.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color(0xFFDAB88B),
      // dynamicSchemeVariant: DynamicSchemeVariant.content,
      dynamicSchemeVariant: DynamicSchemeVariant.tonalSpot,
      contrastLevel: -0.1,
    ),
    // colorScheme: ColorScheme(
    //   brightness: .light,
    //   primary: AppLightColors.primary,
    //   onPrimary: AppLightColors.onPrimary,
    //   secondary: AppLightColors.secondary,
    //   onSecondary: AppLightColors.onSecondary,
    //   tertiary: AppLightColors.tertiary,
    //   onTertiary: AppLightColors.onTertiary,
    //   error: AppLightColors.error,
    //   onError: AppLightColors.onError,
    //   //
    //   surface: AppLightColors.surface,
    //   onSurface: AppLightColors.onSurface,
    //   onSurfaceVariant: AppLightColors.onSurfaceVar,
    //   surfaceDim: AppLightColors.surfaceDim,
    //   surfaceBright: AppLightColors.surfaceBright,
    //   surfaceContainer: AppLightColors.surfContainer,
    //   surfaceContainerLowest: AppLightColors.surfContainerLowest,
    //   surfaceContainerLow: AppLightColors.surfContainerLow,
    //   surfaceContainerHigh: AppLightColors.surfContainerHigh,
    //   surfaceContainerHighest: AppLightColors.surfContainerHighest,
    //   //
    //   primaryContainer: AppLightColors.primaryContainer,
    //   onPrimaryContainer: AppLightColors.onPrimaryContainer,
    //   secondaryContainer: AppLightColors.onSecondaryContainer,
    //   tertiaryContainer: AppLightColors.tertiaryContainer,
    //   onTertiaryContainer: AppLightColors.onTertiaryContainer,
    //   errorContainer: AppLightColors.errorContainer,
    //   onErrorContainer: AppLightColors.onErrorContainer,
    //   //
    //   outline: AppLightColors.outline,
    //   outlineVariant: AppLightColors.outlineVariant,
    // ),
  );
  // static ThemeData lightTheme = ThemeData(
  //   useMaterial3: true,
  //   colorScheme: ColorScheme(
  //     brightness: .light,
  //     primary: AppColors.cream,
  //     onPrimary: AppColors.cream,
  //     secondary: AppColors.brownMedium,
  //     onSecondary: Colors.white,
  //     error: Color(0xFFB3261E),
  //     onError: Colors.white,
  //     surface: AppColors.kBgWhite,
  //     onSurface: AppColors.lightColorMaroon,
  //     primaryContainer: AppColors.brownDark,
  //     onPrimaryContainer: AppColors.cream,
  //   ),
  //   iconTheme: IconThemeData(
  //     color: AppColors.brownMedium,
  //   ),
  //   floatingActionButtonTheme: FloatingActionButtonThemeData(
  //     // backgroundColor: AppColors.brownMedium,
  //   ),
  //   textTheme: AppTextThemes().textTheme,
  //   appBarTheme: AppBarThemeData(
  //     // backgroundColor: AppColors.brownMedium,
  //   ),
  //   bottomNavigationBarTheme: BottomNavigationBarThemeData(
  //     // backgroundColor: AppColors.brownMedium
  //   ),
  // );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color(0xFFDAB88B),
      brightness: Brightness.dark,
      // dynamicSchemeVariant: DynamicSchemeVariant.expressive,
    ),
    // colorScheme: ColorScheme(
    //   brightness: .dark,
    //   primary: AppColors.lightColorGrey,
    //   onPrimary: Colors.white,
    //   secondary: AppColors.lightColorCream,
    //   onSecondary: Colors.white,
    //   error: Color(0xFFB3261E),
    //   onError: Colors.white,
    //   surface: AppColors.lightColorMaroon,
    //   onSurface: AppColors.lightColorSand,
    // ),
    textTheme: AppTextThemes().textTheme,
  );
}
