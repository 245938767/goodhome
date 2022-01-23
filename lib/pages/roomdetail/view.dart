import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class RoomdetailPage extends StatelessWidget {
  final logic = Get.put(RoomdetailLogic());

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("带参页面"),
          ),
          body: Center(
            child: Text("传入的参数是：${logic.x} "),
          ),
        );
      }
    );
  }
}
