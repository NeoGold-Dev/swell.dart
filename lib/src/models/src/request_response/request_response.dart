import 'package:json_annotation/json_annotation.dart';
import 'package:swell/src/models/models.dart';

part 'request_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class RequestResponse<T> {
  int count;
  List<T> results;
  int page;

  RequestResponse(
      {required this.count, required this.results, required this.page});

  factory RequestResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$RequestResponseFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson<T>(
    RequestResponse<T> instance,
    Object? Function(T value) toJsonT,
  ) =>
      _$RequestResponseToJson<T>(instance, toJsonT);
}
