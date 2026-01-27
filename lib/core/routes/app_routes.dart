part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const home = _Paths.home;
  static const menu = _Paths.menu;
  static const typhography = _Paths.typhography;
}

abstract class _Paths {
  _Paths._();

  static const home = '/home';
  static const menu = '/menu';

  static const typhography = '/typhography';
}
