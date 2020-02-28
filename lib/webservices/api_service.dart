
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:among_tani/converters/wrapped_response.dart';
import 'package:among_tani/converters/wrapped_list_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://sapk-online.batukota.go.id/")
abstract class RestClient{
  factory RestClient(Dio dio) = _RestClient;
//  String api = "60c40c20a9049a5916b5bf3a20000007";

//  @FormUrlEncoded()
//  @POST("login")
//  Future<WrappedResponse> login(@Header("absensiapikey") String absensiapikey, @Field("username") String username, @Field("password") String password, @Field("appversion") int appversion);
  @FormUrlEncoded()
  @POST("api_absen/user/login")
  Future<WrappedResponse> login(@Header("absensiapikey") String absensiapikey, @Field("username") String username, @Field("password") String password, @Field("appversion") int appversion);

  @GET("post")
  Future<WrappedListResponse> all(@Header("Authorization")String token);

  @PUT("post/{id}")
  Future<WrappedResponse> updatePost(@Header("Authorization") String token, @Path("id") String id, @Body() Map<String, dynamic> body);
//
//  @GET("post/{id}")
//  Future<WrappedResponse> getById(@Header("Authorization") String token, @Path("id") String id);
//
//  @DELETE("post/{id}")
//  Future<WrappedResponse> delete(@Header("Authorization") String token, @Path("id") String id);
}