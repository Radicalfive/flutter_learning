// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_app/pages/home_page.dart';
import 'package:share_app/pages/index_page.dart';
import 'package:share_app/pages/login_page.dart';
import 'package:share_app/pages/mine_page.dart';
import 'package:share_app/pages/share_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //设置状态栏颜色
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IndexPage(),
      // home: LoginPage(),
      // home: MinePage(),
      // home: SharePage(),
    );
  }
}
