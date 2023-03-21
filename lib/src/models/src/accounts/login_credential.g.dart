// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_credential.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginCredential _$LoginCredentialFromJson(Map<String, dynamic> json) =>
    LoginCredential(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginCredentialToJson(LoginCredential instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
