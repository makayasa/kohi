import 'package:dio/dio.dart';

class DioClient {
  DioClient._internal();
  static final _instance = DioClient._internal();

  factory DioClient() {
    return _instance;
  }

  final dio = Dio();
}
