import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:swell/src/models/models.dart';
import 'package:swell/src/models/src/request_response/request_response.dart';

part 'swell_api.g.dart';

@RestApi(baseUrl: "https://5d42a6e2bc64f90014a56ca0.mockapi.io/api/v1/")
abstract class SwellApi {
  factory SwellApi(Dio dio, {String baseUrl}) = _SwellApi;

  @GET("/products")
  Future<RequestResponse<Product>> getProducts(@Query("limit") String? limit);
}
