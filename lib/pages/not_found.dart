import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("404"),),
      body: const Center(
        child: Text("您访问的页面不存在！！！ ",style: TextStyle(
          color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}
