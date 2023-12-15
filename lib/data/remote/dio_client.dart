import 'package:dio/dio.dart';

class DioClient {
  DioClient() {
    dio = Dio();
  }
  late Dio dio;
  Future<T?> delete<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
  }) async {
    final res = await dio.delete<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
        extra: extra,
      ),
    );
    return res.data;
  }

  Future<T?> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ProgressCallback? onReceiveProgress,
  }) async {
    final res = await dio.get<T>(
      path,
      onReceiveProgress: onReceiveProgress,
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
        extra: extra,
      ),
    );

    return res.data;
  }

  Future<T?> patch<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final res = await dio.patch<T>(
      path,
      data: data,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
        extra: extra,
      ),
    );
    return res.data;
  }

  Future<T?> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final res = await dio.post<T>(
      path,
      data: data,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
        extra: extra,
      ),
    );
    return res.data;
  }

  Future<T?> put<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final res = await dio.put<T>(
      path,
      data: data,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
        extra: extra,
      ),
    );
    return res.data;
  }
}
