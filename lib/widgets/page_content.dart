import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:goodhome/application.dart';
class PageContent extends StatelessWidget {
  final String name;

  const PageContent({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String x="123";
    return Scaffold(
      appBar: AppBar(
        title: Text("当前页面:$name"),
      ),
      body: ListView(
        children: <Widget>[
          FlatButton(
              onPressed: () {
                Get.toNamed(RouteConfig.main);
              },
              child: const Text("首页")),
          FlatButton(
              onPressed: () {
                Get.toNamed(RouteConfig.login);
              },
              child: const Text("登陆")),
          FlatButton(
              onPressed: () {
                Get.toNamed("/xx");
              },
              child: const Text("404")),
          FlatButton(
              onPressed: () {
                Get.toNamed(RouteConfig.roomDetail,arguments: {"intx":x});
              },
              child: const Text("传参数")),
        ],
      ),
    );
  }
}
