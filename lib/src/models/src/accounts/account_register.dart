import 'package:json_annotation/json_annotation.dart';

part 'account_register.g.dart';

@JsonSerializable()
class AccountRegister {
  String email;
  String first_name;
  String last_name;
  bool email_optin;
  String password;

  AccountRegister(
      {required this.email,
      required this.first_name,
      required this.last_name,
      required this.email_optin,
      required this.password});

  factory AccountRegister.fromJson(Map<String, dynamic> json) =>
      _$AccountRegisterFromJson(json);
  Map<String, dynamic> toJson() => _$AccountRegisterToJson(this);
}
