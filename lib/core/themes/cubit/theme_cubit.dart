import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kohi/core/themes/app_theme.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(AppTheme.lightTheme);

  void toggleTheme() {
    emit(state.brightness == .light ? _buildThemeDark() : _buildTheme());
  }

  ThemeData _buildTheme() {
    final baseTheme = AppTheme.lightTheme;
    return baseTheme.copyWith(
      textTheme: GoogleFonts.nunitoSansTextTheme(baseTheme.textTheme),
    );
  }

  ThemeData _buildThemeDark() {
    final baseTheme = AppTheme.darkTheme;
    return baseTheme.copyWith(
      textTheme: GoogleFonts.nunitoSansTextTheme(baseTheme.textTheme),
    );
  }
}
