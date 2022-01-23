import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:goodhome/application.dart';

class PageContent extends StatelessWidget {
  final String name;

  const PageContent({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String x = "123";
    return Scaffold(
      appBar: AppBar(
        title: Text("当前页面:$name"),
      ),
      body: ListView(
        children: <Widget>[
          FlatButton(
              onPressed: () {
                Get.offAllNamed(RouteConfig.main);
              },
              child: const Text("首页")),
          FlatButton(
              onPressed: () {
                Get.toNamed(RouteConfig.login);
              },
              child: const Text("登陆")),
          FlatButton(
              onPressed: () {
                Get.offAllNamed("/notf");
              },
              child: const Text("404")),
          FlatButton(
              onPressed: () {
                Get.toNamed(RouteConfig.roomDetail, arguments: {"intx": x});
              },
              child: const Text("传参数")),
          FlatButton(
            onPressed: () {
              Get.snackbar("get弹窗", "我是内容");
              // Get.defaultDialog(
              //     onConfirm: () => print("Ok"),
              //     middleText: "Dialog made in 3 lines of code");
              Get.bottomSheet(Container(
                child: Wrap(
                  children: <Widget>[
                    ListTile(
                        leading: Icon(Icons.music_note),
                        title: Text('Music'),
                        onTap: () {}),
                    ListTile(
                      leading: Icon(Icons.videocam),
                      title: Text('Video'),
                      onTap: () {},
                    ),
                  ],
                ),
              ));
            },
            child: const Text("get按钮"),
          ),
        ],
      ),
    );
  }
}
