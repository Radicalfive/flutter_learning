// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:share_app/model/LoginResponse.dart';
import 'index_page.dart';

const Color color1 = Color(0xffcc95c0);
const Color color2 = Color(0xffdbd4b4);
const Color color3 = Color(0xff7aa1d2);

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey _key = GlobalKey<FormState>();
  final _username = TextEditingController();
  final _password = TextEditingController();
  var username = '13913457285';
  var password = '123123';

  @override
  void initState() {
    super.initState();
    // _login();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _username.dispose();
    _password.dispose();
    super.dispose();
  }

  Future _login() async {
    var dio = Dio();
    var apiLogin = "http://139.196.153.80:10000/api/v1/users/login";

    var res = await dio.post(
      apiLogin,
      data: {"username": username, "password": password},
    );

    LoginResponse response =
        LoginResponse.fromJson(json.decode(res.toString()));
    print(res);
    var code = response.code;
    return code;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 380,
                foregroundDecoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.15),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(300),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(300),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://ossstored.oss-cn-shanghai.aliyuncs.com/Vertical-bg/20200930113610974.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 70,
                      right: 50,
                      width: 100,
                      height: 150,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://ossstored.oss-cn-shanghai.aliyuncs.com/%E6%BC%82%E6%B5%AE%E5%85%83%E7%B4%A0/float-6.png',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        child: Container(
                      margin: EdgeInsets.only(top: 60, right: 120),
                      child: Center(
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(
                            color: color3,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(143, 148, 251, 0.4),
                              blurRadius: 20,
                              offset: Offset(5, 10),
                            )
                          ]),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey.shade200),
                              ),
                            ),
                            child: TextFormField(
                              controller: _username,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.mobile_friendly),
                                border: InputBorder.none,
                                hintText: "请输入电话号码",
                                hintStyle:
                                    TextStyle(color: Colors.grey.shade400),
                                labelText: "Mobile",
                              ),
                              validator: (v) {
                                if (v == null || v.isEmpty) {
                                  return "号码不能为空";
                                }
                                return null;
                              },
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: _password,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                border: InputBorder.none,
                                hintText: "请输入密码",
                                hintStyle:
                                    TextStyle(color: Colors.grey.shade400),
                                labelText: "Password",
                              ),
                              obscureText: true,
                              validator: (v) {
                                if (v == null || v.length < 5) {
                                  return "密码必须输入且大于5";
                                }
                                return null;
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 50),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          username = _username.text;
                          password = _password.text;
                        });
                        if ((_key.currentState as FormState).validate()) {
                          _login().then((value) {
                            if (value == 1) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => IndexPage()));
                            } else {
                              debugPrint('登录失败');
                            }
                          });
                        }
                        print((_key.currentState as FormState)
                            .validate()
                            .toString());
                        print("username:" + _username.text);
                        print("password:" + _password.text);
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: const [
                              color1,
                              color2,
                              color3,
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "SIGN IN",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    Text(
                      "Forgot Password ?",
                      style: TextStyle(color: color3),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
