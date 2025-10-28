import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';

class AuthCubit extends Cubit<UserEntity?> {
  final AuthRepository repository;
  AuthCubit(this.repository) : super(null);

  Future<void> login(String username, String password) async {
    try {
      final user = await repository.login(username, password);
      emit(user);
    } catch (e) {
      print('Login failed: $e');
      emit(null);
    }
  }
}
