part of 'theme_cubit.dart';

@freezed
abstract class ThemeCubitState with _$ThemeCubitState {
  // const factory ThemeCubitState.initial() = _Initial;
  const factory ThemeCubitState.themeState({
    required ThemeData theme,
  }) = _ThemeState;
}
