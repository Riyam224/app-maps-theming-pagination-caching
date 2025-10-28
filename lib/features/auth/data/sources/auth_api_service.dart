import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/network/api_endpoints.dart';
import '../models/login_response_model.dart';

part 'auth_api_service.g.dart';

@RestApi(baseUrl: ApiEndpoints.baseUrl)
abstract class AuthApiService {
  factory AuthApiService(Dio dio, {String baseUrl}) = _AuthApiService;

  @POST(ApiEndpoints.login)
  Future<LoginResponseModel> login(@Body() Map<String, dynamic> body);

  @POST(ApiEndpoints.refresh)
  Future<LoginResponseModel> refresh(@Body() Map<String, dynamic> body);
}
