// ignore_for_file: prefer_const_constructors, avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

class HttpClientPage extends StatefulWidget {
  const HttpClientPage({Key? key}) : super(key: key);

  @override
  State<HttpClientPage> createState() => _HttpClientPageState();
}

class _HttpClientPageState extends State<HttpClientPage> {
  final String _info = '请求数据';

  @override
  void initState() {
    super.initState();
    _getHttp();
  }

  void _getHttp() async {
    // 1. 创建网络请求实例
    var httpClient = HttpClient();
    // 2. 设置通用行为
    httpClient.idleTimeout = Duration(seconds: 5);
    // 3. 构建URI，设置请求头，请求体
    var uri = Uri.parse('http://localhost:8080/greet/flutter');
    var request = await httpClient.getUrl(uri);

    request.headers.add('user-agent', 'Custom-UA');

    // 4. 发送请求，等待响应
    var response = await request.close();
    // 5. 解析结果
    if (response.statusCode == HttpStatus.ok) {
      var resDate = await response.transform(utf8.decoder).join();
      print(resDate);
    } else {
      print('Error:\n HttpStatus${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'http网络请求',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          _info,
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
    );
  }
}
