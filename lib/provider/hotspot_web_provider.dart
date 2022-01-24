import 'dart:core';
import 'package:dio/dio.dart';
import 'package:flutter_helium_api/controllers/download_status_controller.dart';
import "package:flutter_helium_api/models/hotspot.dart";
import "package:flutter_helium_api/models/coordinate_square.dart";
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

import 'logging_interceptor.dart';

class WebClient {
  final DownloadStatusRxController _downloadStatusRxController =
      Get.put(DownloadStatusRxController());
  final Dio _dio = Dio();

  //Stream<double> _percentageStream;

  WebClient() {
    _dio.options.baseUrl = "https://api.helium.io";
    _dio.options.connectTimeout = 5000;
    _dio.options.receiveTimeout = 3000;
    _dio.options.headers['User-Agent'] = "HeliumGoparExplorer";
    _dio.interceptors.add(LoggingInterceptor());
  }

  Future<Response<dynamic>> get(String url) async {
    return _dio.get(
      url,
      onReceiveProgress: (received, total) {
        _downloadStatusRxController
            .setPercentage((received / total * 100).floor());
        /*
        print(
            'progress: ${(received / total * 100).toStringAsFixed(0)}% ($received/$total)');*/
      },
    );
  }
}

class HotSpotClient {
  final DownloadStatusRxController _downloadStatusRxController =
      Get.put(DownloadStatusRxController());
  final Dio _dio = Dio();

  HotSpotClient() {
    _dio.options.baseUrl = "https://api.helium.io";
    _dio.options.connectTimeout = 5000;
    _dio.options.receiveTimeout = 3000;
    _dio.options.headers['User-Agent'] = "HeliumGoparExplorer";
    _dio.interceptors.add(LoggingInterceptor());
  }

  Future<Hotspot?> getHotSpotbyAddress({required String hostAddress}) async {
    Hotspot? hotspot;

    try {
      Response response = await _dio.get("/v1/hotspots/$hostAddress");
      HotspotResponse hotspotResponse = HotspotResponse.fromJson(response.data);
      hotspot = hotspotResponse.hotspot;
    } on DioError {
      rethrow;
    }
    return hotspot;
  }

  Future<List<Hotspot>> getHotSpotsbyName({required String name}) async {
    List<Hotspot> hotspots;

    try {
      Response response = await _dio.get("/v1/hotspots/name/$name");
      ListHotspotResponse listhotspotResponse =
          ListHotspotResponse.fromJson(response.data);
      hotspots = listhotspotResponse.data;
    } on DioError {
      rethrow;
    }
    return hotspots;
  }

  Future<List<Hotspot>> getHotSpotsbyCoordinatesSquared(
      {required CoordinateSquare coordinatesquare}) async {
    List<Hotspot> hotspots = <Hotspot>[];

    try {
      Response response = await _dio.get(
        "/v1/hotspots/location/box/${coordinatesquare.toInlineParams()}",
        onReceiveProgress: (received, total) {
          _downloadStatusRxController
              .setPercentage((received / total * 100).floor());
          /*
        print(
            'progress: ${(received / total * 100).toStringAsFixed(0)}% ($received/$total)');*/
        },
      );
      ListHotspotResponse listhotspotResponse =
          ListHotspotResponse.fromJson(response.data);
      hotspots.addAll(listhotspotResponse.data);

      while (listhotspotResponse.cursor != "") {
        response = await _dio.get(
          "/v1/hotspots/location/box/${coordinatesquare.toInlineParams()}",
          queryParameters: {
            'cursor': listhotspotResponse.cursor,
          },
          onReceiveProgress: (received, total) {
            _downloadStatusRxController
                .setPercentage((received / total * 100).floor());
            /*
        print(
            'progress: ${(received / total * 100).toStringAsFixed(0)}% ($received/$total)');*/
          },
        );
        listhotspotResponse = ListHotspotResponse.fromJson(response.data);
        hotspots.addAll(listhotspotResponse.data);
      }
    } on DioError {
      rethrow;
    }
    return hotspots;
  }
}
