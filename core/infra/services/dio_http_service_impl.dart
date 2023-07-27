import 'package:cleanarch/core/domain/services/http_service.dart';
import 'package:dio/dio.dart';

class DioHttpServiceImpl implements HttpService {
  late Dio _dio;

  DioHttpServiceImpl(String baseUrl, Map<String, String> headers) {
    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        headers: headers
      )
    );
  }

  @override
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) {
    return _dio.get<T>(
      path,
      queryParameters: queryParameters,
    );
  }
}
