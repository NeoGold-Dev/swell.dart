// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountRegister _$AccountRegisterFromJson(Map<String, dynamic> json) =>
    AccountRegister(
      email: json['email'] as String,
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      email_optin: json['email_optin'] as bool,
      password: json['password'] as String,
    );

Map<String, dynamic> _$AccountRegisterToJson(AccountRegister instance) =>
    <String, dynamic>{
      'email': instance.email,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'email_optin': instance.email_optin,
      'password': instance.password,
    };
