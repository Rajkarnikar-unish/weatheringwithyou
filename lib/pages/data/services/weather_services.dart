import 'package:dio/dio.dart';
import 'package:weatherapp/api_client/api_client.dart';
import 'package:weatherapp/pages/data/model/weather_model.dart';
import 'package:weatherapp/utilities/utilities.dart';

class WeatherServices {
  final ApiClient _apiClient = ApiClient();

  Future<Data> getWeatherData(double? lat, double? lon) async {
    try {
      final response = await _apiClient.apiClient
          .get('${apiURL}current?lat=$lat&lon=$lon&key=$apiKey');
      final model = WeatherModel.fromJson(response.data);
      return model.data!.first;
    } on DioError catch (e) {
      throw e.message;
    }
  }
}
