import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class ControllerPage extends StatelessWidget {
  final logic = Get.put(ControllerLogic());
  final state = Get.find<ControllerLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
