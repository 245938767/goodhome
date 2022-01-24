import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:goodhome/pages/home/index.dart';
import 'package:goodhome/pages/login/binding.dart';
import 'package:goodhome/pages/login/login.dart';
import 'package:goodhome/pages/not_found.dart';
import 'package:goodhome/pages/roomdetail/view.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(Application());
}

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      unknownRoute:
          GetPage(name: "/notFound", page: () => const NotFoundPage()),
      initialRoute: RouteConfig.main,
      getPages: RouteConfig.getPages,
    );
  }
}

class RouteConfig {
  ///主页面
  static const String main = "/";
  static String login = "/login";
  static String roomDetail = "/roomDetailPage";
  static String userLicences = "/userLicences";
  static String register = "/register";
  static String phoneLogin = "/phoneLogin";
  static String notFound = "/notFound";

  ///别名映射页面
  static final List<GetPage> getPages = [
    GetPage(name: main, page: () => HomePage()),
    GetPage(name: login, page: () => LoginPage(), binding: LoginBinding()),
    GetPage(name: roomDetail, page: () => RoomdetailPage()),
    GetPage(name: notFound, page: () => const NotFoundPage()),
  ];
}
