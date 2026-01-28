import 'package:dio/dio.dart';
import 'package:kohi/core/constant.dart';

class DioClient {
  DioClient._();

  static final DioClient _instance = DioClient._();

  factory DioClient() => _instance;

  final Dio dio = Dio();

  Future<Response> get(
    String path, {
    Map<String, dynamic>? param,
  }) async {
    try {
      final res = dio.get(
        path,
        queryParameters: param,
        // options: Options(
        //   headers: {
        //     'Authorization': 'Bearer $token',
        //   },
        // ),
      );
      return res;
    } on DioException catch (e) {
      logger.e('get error', error: e);
      rethrow;
    } catch (e) {
      logger.e('get error', error: e);
      rethrow;
    }
  }

  Future<Response> post(String path, {Map<String, dynamic>? body}) async {
    try {
      final res = dio.post(
        path,
        data: body,
        // options: Options(
        //   headers: {
        //     'Authorization': 'Bearer $token',
        //   },
        // ),
      );
      return res;
    } on DioException catch (e) {
      logger.e('get error dio', error: e);
      rethrow;
    } catch (e) {
      logger.e('get error', error: e);
      rethrow;
    }
  }
}
