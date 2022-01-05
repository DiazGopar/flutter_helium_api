import 'dart:core';
import 'package:dio/dio.dart';
import 'package:flutter_helium_api/models/rewards_response.dart';

import 'logging_interceptor.dart';

class HotSpotRewardClient {
  final Dio _dio = Dio();

  HotSpotRewardClient() {
    _dio.options.baseUrl = "https://api.helium.io";
    _dio.options.connectTimeout = 5000;
    _dio.options.receiveTimeout = 3000;
    _dio.options.headers['User-Agent'] = "HeliumGoparExplorer";
    _dio.interceptors.add(LoggingInterceptor());
  }

  Future<Reward> getHotSpotRewardsbyAddress(
      {required String hostAddress}) async {
    try {
      Response response = await _dio.get("/v1/hotspots/$hostAddress/rewards");
      RewardsResponse hotspotRewardResponse =
          RewardsResponse.fromJson(response.data);
      hotspotRewardResponse.cursor hotspot = hotspotResponse.hotspot;
    } on DioError {
      rethrow;
    }
    return hotspot;
  }
}
