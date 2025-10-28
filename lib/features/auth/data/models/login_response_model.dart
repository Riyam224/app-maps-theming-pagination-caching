import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/user_entity.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  final int id;
  final String username;
  final String email;
  final String firstName;
  final String lastName;
  final String gender;
  final String image;
  final String accessToken;
  final String refreshToken;

  const LoginResponseModel({
    required this.id,
    required this.username,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.image,
    required this.accessToken,
    required this.refreshToken,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);

  UserEntity toEntity() => UserEntity(
        id: id,
        username: username,
        email: email,
        firstName: firstName,
        lastName: lastName,
        gender: gender,
        image: image,
      );
}
