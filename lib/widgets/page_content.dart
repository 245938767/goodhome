import 'package:flutter/material.dart';
import 'package:goodhome/config/router_application.dart';

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
                RouterApplication.router.navigateTo(context, "/");
              },
              child: const Text("首页")),
          FlatButton(
              onPressed: () {
                RouterApplication.router.navigateTo(context, "/login");
              },
              child: const Text("登陆")),
          FlatButton(
              onPressed: () {
                RouterApplication.router.navigateTo(context, "/xxx");
              },
              child: const Text("404")),
          FlatButton(
              onPressed: () {
                RouterApplication.router.navigateTo(context, "/roomDetail?id=$x");
              },
              child: const Text("传参数")),
        ],
      ),
    );
  }
}
