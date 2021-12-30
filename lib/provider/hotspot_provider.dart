import 'package:dio/dio.dart';
import "package:flutter_helium_api/models/hotspot.dart";

class HotSpotClient {
  final Dio _dio = Dio();
  final _baseurl = "https://api.helium.io";

  var options = BaseOptions(
    baseUrl: "https://api.helium.io",
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );

  HotSpotClient() {
    _dio.options.connectTimeout = 5000;
    _dio.options.receiveTimeout = 3000;
  }

  Future<Hotspot?> getHotSpotbyAddress({required String hostAddress}) async {
    Hotspot? hotspot;

    try {
      Response response =
          await _dio.get(_baseurl + "/v1/hotspots/$hostAddress");
      // ignore: avoid_print
      print("HotSpotResponse Data: ${response.data}");
      HotspotResponse hotspotResponse = HotspotResponse.fromJson(response.data);
      // ignore: avoid_print
      print("HotSpot: ${hotspotResponse.toString()}");
      hotspot = hotspotResponse.hotspot;
    } on DioError catch (e) {
      if (e.response != null) {
        // ignore: avoid_print
        print(e.response?.statusCode);
        // ignore: avoid_print
        print(e.response?.data);
        // ignore: avoid_print
        print(e.response?.headers);
      } else {
        // ignore: avoid_print
        print(e.message);
      }
    }

    return hotspot;
  }
}
