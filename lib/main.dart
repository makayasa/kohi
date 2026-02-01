import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:kohi/core/network/auth_interceptor.dart';
import 'package:kohi/core/network/dio_client.dart';
import 'package:kohi/core/routes/app_pages.dart';
import 'package:kohi/core/themes/cubit/theme_cubit.dart';
import 'package:kohi/features/auth/auth.dart';
import 'package:kohi/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:kohi/features/auth/presentation/bloc/auth_bloc_to_listenable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  final storage = FlutterSecureStorage();
  final dioClient = DioClient();
  final dio = dioClient.dio;
  dio.interceptors.add(AuthInterceptor());
  final AuthRepository authRepository = AuthRepositoryImpl(dioClient: dioClient, storage: storage);
  final AuthUsecase authUsecase = AuthUsecase(authRepository);
  final authBloc = AuthBloc(authUsecase);
  final gorouter = GoRouter(
    refreshListenable: AuthBlocToListenable(authBloc.stream),
    redirect: (context, routerState) {
      // final authBloc = context.read<AuthBloc>();
      // if (authBloc == AuthState.unauthorized() && routerState.matchedLocation != AppRoutes.register) {
      //   return AppRoutes.login;
      // }
      return null;
    },
    initialLocation: AppPages.initial,
    routes: AppPages.routes,
  );
  final themeCubit = ThemeCubit();
  themeCubit.initTheme();
  runApp(
    MainApp(
      themeCubit: themeCubit,
      authBloc: authBloc,
      router: gorouter,
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({
    required this.themeCubit,
    required this.authBloc,
    required this.router,
    super.key,
  });
  final ThemeCubit themeCubit;
  final AuthBloc authBloc;
  final GoRouter router;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: themeCubit),
        BlocProvider.value(value: authBloc),
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
