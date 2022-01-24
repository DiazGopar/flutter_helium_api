import 'dart:convert';

class Status {
  Status({
    this.timestamp,
    required this.online,
    this.listenAddrs,
    required this.height,
  });

  final DateTime? timestamp;
  final String online;
  final List<String>? listenAddrs;
  final int height;

  Status copyWith({
    DateTime? timestamp,
    required String online,
    required List<String> listenAddrs,
    required int height,
  }) =>
      Status(
        timestamp: this.timestamp,
        online: this.online,
        listenAddrs: this.listenAddrs,
        height: this.height,
      );

  factory Status.fromRawJson(String str) => Status.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Status.fromJson(Map<String, dynamic> json) => Status(
        timestamp: json["timestamp"] == null
            ? null
            : DateTime.parse(json["timestamp"]),
        online: json["online"],
        listenAddrs: json["listenAddrs"] == null
            ? null
            : List<String>.from(json["listen_addrs"].map((x) => x)),
        height: json["height"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "timestamp": timestamp!.toIso8601String(),
        "online": online,
        "listen_addrs": List<dynamic>.from(listenAddrs!.map((x) => x)),
        "height": height,
      };
}
