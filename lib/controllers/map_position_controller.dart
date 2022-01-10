import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';

class MapPositionRxController extends GetxController {
  final mapPosition = MapPosition().obs;
  //late final StreamSubscription<MapEvent> _mapEventSubscription;

  static MapPositionRxController get to => Get.find();

  setBounds(newPosition) {
    mapPosition.value = newPosition;
  }

  @override
  void onInit() {
    // ignore: avoid_print
    debounce(
      mapPosition,
      (_) {
        // ignore: avoid_print
        print(mapPosition.value.bounds!.center.toString());
        // ignore: avoid_print
        print(mapPosition.value.bounds!.southEast.toString());
        // ignore: avoid_print
        print(mapPosition.value.bounds!.northWest.toString());
        // ignore: avoid_print
        print(mapPosition.value.zoom.toString());
      },
      time: const Duration(milliseconds: 100),
    );
    super.onInit();
  }
}
