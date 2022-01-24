import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:goodhome/application.dart';
import 'package:get/get.dart';

import 'logic.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    final loginLogic = Get.find<LoginController>();
    Size size = MediaQuery.of(context).size;
    double _mainHeight = size.width / 2.7;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: GetBuilder<LoginController>(
        builder: (loginLogic) {
          return Stack(
            fit: StackFit.expand,
            //填充
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: _mainHeight, bottom: 32),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/home.png",
                              height: 60,
                              width: 60,
                            ),
                            const Text(
                              "Home",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      Form(
                        key: loginLogic.formKey,
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              height: 50,
                              width: 280,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.black, width: 1),
                                borderRadius: BorderRadius.circular((50.0)),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: Image.asset("assets/home.png"),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: TextFormField(
                                      validator: (value) {
                                        RegExp reg = new RegExp(
                                            r'^[\u4e00-\u9fa5a-zA-Z0-9]{5,12}$');
                                        if (!reg.hasMatch(value!)) {
                                          return '请输入正确的用户名';
                                        }
                                        return null;
                                      },
                                      autofocus: true,
                                      controller: loginLogic.unameController,
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        labelText: "用户名",
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                bottom: 10,
                              ),
                              padding: const EdgeInsets.only(left: 20),
                              height: 50,
                              width: 280,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.black, width: 1),
                                borderRadius: BorderRadius.circular((50.0)),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 3,
                                    child: TextFormField(
                                      validator: (value) {
                                        RegExp reg = new RegExp(
                                            r'^(?=.*[a-z])(?=.*\d)[^]{6,16}$');
                                        if (!reg.hasMatch(value!)) {
                                          return '必须字母和数字6-16位';
                                        }
                                        return null;
                                      },
                                      obscureText: loginLogic.passwordShow,
                                      controller: loginLogic.passwordController,
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        labelText: "密码",
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: IconButton(
                                        onPressed: () {
                                          loginLogic.passWordShowBar();
                                        },
                                        splashColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        icon: Icon(
                                          loginLogic.passwordIcon,
                                          color: Colors.red,
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Checkbox(
                              value: loginLogic.isAcceptSelected,
                              activeColor: Colors.red, //选中时的颜色
                              onChanged: (value) {
                                loginLogic.checkAcceptShow(value);
                              }),
                          const Text("已阅读并同意"),
                          TextButton(
                              onPressed: () {
                                Get.toNamed(RouteConfig.userLicences);
                              },
                              child: const Text("服务协议"))
                        ],
                      ),
                      Opacity(
                        opacity: loginLogic.showDelog,
                        child: const Text(
                          "必须同意使用协议后才能登陆",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30, bottom: 40),
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular((50.0)),
                          color: Colors.white,
                          border: Border.all(color: Colors.black, width: 1),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 3.0,
                                spreadRadius: 1.0),
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(1.0, 1.0)),
                            BoxShadow(color: Colors.black45)
                          ],
                        ),
                        child: IconButton(
                          onPressed: () {
                            loginLogic.checkLoginShow();
                          },
                          icon: const Icon(Icons.arrow_forward_sharp),
                          iconSize: 50,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Positioned(
                  left: 0,
                  right: 0,
                  bottom: size.width / 25,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: TextButton(
                            onPressed: () {
                              loginLogic.phoneLogin();
                            },
                            child: const Text(
                              "手机号登陆",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            )),
                      ),
                      const Expanded(
                        flex: 1,
                        child: Text(
                          "|",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: TextButton(
                            onPressed: () {
                              loginLogic.returnPassword();
                            },
                            child: const Text(
                              "返回首页",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            )),
                      ),
                      const Expanded(
                        flex: 1,
                        child: Text(
                          "|",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: TextButton(
                            onPressed: () {
                              loginLogic.registerUser();
                            },
                            child: const Text(
                              "新用户注册",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            )),
                      ),
                    ],
                  )),
              Positioned(
                top: size.height / 4,
                left: size.width / 2.6,
                child: Visibility(
                  visible: loginLogic.lodingShow,
                  //是否保持占位
                  maintainState: false,
                  child: const CupertinoActivityIndicator(
                    radius: 40.0,
                    animating: true,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
