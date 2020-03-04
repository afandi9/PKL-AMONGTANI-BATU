// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    this.baseUrl ??= 'https://sapk-online.batukota.go.id/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  login(absensiapikey, username, password, appversion) async {
    ArgumentError.checkNotNull(absensiapikey, 'absensiapikey');
    ArgumentError.checkNotNull(username, 'username');
    ArgumentError.checkNotNull(password, 'password');
    ArgumentError.checkNotNull(appversion, 'appversion');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = {
      'username': username,
      'password': password,
      'appversion': appversion
    };
    final Response<Map<String, dynamic>> _result = await _dio.request(
        'api_absen/user/login',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{'absensiapikey': absensiapikey},
            extra: _extra,
            contentType: 'application/x-www-form-urlencoded',
            baseUrl: baseUrl),
        data: _data);
    final value = WrappedResponse.fromJson(_result.data);
    return Future.value(value);
  }

  @override
  all(token) async {
    ArgumentError.checkNotNull(token, 'token');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request('post',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{'Authorization': token},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = WrappedListResponse.fromJson(_result.data);
    return Future.value(value);
  }

  @override
  updatePost(token, id, body) async {
    ArgumentError.checkNotNull(token, 'token');
    ArgumentError.checkNotNull(id, 'id');
    ArgumentError.checkNotNull(body, 'body');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body ?? <String, dynamic>{});
    final Response<Map<String, dynamic>> _result = await _dio.request(
        'post/$id',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'PUT',
            headers: <String, dynamic>{'Authorization': token},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = WrappedResponse.fromJson(_result.data);
    return Future.value(value);
  }
}
