import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

// abstract class WeatherModel with _$WeatherModel {
//   @JsonSerializable(explicitToJson: true)
//   const factory WeatherModel({
//     required List<Data> data,
//     int? count,
//   }) = _WeatherModel;

//   factory WeatherModel.fromJson(Map<String, dynamic> json) =>
//       _$WeatherModel.fromJson(json);
// }

class WeatherModel {
  List<Data>? data;
  int? count;

  WeatherModel({this.data, this.count});

  WeatherModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['count'] = this.count;
    return data;
  }
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    required num lat,
    required num lon,
    @JsonKey(name: 'city_name') required String cityName,
    @JsonKey(name: 'country_code') required String countryCode,
    @JsonKey(name: 'wind_spd') required num windSpeed,
    required num temp,
    @JsonKey(name: 'rh') required num relativeHumidity,
    // required DateTime datetime,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
