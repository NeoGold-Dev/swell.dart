import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:swell/src/api/swell_api.dart';
import 'package:swell/swell.dart';
import 'package:dotenv/dotenv.dart';

import 'dart:convert';

void main() {
  var env = DotEnv(includePlatformEnvironment: false)..load();

  Swell.init(store: '${env['STROKE']}', key: '${env['KEY']}');

  var b64Key = base64.encode(utf8.encode(Swell.instance.key));
  final dio = Dio(); // Provide a dio instance
  dio.options.headers["accept"] = "application/json";
  dio.options.headers["content-Type"] = "application/json";
  dio.options.headers["authorization"] = 'Basic $b64Key';
  dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90));
  final client = SwellApi(dio, baseUrl: Swell.instance.url.toString());

  client.getProduct('bar-gold').then((it) => print(it));
}
