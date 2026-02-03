part of 'app_pages.dart';

abstract class AppRoutes {
  AppRoutes._();

  static const splash = _Paths.splash;
  static const mainPage = _Paths.mainPage;
  static const home = _Paths.home;
  static const menu = _Paths.menu;
  static const login = _Paths.login;
  static const register = _Paths.register;
  static const typhography = _Paths.typhography;
}

abstract class _Paths {
  _Paths._();
  static const splash = '/';
  static const mainPage = '/main';
  static const home = '/home';
  static const menu = '/menu';
  static const login = '/login';
  static const register = '/register';

  static const typhography = '/typhography';
}
