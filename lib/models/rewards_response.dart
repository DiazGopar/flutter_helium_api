import 'dart:convert';

RewardsResponse rewardsResponseFromJson(String str) =>
    RewardsResponse.fromJson(json.decode(str));

String rewardsResponseToJson(RewardsResponse data) =>
    json.encode(data.toJson());

class RewardsResponse {
  RewardsResponse({
    required this.data,
    this.cursor = "",
  });

  List<Reward> data;
  String cursor;

  RewardsResponse copyWith({
    required List<Reward> data,
    String? cursor,
  }) =>
      RewardsResponse(
        data: this.data,
        cursor: this.cursor,
      );

  factory RewardsResponse.fromJson(Map<String, dynamic> json) =>
      RewardsResponse(
        data: List<Reward>.from(json["data"].map((x) => Reward.fromJson(x))),
        cursor: json["cursor"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "cursor": cursor,
      };
}

class Reward {
  Reward({
    required this.account,
    required this.amount,
    required this.block,
    required this.gateway,
    required this.hash,
    required this.timestamp,
  });

  String account;
  int amount;
  int block;
  String gateway;
  String hash;
  DateTime timestamp;

  Reward copyWith({
    required String account,
    required int amount,
    required int block,
    required String gateway,
    required String hash,
    required DateTime timestamp,
  }) =>
      Reward(
        account: this.account,
        amount: this.amount,
        block: this.block,
        gateway: this.gateway,
        hash: this.hash,
        timestamp: this.timestamp,
      );

  factory Reward.fromJson(Map<String, dynamic> json) => Reward(
        account: json["account"],
        amount: json["amount"],
        block: json["block"],
        gateway: json["gateway"],
        hash: json["hash"],
        timestamp: DateTime.parse(json["timestamp"]),
      );

  Map<String, dynamic> toJson() => {
        "account": account,
        "amount": amount,
        "block": block,
        "gateway": gateway,
        "hash": hash,
        "timestamp": timestamp.toIso8601String(),
      };
}
