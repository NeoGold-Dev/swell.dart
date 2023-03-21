import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:swell/src/models/models.dart';
import 'package:swell/src/models/src/accounts/account.dart';
import 'package:swell/src/models/src/accounts/account_register.dart';
import 'package:swell/src/models/src/accounts/login_credential.dart';
import 'package:swell/src/models/src/request_response/request_response.dart';

part 'swell_api.g.dart';

@RestApi(baseUrl: "https://5d42a6e2bc64f90014a56ca0.mockapi.io/api/v1/")
abstract class SwellApi {
  factory SwellApi(Dio dio, {String baseUrl}) = _SwellApi;

  @GET("/products")
  Future<RequestResponse<Product>> getProducts(
      @Queries() Map<String, dynamic> queries);

  @GET("/products/{id}")
  Future<Product> getProduct(@Path() String id);

  @POST("/accounts/login")
  Future<RequestResponse<Account>> login(@Body() LoginCredential credential);

  @POST("/accounts")
  Future<RequestResponse<Account>> register(@Body() AccountRegister account);

  @GET("/accounts")
  Future<RequestResponse<Account>> getAccounts(
      @Queries() Map<String, dynamic> queries);
}
