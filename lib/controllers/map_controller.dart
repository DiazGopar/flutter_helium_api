import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

class MapRxController extends GetxController {
  final MapController _mapcontroller = MapController();

  get mapcontroller => _mapcontroller;

  final bounds = LatLngBounds(LatLng(0.0, 0.0), LatLng(0.0, 0.0)).obs;
  //late final StreamSubscription<MapEvent> _mapEventSubscription;

  static MapRxController get to => Get.find();

  openPosition(center, zoom) => _mapcontroller.move(center, zoom);

  @override
  void onInit() {
    _mapcontroller.mapEventStream.listen(onMapEvent);
    bounds.value = _mapcontroller.bounds!;
    // ignore: avoid_print
    ever(bounds, (_) => print(bounds.value));
    super.onInit();
  }

  void onMapEvent(MapEvent mapEvent) {
    // ignore: avoid_print
    print(mapEvent.toString());
  }
}
