import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class RegisterPage extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('RegisterPage')),
        body: SafeArea(
            child: GetBuilder<RegisterController>(
          init: RegisterController(),
          builder: (controller) {
            return TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("back"));
          },
        )));
  }
}
