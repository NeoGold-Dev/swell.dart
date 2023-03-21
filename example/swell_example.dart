import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dotenv/dotenv.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:swell/src/api/swell_api.dart';
import 'package:swell/swell.dart';

void main() {
  var env = DotEnv(includePlatformEnvironment: false)..load();

  print(env);
  Swell.init(store: '${env['STORE']}', key: '${env['KEY']}');

  var b64Key = base64.encode(utf8.encode(Swell.instance.key));
  final dio = Dio(); // Provide a dio instance
  dio.options.headers["accept"] = "application/json";
  dio.options.headers["content-Type"] = "application/json";
  dio.options.headers["Authorization"] = 'Basic $b64Key';
  dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90));
  final client = SwellApi(dio, baseUrl: Swell.instance.url.toString());

  client.getProducts({}).then((it) => print(it.results[0].price));
  final newAccount = AccountRegister(
      email: "mail@me.com",
      first_name: "Bob",
      last_name: "Bob",
      email_optin: true,
      password: "password1234+");
  // client.register(newAccount).then((value) => print(value));

  final credential =
      LoginCredential(email: "mail@me.com", password: "password1234+");
  client.login(credential);
}
