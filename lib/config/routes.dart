
import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:goodhome/config/route_handlers.dart';
import 'package:goodhome/pages/not_found.dart';

class Routes {
  static String root = "/";
  static String login="/login";
  static String roomDetail = "/roomDetail";


  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
          if (kDebugMode) {
            print("ROUTE WAS NOT FOUND !!!");
          }
          return const NotFoundPage();
        });
    router.define(login, handler: loginHandler);
    router.define(root, handler: rootHandler);
    router.define(roomDetail, handler: roomDetailHandler);
  }
}