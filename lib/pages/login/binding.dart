import 'package:get/get.dart';
import 'package:goodhome/pages/login/logic.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
