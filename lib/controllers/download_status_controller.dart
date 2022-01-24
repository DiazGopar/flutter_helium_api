import 'package:get/get.dart';

class DownloadStatusRxController extends GetxController {
  final percentage = 0.obs;

  static DownloadStatusRxController get to => Get.find();

  setPercentage(newPercentage) {
    percentage.value = newPercentage;
  }

  @override
  void onInit() {
    ever(percentage, (_) {
      // ignore: avoid_print
      print(percentage.value);
    });
    super.onInit();
  }
}
