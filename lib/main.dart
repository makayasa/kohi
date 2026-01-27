import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kohi/core/network/dio_client.dart';
import 'package:kohi/core/routes/app_pages.dart';
import 'package:kohi/core/themes/app_theme.dart';
import 'package:kohi/core/themes/cubit/theme_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final dioClient = DioClient();
  final dio = dioClient.dio;
  final gorouter = GoRouter(
    initialLocation: AppPages.initial,
    routes: AppPages.routes,
  );
  final themeCubit = ThemeCubit();
  runApp(
    MainApp(
      themeCubit: themeCubit,
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({
    required this.themeCubit,
    super.key,
  });
  final ThemeCubit themeCubit;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: themeCubit),
      ],
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (context, state) {
          return MaterialApp.router(
            routerConfig: AppPages.router,
            theme: context.read<ThemeCubit>().state,
          );
        },
      ),
    );
  }
}
