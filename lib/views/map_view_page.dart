import 'package:flutter/material.dart';
import 'package:flutter_helium_api/controllers/map_position_controller.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

class MapViewPage extends StatelessWidget {
  final MapController _mapController = MapController();
  final MapPositionRxController _mapBoundsRxController =
      Get.put(MapPositionRxController());
  bool isMapRead = false;

  MapViewPage({Key? key}) : super(key: key);

  void _onPositionChanged(MapPosition mapPosition, bool isMapRead) {
    // ignore: avoid_print
    _mapBoundsRxController.setBounds(mapPosition);
    /*print("onPositionChanged: " +
        mapPosition.bounds!.southWest.toString() +
        " " +
        mapPosition.bounds!.northEast.toString() +
        " " +
        isMapRead.toString());*/
  }

  void _onMapCreated(MapController mapController) {
    // ignore: avoid_print
    print("onMapCreated: " + mapController.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hotspot locations'),
      ),
      body: FlutterMap(
        mapController: _mapController,
        options: MapOptions(
          center: LatLng(27.964542, -16.960667),
          zoom: 8.0,
          onMapCreated: (m) => _onMapCreated(m),
          onPositionChanged: (m, b) => _onPositionChanged(m, b),
        ),
        layers: [
          TileLayerOptions(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c'],
            attributionBuilder: (_) {
              return const Text("© OpenStreetMap contributors");
            },
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                point: LatLng(28.488809, -16.319809),
                builder: (context) => const Icon(
                  Icons.signal_cellular_alt,
                  size: 30,
                  color: Colors.blueAccent,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
