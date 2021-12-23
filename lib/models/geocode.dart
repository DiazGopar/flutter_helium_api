import 'package:meta/meta.dart';
import 'dart:convert';

class Geocode {
  Geocode({
    required this.shortStreet,
    required this.shortState,
    required this.shortCountry,
    required this.shortCity,
    required this.longStreet,
    required this.longState,
    required this.longCountry,
    required this.longCity,
    required this.cityId,
  });

  final dynamic shortStreet;
  final dynamic shortState;
  final dynamic shortCountry;
  final dynamic shortCity;
  final dynamic longStreet;
  final dynamic longState;
  final dynamic longCountry;
  final dynamic longCity;
  final dynamic cityId;

  Geocode copyWith({
    dynamic shortStreet,
    dynamic shortState,
    dynamic shortCountry,
    dynamic shortCity,
    dynamic longStreet,
    dynamic longState,
    dynamic longCountry,
    dynamic longCity,
    dynamic cityId,
  }) =>
      Geocode(
        shortStreet: shortStreet ?? this.shortStreet,
        shortState: shortState ?? this.shortState,
        shortCountry: shortCountry ?? this.shortCountry,
        shortCity: shortCity ?? this.shortCity,
        longStreet: longStreet ?? this.longStreet,
        longState: longState ?? this.longState,
        longCountry: longCountry ?? this.longCountry,
        longCity: longCity ?? this.longCity,
        cityId: cityId ?? this.cityId,
      );

  factory Geocode.fromRawJson(String str) => Geocode.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Geocode.fromJson(Map<String, dynamic> json) => Geocode(
        shortStreet: json["short_street"],
        shortState: json["short_state"],
        shortCountry: json["short_country"],
        shortCity: json["short_city"],
        longStreet: json["long_street"],
        longState: json["long_state"],
        longCountry: json["long_country"],
        longCity: json["long_city"],
        cityId: json["city_id"],
      );

  Map<String, dynamic> toJson() => {
        "short_street": shortStreet,
        "short_state": shortState,
        "short_country": shortCountry,
        "short_city": shortCity,
        "long_street": longStreet,
        "long_state": longState,
        "long_country": longCountry,
        "long_city": longCity,
        "city_id": cityId,
      };
}
