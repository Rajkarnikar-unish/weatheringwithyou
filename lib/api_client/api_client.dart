import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weatherapp/utilities/utilities.dart';

class ApiClient {
  late Dio _apiClient;

  ApiClient() {
    _apiClient = Dio();
    _apiClient.interceptors.add(AppInterceptors());
    _apiClient.options.baseUrl = apiURL;
    _apiClient.options.responseType = ResponseType.json;
    _apiClient.options.headers = {
      "Content-type": "application/json",
      "Accept": "application/json",
    };
  }

  Dio get apiClient => _apiClient;
}

class AppInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll({
      "Content-type": "application/json",
      "Accept": "application/json",
    });
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    log('URI: ${err.message}');
    super.onError(err, handler);
  }
}
