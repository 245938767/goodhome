import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goodhome/config/router_application.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _unameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _passwordShow = true;
  IconData _passwordIcon = Icons.visibility;
  bool _isAcceptSelected = false;
  double _showDelog = 0;
  bool _lodingShow = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double _mainHeight = size.width / 2.7;
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(
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
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      height: 50,
                      width: 280,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 1),
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
                            child: TextField(
                              autofocus: true,
                              controller: _unameController,
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
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular((50.0)),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: TextField(
                              // inputFormatters: [
                              // FilteringTextInputFormatter.allow(RegExp(
                              //     r"^(?![A-Z]+$)(?![a-z]+$)(?!\d+$)(?![\W_]+$)\S{6,16}$"))
                              // FilterChip(label: label, onSelected: onSelected)
                              // ],
                              obscureText: _passwordShow,
                              controller: _passwordController,
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
                                  setState(() {
                                    _passwordShow = !_passwordShow;
                                    if (_passwordShow) {
                                      _passwordIcon = Icons.visibility;
                                    } else {
                                      _passwordIcon = Icons.visibility_off;
                                    }
                                  });
                                },
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                icon: Icon(
                                  _passwordIcon,
                                  color: Colors.red,
                                ),
                              ))
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Checkbox(
                            value: _isAcceptSelected,
                            activeColor: Colors.red, //选中时的颜色
                            onChanged: (value) {
                              setState(() {
                                _isAcceptSelected = value!;
                                if (_isAcceptSelected == true) {
                                  _showDelog = 0;
                                }
                              });
                            }),
                        const Text("已阅读并同意"),
                        TextButton(
                            onPressed: () {
                              RouterApplication.router
                                  .navigateTo(context, "/userLicences");
                            },
                            child: const Text("服务协议"))
                      ],
                    ),
                    Opacity(
                      opacity: _showDelog,
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
                              color: Colors.black12, offset: Offset(1.0, 1.0)),
                          BoxShadow(color: Colors.black45)
                        ],
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (_isAcceptSelected == true) {
                              _login();
                            } else {
                              _showDelog = 1.0;
                            }
                          });
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
                            _phoneLogin();
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
                            _returnPassword();
                          },
                          child: const Text(
                            "找回密码",
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
                            _registerUser();
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
                visible: _lodingShow,
                //是否保持占位
                maintainState: false,
                child: const CupertinoActivityIndicator(
                  radius: 40.0,
                  animating: true,
                ),
              ),
            ),
          ],
        ));
  }

  _login() {
    String username = _unameController.value.text;
    String password = _passwordController.value.text;
    setState(() {
      if (username == "admin" && password == "admin") {
        _lodingShow = true;
      } else {
        _lodingShow = false;
      }
    });
  }

  _loginClick() async {}

  _registerUser() {
    RouterApplication.router.navigateTo(context, "/register");
  }

  _returnPassword() {
    RouterApplication.router.navigateTo(context, "/returnPassword");
  }

  _phoneLogin() {
    RouterApplication.router.navigateTo(context, "/phoneLogin");
  }
}
