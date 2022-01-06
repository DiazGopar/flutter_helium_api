import 'dart:core';
import 'package:dio/dio.dart';
import 'package:flutter_helium_api/models/rewards_response.dart';
import 'package:intl/intl.dart';

import 'logging_interceptor.dart';

class HotSpotRewardClient {
  final Dio _dio = Dio();
  final DateFormat _formatter = DateFormat('yyyy-MM-dd');

  HotSpotRewardClient() {
    _dio.options.baseUrl = "https://api.helium.io";
    _dio.options.connectTimeout = 5000;
    _dio.options.receiveTimeout = 3000;
    _dio.options.headers['User-Agent'] = "HeliumGoparExplorer";
    _dio.interceptors.add(LoggingInterceptor());
  }

  Future<List<Reward>> getHotSpotRewardsbyAddressAndTimeInterval({
    required String hostAddress,
    required DateTime firstTime,
    required DateTime lastTime,
    //String cursor = "",
  }) async {
    List<Reward> rewards = <Reward>[];
    try {
      Response response = await _dio.get(
        "/v1/hotspots/$hostAddress/rewards",
        queryParameters: {
          'max_time': _formatter.format(lastTime),
          'min_time': _formatter.format(firstTime),
        },
      );
      RewardsResponse hotspotRewardResponse =
          RewardsResponse.fromJson(response.data);
      rewards.addAll(hotspotRewardResponse.data);
      while (hotspotRewardResponse.cursor != "") {
        response = await _dio.get(
          "/v1/hotspots/$hostAddress/rewards",
          queryParameters: {
            'max_time': _formatter.format(lastTime),
            'min_time': _formatter.format(firstTime),
            'cursor': hotspotRewardResponse.cursor,
          },
        );
        hotspotRewardResponse = RewardsResponse.fromJson(response.data);
        rewards.addAll(hotspotRewardResponse.data);
      }
    } on DioError {
      rethrow;
    }
    return rewards;
  }
}
