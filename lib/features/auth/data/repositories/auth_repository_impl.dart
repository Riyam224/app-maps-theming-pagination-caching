import '../../../../core/network/dio_client.dart';
import '../../../../core/secure/secure_storage.dart';

import '../sources/auth_api_service.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApiService _api;

  AuthRepositoryImpl(this._api);

  factory AuthRepositoryImpl.create() {
    final dio = DioClient.createDio();
    final api = AuthApiService(dio);
    return AuthRepositoryImpl(api);
  }

  @override
  Future<UserEntity> login(String username, String password) async {
    final response = await _api.login({
      'username': username,
      'password': password,
      'expiresInMins': 30,
    });

    await SecureStorage.save('accessToken', response.accessToken);
    await SecureStorage.save('refreshToken', response.refreshToken);

    return response.toEntity();
  }
}
