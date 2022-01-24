import 'package:get/get.dart';

import 'logic.dart';

class LoginPhoneBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginPhoneController>(() => LoginPhoneController());
  }
}
