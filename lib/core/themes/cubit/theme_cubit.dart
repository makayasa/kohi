import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kohi/core/themes/app_theme.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_cubit_state.dart';
part 'theme_cubit.freezed.dart';

class ThemeCubit extends Cubit<ThemeCubitState> {
  ThemeCubit() : super(ThemeCubitState.themeState(theme: AppTheme.lightTheme));

  bool isLightTheme = true;

  void toggleTheme() {
    // emit(state.brightness == .light ? _buildTheme() : _buildThemeDark());
    isLightTheme = !isLightTheme;
    if (isLightTheme) {
      emit(
        ThemeCubitState.themeState(
          theme: _buildTheme(),
        ),
      );
      return;
    }
    emit(
      ThemeCubitState.themeState(
        theme: _buildThemeDark(),
      ),
    );
  }

  void initTheme() {
    final theme = _buildTheme();
    emit(
      ThemeCubitState.themeState(
        theme: theme,
      ),
    );
  }

  ThemeData _buildTheme() {
    final baseTheme = AppTheme.lightTheme;
    final colorScheme = baseTheme.colorScheme;
    final textTheme = GoogleFonts.nunitoSansTextTheme(baseTheme.textTheme);
    final iconTheme = IconThemeData(
      // color: colorScheme.primary,
      // color: Colors.lightBlue,
    );
    final botto = BottomNavigationBarThemeData(
      backgroundColor: colorScheme.surface,
      selectedLabelStyle: textTheme.labelMedium,
      selectedItemColor: colorScheme.secondary,
      unselectedLabelStyle: textTheme.labelMedium,
      unselectedItemColor: colorScheme.tertiary,
      // selectedIconTheme: IconThemeData()
      // selectedIconTheme: iconTheme,
    );
    return baseTheme.copyWith(
      textTheme: GoogleFonts.nunitoSansTextTheme(baseTheme.textTheme),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: textTheme.bodyMedium!.copyWith(
          color: colorScheme.secondary,
        ),
        labelStyle: textTheme.bodyMedium!.copyWith(
          color: colorScheme.secondary,
        ),
        border: OutlineInputBorder(
          borderRadius: .circular(10),
        ),
      ),
      iconTheme: iconTheme,
      bottomNavigationBarTheme: botto,
    );
  }

  ThemeData _buildThemeDark() {
    final baseTheme = AppTheme.darkTheme;
    final colorScheme = baseTheme.colorScheme;
    final textTheme = GoogleFonts.nunitoSansTextTheme(baseTheme.textTheme);
    return baseTheme.copyWith(
      textTheme: GoogleFonts.nunitoSansTextTheme(baseTheme.textTheme),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: textTheme.bodyMedium!.copyWith(
          color: colorScheme.secondary,
        ),
        labelStyle: textTheme.bodyMedium!.copyWith(
          color: colorScheme.secondary,
        ),
        border: OutlineInputBorder(
          borderRadius: .circular(10),
        ),
      ),
    );
  }
}
