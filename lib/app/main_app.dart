import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kohi/app/presentation/main_page/main_page_cubit.dart';

import '../core/themes/cubit/theme_cubit.dart';
import '../features/auth/presentation/bloc/auth_bloc.dart';

class MainApp extends StatelessWidget {
  MainApp({
    required this.themeCubit,
    required this.authBloc,
    required this.router,
    super.key,
  });
  final ThemeCubit themeCubit;
  final AuthBloc authBloc;
  final GoRouter router;

  final mainPageCubit = MainPageCubit();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: themeCubit),
        BlocProvider.value(value: authBloc),
        BlocProvider.value(value: mainPageCubit),
        // BlocProvider(create: (context) => MainPageCubit()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeCubitState>(
        builder: (context, state) {
          return MaterialApp.router(
            routerConfig: router,
            theme: state.theme,
          );
        },
      ),
    );
  }
}
