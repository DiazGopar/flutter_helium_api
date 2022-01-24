import 'package:flutter/material.dart';
import 'package:flutter_helium_api/controllers/hotspot_controller.dart';
import 'package:flutter_helium_api/widgets/zoombuttons_plugin_option.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

class MapViewPage extends StatelessWidget {
  final MapController _mapController = MapController();
  final HotspotRxController _hotspotRxController =
      Get.put(HotspotRxController());

  MapViewPage({Key? key}) : super(key: key);

  void _onPositionChanged(MapPosition mapPosition, bool isMapRead) {
    _hotspotRxController.setBounds(mapPosition);
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
      body: Obx(() => FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              center: LatLng(27.964542, -16.960667),
              zoom: 10.0,
              onMapCreated: (m) => _onMapCreated(m),
              onPositionChanged: (m, b) => _onPositionChanged(m, b),
              plugins: [
                ZoomButtonsPlugin(),
              ],
            ),
            layers: [
              TileLayerOptions(
                urlTemplate:
                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c'],
                attributionBuilder: (_) {
                  return const Text("© OpenStreetMap contributors");
                },
              ),
              MarkerLayerOptions(
                markers: _hotspotRxController.listHotspot
                    .map((element) => Marker(
                          point: LatLng(element.lat, element.lng),
                          anchorPos: AnchorPos.exactly(Anchor(15, 0)),
                          builder: (context) => Icon(
                            Icons.place,
                            size: 30,
                            color: element.status.online == "online"
                                ? Colors.greenAccent[700]
                                : Colors.redAccent,
                          ),
                        ))
                    .toList(),
              ),
            ],
            nonRotatedLayers: [
              ZoomButtonsPluginOption(
                minZoom: 4,
                maxZoom: 19,
                mini: true,
                padding: 10,
                alignment: Alignment.bottomRight,
              ),
            ],
          )),
    );
  }
}
