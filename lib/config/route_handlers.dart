import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:goodhome/pages/home/index.dart';
import 'package:goodhome/pages/login.dart';
import 'package:goodhome/pages/romm_detail/index.dart';

var rootHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const HomePage();
});

var loginHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const LoginPage();
});

var roomDetailHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  String? id = params["id"]?.first;
  String? result = params["result"]?.first;
  return RoomDetail(
    id: id ?? "Test",
    result: result,
  );
});
