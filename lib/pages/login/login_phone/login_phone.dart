import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class LoginPhonePage extends GetView<LoginPhoneController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('LoginPhonePage')),
        body: SafeArea(child: Text('LoginPhoneController')));
  }
}
