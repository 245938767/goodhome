import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomDetail extends StatelessWidget {
   RoomDetail({String id="Test", String? result})
      : this.id = id,
        this.result = result;
  final String id;
  final String? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("带参页面"),
      ),
      body: Center(
        child: Text("传入的参数是：$id and $result"),
      ),
    );
  }
}
