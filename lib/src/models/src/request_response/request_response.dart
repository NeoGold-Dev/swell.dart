import 'package:json_annotation/json_annotation.dart';
import 'package:swell/src/models/models.dart';

part 'request_response.g.dart';

@JsonSerializable()
class RequestResponse {
  int count;
  List<Product> results;

  RequestResponse({required this.count, required this.results});

  factory RequestResponse.fromJson(Map<String, dynamic> json) =>
      _$RequestResponseFromJson(json);
  Map<String, dynamic> toJson() => _$RequestResponseToJson(this);
}
