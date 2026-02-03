import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_page_cubit_state.dart';
part 'main_page_cubit.freezed.dart';

class MainPageCubit extends Cubit<MainPageCubitState> {
  MainPageCubit() : super(MainPageCubitState.pageIndex());
  void onTapBotNav(PageController pageController, int index) {
    pageController.jumpToPage(index);
    emit(MainPageCubitState.pageIndex(pageIndex: index));
  }
}
