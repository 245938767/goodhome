import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'config/router_application.dart';
import 'config/routes.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(const Application());
}
class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  _ApplicationState() {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    RouterApplication.router = router;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      onGenerateRoute: RouterApplication.router.generator,
    );
  }
}


