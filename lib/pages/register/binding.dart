import 'package:get/get.dart';
import 'package:goodhome/pages/register/logic.dart';

class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() => RegisterController());
  }
}
