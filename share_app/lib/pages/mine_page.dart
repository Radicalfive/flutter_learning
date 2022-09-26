// ignore_for_file: prefer_const_constructors
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:share_app/model/UserResponse.dart';

class MinePage extends StatefulWidget {
  const MinePage({Key? key}) : super(key: key);

  @override
  State<MinePage> createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  late int id;
  late String mobile='';
  late String password='';
  late String nickname = '未登录';
  late String roles = '普通';
  late String avatar='https://ossstored.oss-cn-shanghai.aliyuncs.com/Vertical-bg/20200921053915518.jpg';
  late String createTime='';
  late String updateTime='';
  late int bonus;

  @override
  void initState() {
    super.initState();
    _getUser();
  }

  Future _getUser() async {
    var dio = Dio();
    const apiUser = "http://124.222.178.129:10000/api/v1/users/3";

    var response = await dio.get(apiUser);
    print(response.toString());

    UserResponse res = UserResponse.fromJson(json.decode(response.toString()));
    setState(() {
      id = res.data.id;
      mobile = res.data.mobile;
      password = res.data.password;
      nickname = res.data.nickname;
      roles = res.data.roles;
      avatar = res.data.avatar;
      createTime = res.data.createTime;
      updateTime = res.data.updateTime;
      bonus = res.data.bonus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade100,
      body: Stack(
        children: <Widget>[
          SizedBox(
            // 背景底图
            height: MediaQuery.of(context).size.height,
            child: Image.network(
              'https://ossstored.oss-cn-shanghai.aliyuncs.com/Vertical-bg/20200921053915518.jpg',
              fit: BoxFit.fitHeight,
            ),
          ),
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.fromLTRB(16, 120, 16, 16),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(16),
                        margin: const EdgeInsets.only(top: 32),
                        decoration: BoxDecoration(
                          color: Colors.white.withAlpha(180),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(left: 100),
                              child: _buildColumn(context),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            // _buildRow(),
                          ],
                        ),
                      ),
                      // 头像：指定大小，圆角，左外边距
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: NetworkImage(avatar),
                            fit: BoxFit.cover,
                          ),
                        ),
                        margin: const EdgeInsets.only(left: 16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Card(
                    color: Colors.white.withAlpha(160),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 10,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title: Text(
                              "mobile",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            subtitle: Text(
                              mobile,
                            ),
                            leading: const Icon(Icons.mobile_friendly),
                            trailing: const Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title: Text(
                              "createTime",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            subtitle: Text(
                              createTime,
                            ),
                            leading: const Icon(Icons.timer_sharp),
                            trailing: const Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title: Text(
                              "updateTime",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            subtitle: Text(
                              updateTime,
                            ),
                            leading: const Icon(Icons.timer_rounded),
                            trailing: const Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  // 构建名片上方区域
  Column _buildColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(nickname, style: Theme.of(context).textTheme.headline4),
        ListTile(
          contentPadding: EdgeInsets.all(0),
          title: Text(roles),
          // subtitle: Text("Flutter Developer"),
        ),
      ],
    );
  }
}
