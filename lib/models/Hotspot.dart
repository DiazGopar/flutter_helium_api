// To parse this JSON data, do
//
//     final hotspot = hotspotFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class Hotspot {
  Hotspot({
    @required this.timestampAdded,
    @required this.status,
    @required this.rewardScale,
    @required this.payer,
    @required this.owner,
    @required this.nonce,
    @required this.name,
    @required this.mode,
    @required this.locationHex,
    @required this.location,
    @required this.lastPocChallenge,
    @required this.lastChangeBlock,
    @required this.geocode,
    @required this.gain,
    @required this.elevation,
    @required this.blockAdded,
    @required this.block,
    @required this.address,
  });

  final DateTime timestampAdded;
  final Status status;
  final dynamic rewardScale;
  final String payer;
  final String owner;
  final int nonce;
  final String name;
  final String mode;
  final dynamic locationHex;
  final dynamic location;
  final dynamic lastPocChallenge;
  final int lastChangeBlock;
  final Geocode geocode;
  final int gain;
  final int elevation;
  final int blockAdded;
  final int block;
  final String address;

  Hotspot copyWith({
    DateTime timestampAdded,
    Status status,
    dynamic rewardScale,
    String payer,
    String owner,
    int nonce,
    String name,
    String mode,
    dynamic locationHex,
    dynamic location,
    dynamic lastPocChallenge,
    int lastChangeBlock,
    Geocode geocode,
    int gain,
    int elevation,
    int blockAdded,
    int block,
    String address,
  }) =>
      Hotspot(
        timestampAdded: timestampAdded ?? this.timestampAdded,
        status: status ?? this.status,
        rewardScale: rewardScale ?? this.rewardScale,
        payer: payer ?? this.payer,
        owner: owner ?? this.owner,
        nonce: nonce ?? this.nonce,
        name: name ?? this.name,
        mode: mode ?? this.mode,
        locationHex: locationHex ?? this.locationHex,
        location: location ?? this.location,
        lastPocChallenge: lastPocChallenge ?? this.lastPocChallenge,
        lastChangeBlock: lastChangeBlock ?? this.lastChangeBlock,
        geocode: geocode ?? this.geocode,
        gain: gain ?? this.gain,
        elevation: elevation ?? this.elevation,
        blockAdded: blockAdded ?? this.blockAdded,
        block: block ?? this.block,
        address: address ?? this.address,
      );

  factory Hotspot.fromRawJson(String str) => Hotspot.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Hotspot.fromJson(Map<String, dynamic> json) => Hotspot(
        timestampAdded: DateTime.parse(json["timestamp_added"]),
        status: Status.fromJson(json["status"]),
        rewardScale: json["reward_scale"],
        payer: json["payer"],
        owner: json["owner"],
        nonce: json["nonce"],
        name: json["name"],
        mode: json["mode"],
        locationHex: json["location_hex"],
        location: json["location"],
        lastPocChallenge: json["last_poc_challenge"],
        lastChangeBlock: json["last_change_block"],
        geocode: Geocode.fromJson(json["geocode"]),
        gain: json["gain"],
        elevation: json["elevation"],
        blockAdded: json["block_added"],
        block: json["block"],
        address: json["address"],
      );

  Map<String, dynamic> toJson() => {
        "timestamp_added": timestampAdded.toIso8601String(),
        "status": status.toJson(),
        "reward_scale": rewardScale,
        "payer": payer,
        "owner": owner,
        "nonce": nonce,
        "name": name,
        "mode": mode,
        "location_hex": locationHex,
        "location": location,
        "last_poc_challenge": lastPocChallenge,
        "last_change_block": lastChangeBlock,
        "geocode": geocode.toJson(),
        "gain": gain,
        "elevation": elevation,
        "block_added": blockAdded,
        "block": block,
        "address": address,
      };
}

class Geocode {
  Geocode({
    @required this.shortStreet,
    @required this.shortState,
    @required this.shortCountry,
    @required this.shortCity,
    @required this.longStreet,
    @required this.longState,
    @required this.longCountry,
    @required this.longCity,
    @required this.cityId,
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

class Status {
  Status({
    @required this.timestamp,
    @required this.online,
    @required this.listenAddrs,
    @required this.height,
  });

  final DateTime timestamp;
  final Online online;
  final List<String> listenAddrs;
  final int height;

  Status copyWith({
    DateTime timestamp,
    Online online,
    List<String> listenAddrs,
    int height,
  }) =>
      Status(
        timestamp: timestamp ?? this.timestamp,
        online: online ?? this.online,
        listenAddrs: listenAddrs ?? this.listenAddrs,
        height: height ?? this.height,
      );

  factory Status.fromRawJson(String str) => Status.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Status.fromJson(Map<String, dynamic> json) => Status(
        timestamp: DateTime.parse(json["timestamp"]),
        online: onlineValues.map[json["online"]],
        listenAddrs: List<String>.from(json["listen_addrs"].map((x) => x)),
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "timestamp": timestamp.toIso8601String(),
        "online": onlineValues.reverse[online],
        "listen_addrs": List<dynamic>.from(listenAddrs.map((x) => x)),
        "height": height,
      };
}

enum Online { ONLINE }

final onlineValues = EnumValues({"online": Online.ONLINE});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
