// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestResponse<T> _$RequestResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    RequestResponse<T>(
      count: json['count'] as int,
      results: (json['results'] as List<dynamic>).map(fromJsonT).toList(),
      page: json['page'] as int,
    );

Map<String, dynamic> _$RequestResponseToJson<T>(
  RequestResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'count': instance.count,
      'results': instance.results.map(toJsonT).toList(),
      'page': instance.page,
    };
