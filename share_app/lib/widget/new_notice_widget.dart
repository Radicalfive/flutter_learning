// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../model/NoticeResponse.dart';

class NewNoticeWidget extends StatefulWidget {
  const NewNoticeWidget({Key? key}) : super(key: key);

  @override
  State<NewNoticeWidget> createState() => _NewNoticeWidgetState();
}

class _NewNoticeWidgetState extends State<NewNoticeWidget> {
  String content = '';
  String time = '';

  @override
  void initState() {
    super.initState();
    _getHttp();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _getHttp() async {
    var dio = Dio();
    final response =
        await dio.get('http://124.222.178.129:10000/api/v1/notices/latest');
    // print(response.runtimeType.toString());
    NoticeResponse res =
        NoticeResponse.fromJson(json.decode(response.toString()));
    print(res);
    setState(() {
      content = res.data.content;
      time = res.data.createTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      height: 50,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Text("1"),
          Text(content),
          Text(time),
        ],
      ),
    );
  }
}
