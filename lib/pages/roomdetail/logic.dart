import 'package:get/get.dart';

class RoomdetailLogic extends GetxController {
  int x=0;
  void increase(){

  }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    var map=Get.parameters;
    x=map['intx'] as int;
    update();
  }

}
