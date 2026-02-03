part of 'main_page_cubit.dart';

@freezed
abstract class MainPageCubitState with _$MainPageCubitState {
  const factory MainPageCubitState.pageIndex({
    @Default(0) int pageIndex,
  }) = _PageIndex;
}
