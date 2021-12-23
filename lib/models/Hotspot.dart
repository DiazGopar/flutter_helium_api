// To parse this JSON data, do
//
//     final hotspot = hotspotFromJson(jsonString);

import 'dart:convert';

import 'geocode.dart';
import 'status.dart';

class Hotspot {
  Hotspot({
    required this.timestampAdded,
    required this.status,
    required this.rewardScale,
    required this.payer,
    required this.owner,
    required this.nonce,
    required this.name,
    required this.mode,
    required this.locationHex,
    required this.location,
    required this.lastPocChallenge,
    required this.lastChangeBlock,
    required this.geocode,
    required this.gain,
    required this.elevation,
    required this.blockAdded,
    required this.block,
    required this.address,
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
    required DateTime timestampAdded,
    required Status status,
    dynamic rewardScale,
    required String payer,
    required String owner,
    required int nonce,
    required String name,
    required String mode,
    dynamic locationHex,
    dynamic location,
    dynamic lastPocChallenge,
    required int lastChangeBlock,
    required Geocode geocode,
    required int gain,
    required int elevation,
    required int blockAdded,
    required int block,
    required String address,
  }) =>
      Hotspot(
        timestampAdded: this.timestampAdded,
        status: this.status,
        rewardScale: rewardScale ?? this.rewardScale,
        payer: this.payer,
        owner: this.owner,
        nonce: this.nonce,
        name: this.name,
        mode: this.mode,
        locationHex: this.locationHex,
        location: this.location,
        lastPocChallenge: this.lastPocChallenge,
        lastChangeBlock: this.lastChangeBlock,
        geocode: this.geocode,
        gain: this.gain,
        elevation: this.elevation,
        blockAdded: this.blockAdded,
        block: this.block,
        address: this.address,
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
