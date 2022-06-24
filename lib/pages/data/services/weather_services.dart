import 'package:dio/dio.dart';
import 'package:weatherapp/api_client/api_client.dart';
import 'package:weatherapp/pages/data/model/weather_model.dart';
import 'package:weatherapp/utilities/utilities.dart';

class WeatherServices {
  final ApiClient _apiClient = ApiClient();

  Future<WeatherModel> getWeatherData() async {
    try {
      final response = await _apiClient.apiClient
          .get('${apiURL}current?lat=27.6450622&lon=85.3216952&key=$apiKey');
      final model = WeatherModel.fromJson(response.data);
      return model;
    } on DioError catch (e) {
      throw e.message;
    }
  }
}
