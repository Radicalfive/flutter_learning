// ignore_for_file: avoid_print

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioPage extends StatefulWidget {
  const DioPage({Key? key}) : super(key: key);

  @override
  State<DioPage> createState() => _DioPageState();
}

class _DioPageState extends State<DioPage> {
  String? _info;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'dio网络请求',
          style: Theme.of(context).textTheme.headline5,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          _info!,
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    Dio dio = Dio();
    var response = await dio.get('http://localhost:8888/hello');
    if (response.statusCode == HttpStatus.ok) {
      print(response.data);
      setState(() {
        _info = response.data;
      });
    } else {
      print('Error:\n HttpStatus ${response.statusCode}');
    }
  }
}
