// To parse this JSON data, do
//
//     final totalRewardResponse = totalRewardResponseFromJson(jsonString);

import 'dart:convert';

TotalRewardResponse totalRewardResponseFromJson(String str) =>
    TotalRewardResponse.fromJson(json.decode(str));

String totalRewardResponseToJson(TotalRewardResponse data) =>
    json.encode(data.toJson());

class TotalRewardResponse {
  TotalRewardResponse({
    required this.meta,
    required this.data,
  });

  TimeInterval meta;
  SummarizedRewardData data;

  TotalRewardResponse copyWith({
    required TimeInterval meta,
    required SummarizedRewardData data,
  }) =>
      TotalRewardResponse(
        meta: this.meta,
        data: this.data,
      );

  factory TotalRewardResponse.fromJson(Map<String, dynamic> json) =>
      TotalRewardResponse(
        meta: TimeInterval.fromJson(json["meta"]),
        data: SummarizedRewardData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "meta": meta.toJson(),
        "data": data.toJson(),
      };
}

class SummarizedRewardData {
  SummarizedRewardData({
    required this.total,
    required this.sum,
    required this.stddev,
    required this.min,
    required this.median,
    required this.max,
    required this.avg,
  });

  double total;
  int sum;
  double stddev;
  int min;
  double median;
  int max;
  double avg;

  SummarizedRewardData copyWith({
    required double total,
    required int sum,
    required double stddev,
    required int min,
    required double median,
    required int max,
    required double avg,
  }) =>
      SummarizedRewardData(
        total: this.total,
        sum: this.sum,
        stddev: this.stddev,
        min: this.min,
        median: this.median,
        max: this.max,
        avg: this.avg,
      );

  factory SummarizedRewardData.fromJson(Map<String, dynamic> json) =>
      SummarizedRewardData(
        total: json["total"].toDouble(),
        sum: json["sum"],
        stddev: json["stddev"].toDouble(),
        min: json["min"],
        median: json["median"].toDouble(),
        max: json["max"],
        avg: json["avg"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "total": total,
        "sum": sum,
        "stddev": stddev,
        "min": min,
        "median": median,
        "max": max,
        "avg": avg,
      };
}

class TimeInterval {
  TimeInterval({
    required this.minTime,
    required this.maxTime,
  });

  DateTime minTime;
  DateTime maxTime;

  TimeInterval copyWith({
    required DateTime minTime,
    required DateTime maxTime,
  }) =>
      TimeInterval(
        minTime: this.minTime,
        maxTime: this.maxTime,
      );

  factory TimeInterval.fromJson(Map<String, dynamic> json) => TimeInterval(
        minTime: DateTime.parse(json["min_time"]),
        maxTime: DateTime.parse(json["max_time"]),
      );

  Map<String, dynamic> toJson() => {
        "min_time": minTime.toIso8601String(),
        "max_time": maxTime.toIso8601String(),
      };
}
