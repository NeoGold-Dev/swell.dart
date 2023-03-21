import 'package:json_annotation/json_annotation.dart';

part 'account.g.dart';

@JsonSerializable()
class Account {
  String id;
  String email;
  String first_name;
  String last_name;
  String? phone;

  Account(
      {required this.id,
      required this.email,
      required this.first_name,
      required this.last_name,
      this.phone});

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
  Map<String, dynamic> toJson() => _$AccountToJson(this);
}
