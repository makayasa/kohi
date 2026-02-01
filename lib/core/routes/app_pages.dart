import 'package:go_router/go_router.dart';
import 'package:kohi/core/widgets/typography.dart';
import 'package:kohi/features/auth/auth.dart';
import 'package:kohi/features/home/home.dart';
import 'package:kohi/features/menu/menu.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = AppRoutes.login;
  // static const initial = Routes.home;

  static final routes = <RouteBase>[
    GoRoute(
      path: _Paths.login,
      name: _Paths.login.replaceFirst('/', ''),
      builder: (context, state) => LoginPage(),
    ),
    GoRoute(
      path: _Paths.register,
      name: _Paths.register.replaceFirst('/', ''),
      builder: (context, state) => RegisterPage(),
    ),
    GoRoute(
      path: _Paths.home,
      name: _Paths.home.replaceFirst('/', ''),
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: _Paths.menu,
      name: _Paths.menu.replaceFirst('/', ''),
      builder: (context, state) => MenuPage(),
    ),
    GoRoute(
      path: _Paths.typhography,
      name: _Paths.typhography.replaceFirst('/', ''),
      builder: (context, state) => Typography(),
    ),
  ];

  static final router = GoRouter(
    routes: routes,
    initialLocation: initial,
    debugLogDiagnostics: true,
  );
}
