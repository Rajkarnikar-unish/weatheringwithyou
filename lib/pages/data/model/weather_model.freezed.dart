// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  num get lat => throw _privateConstructorUsedError;
  num get lon => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_name')
  String get cityName => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_spd')
  num get windSpeed => throw _privateConstructorUsedError;
  num get temp => throw _privateConstructorUsedError;
  @JsonKey(name: 'rh')
  num get relativeHumidity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call(
      {num lat,
      num lon,
      @JsonKey(name: 'city_name') String cityName,
      @JsonKey(name: 'country_code') String countryCode,
      @JsonKey(name: 'wind_spd') num windSpeed,
      num temp,
      @JsonKey(name: 'rh') num relativeHumidity});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? cityName = freezed,
    Object? countryCode = freezed,
    Object? windSpeed = freezed,
    Object? temp = freezed,
    Object? relativeHumidity = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as num,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as num,
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as num,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as num,
      relativeHumidity: relativeHumidity == freezed
          ? _value.relativeHumidity
          : relativeHumidity // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {num lat,
      num lon,
      @JsonKey(name: 'city_name') String cityName,
      @JsonKey(name: 'country_code') String countryCode,
      @JsonKey(name: 'wind_spd') num windSpeed,
      num temp,
      @JsonKey(name: 'rh') num relativeHumidity});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, (v) => _then(v as _$_Data));

  @override
  _$_Data get _value => super._value as _$_Data;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? cityName = freezed,
    Object? countryCode = freezed,
    Object? windSpeed = freezed,
    Object? temp = freezed,
    Object? relativeHumidity = freezed,
  }) {
    return _then(_$_Data(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as num,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as num,
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as num,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as num,
      relativeHumidity: relativeHumidity == freezed
          ? _value.relativeHumidity
          : relativeHumidity // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {required this.lat,
      required this.lon,
      @JsonKey(name: 'city_name') required this.cityName,
      @JsonKey(name: 'country_code') required this.countryCode,
      @JsonKey(name: 'wind_spd') required this.windSpeed,
      required this.temp,
      @JsonKey(name: 'rh') required this.relativeHumidity});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final num lat;
  @override
  final num lon;
  @override
  @JsonKey(name: 'city_name')
  final String cityName;
  @override
  @JsonKey(name: 'country_code')
  final String countryCode;
  @override
  @JsonKey(name: 'wind_spd')
  final num windSpeed;
  @override
  final num temp;
  @override
  @JsonKey(name: 'rh')
  final num relativeHumidity;

  @override
  String toString() {
    return 'Data(lat: $lat, lon: $lon, cityName: $cityName, countryCode: $countryCode, windSpeed: $windSpeed, temp: $temp, relativeHumidity: $relativeHumidity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lon, lon) &&
            const DeepCollectionEquality().equals(other.cityName, cityName) &&
            const DeepCollectionEquality()
                .equals(other.countryCode, countryCode) &&
            const DeepCollectionEquality().equals(other.windSpeed, windSpeed) &&
            const DeepCollectionEquality().equals(other.temp, temp) &&
            const DeepCollectionEquality()
                .equals(other.relativeHumidity, relativeHumidity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lon),
      const DeepCollectionEquality().hash(cityName),
      const DeepCollectionEquality().hash(countryCode),
      const DeepCollectionEquality().hash(windSpeed),
      const DeepCollectionEquality().hash(temp),
      const DeepCollectionEquality().hash(relativeHumidity));

  @JsonKey(ignore: true)
  @override
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(this);
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {required final num lat,
      required final num lon,
      @JsonKey(name: 'city_name') required final String cityName,
      @JsonKey(name: 'country_code') required final String countryCode,
      @JsonKey(name: 'wind_spd') required final num windSpeed,
      required final num temp,
      @JsonKey(name: 'rh') required final num relativeHumidity}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  num get lat => throw _privateConstructorUsedError;
  @override
  num get lon => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'city_name')
  String get cityName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'country_code')
  String get countryCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'wind_spd')
  num get windSpeed => throw _privateConstructorUsedError;
  @override
  num get temp => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'rh')
  num get relativeHumidity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
