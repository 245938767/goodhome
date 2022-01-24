import 'package:get/get.dart';

class RoomdetailLogic extends GetxController {
  String x = "0";
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onInit() {
    var map = Get.arguments;
    print(map);
    x = map.toString();
    update();
    // TODO: implement onInit
    super.onInit();
  }
}
