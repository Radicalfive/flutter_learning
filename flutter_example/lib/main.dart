import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_example/login/login_one_page.dart';
import 'package:flutter_example/todo_list/todo_home_two_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //设置状态栏颜色
    statusBarColor: Colors.transparent,
  ));
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: TodoHomeTwoPage(),
    home: LoginOnePage(),
  ));
}
