import 'package:flutter_helium_api/models/coordinate_square.dart';
import 'package:flutter_helium_api/models/hotspot.dart';
import 'package:flutter_helium_api/provider/hotspot_web_provider.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';

class HotspotRxController extends GetxController {
  final listHotspot = <Hotspot>[].obs;
  final mapPosition = MapPosition().obs;
  final _hotspotClient = HotSpotClient();

  static HotspotRxController get to => Get.find();

  setBoundariesOfSearch({required MapPosition mapPosition}) async {
    CoordinateSquare coordinatesquare;

    coordinatesquare = CoordinateSquare(
        southwesternlat: mapPosition.bounds!.southWest!.latitude,
        southwesternlong: mapPosition.bounds!.southWest!.longitude,
        northeasternlat: mapPosition.bounds!.northEast!.latitude,
        northeasternlong: mapPosition.bounds!.northEast!.longitude);

    listHotspot.value = await _hotspotClient.getHotSpotsbyCoordinatesSquared(
      coordinatesquare: coordinatesquare,
    );
  }

  setBounds(newPosition) {
    mapPosition.value = newPosition;
  }

  @override
  void onInit() {
    // ignore: avoid_print
    debounce(
      mapPosition,
      (_) {
        setBoundariesOfSearch(mapPosition: mapPosition.value);
        // ignore: avoid_print
        print(mapPosition.value.bounds!.center.toString());
        // ignore: avoid_print
        print(mapPosition.value.bounds!.southEast.toString());
        // ignore: avoid_print
        print(mapPosition.value.bounds!.northWest.toString());
        // ignore: avoid_print
        print(mapPosition.value.zoom.toString());
      },
      time: const Duration(milliseconds: 150),
    );
    super.onInit();
  }
}
