import 'package:flutter/material.dart';
import 'package:flutter_helium_api/controllers/map_controller.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapViewPage extends StatelessWidget {
  static final MapController _mapController = MapRxController().mapcontroller;
  bool isMapRead = false;

  MapViewPage({Key? key}) : super(key: key) {
    // create instance only not exists another reference
    //_mapController ??= MapRxController().mapcontroller;
    // after onReady, flag local control variable
    _mapController.onReady.then((v) {
      isMapRead = v != null;
    });
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
            markers: [],
          ),
        ],
      ),
    );
  }
}
