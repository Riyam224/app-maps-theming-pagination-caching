import 'package:dio/dio.dart';
import '../secure/secure_storage.dart';
import 'api_endpoints.dart';

class TokenInterceptor extends Interceptor {
  final Dio dio;
  TokenInterceptor(this.dio);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = await SecureStorage.read('accessToken');
    if (accessToken != null) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // If token expired → refresh
    if (err.response?.statusCode == 401) {
      final refreshToken = await SecureStorage.read('refreshToken');
      if (refreshToken != null) {
        try {
          final response = await dio.post(
            ApiEndpoints.refresh,
            data: {'refreshToken': refreshToken},
          );

          final newAccess = response.data['accessToken'];
          final newRefresh = response.data['refreshToken'];

          await SecureStorage.save('accessToken', newAccess);
          await SecureStorage.save('refreshToken', newRefresh);

          // Retry the original request
          final newRequest = err.requestOptions;
          newRequest.headers['Authorization'] = 'Bearer $newAccess';
          final retryResponse = await dio.fetch(newRequest);
          return handler.resolve(retryResponse);
        } catch (_) {
          await SecureStorage.clear();
        }
      }
    }
    return super.onError(err, handler);
  }
}
