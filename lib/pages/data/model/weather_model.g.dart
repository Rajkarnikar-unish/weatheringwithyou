// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      lat: json['lat'] as num,
      lon: json['lon'] as num,
      cityName: json['city_name'] as String,
      countryCode: json['country_code'] as String,
      windSpeed: json['wind_spd'] as num,
      temp: json['temp'] as num,
      relativeHumidity: json['rh'] as num,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'city_name': instance.cityName,
      'country_code': instance.countryCode,
      'wind_spd': instance.windSpeed,
      'temp': instance.temp,
      'rh': instance.relativeHumidity,
    };
