import 'package:get/get.dart';

class RoomdetailLogic extends GetxController {
  String x = "0";
  void increase() {}
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    var map = Get.arguments;
    print(map);
    x = map.intx;
    update();
  }
}
