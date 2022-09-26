// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

import '../model/ShareResponse.dart';

class SharePage extends StatefulWidget {
  const SharePage({Key? key}) : super(key: key);

  @override
  State<SharePage> createState() => _SharePageState();
}

class _SharePageState extends State<SharePage> {
  late final int id;
  late final int userId;
  late final String title;
  late final String createTime;
  late final String updateTime;
  late final int isOriginal;
  late final String author;
  late final String cover;
  late final String summary;
  late final int price;
  late final String downloadUrl;
  late final int buyCount;
  late final int showFlag;
  late final String auditStatus;
  late final String reason;
  final List _list = [];

  @override
  void initState() {
    super.initState();
    _getShare();
  }

  Future _getShare() async {
    var dio = Dio();
    const apiShare = "http://124.222.178.129:10000/api/v1/shares/all";

    var response = await dio.get(apiShare);
    ShareResponse res =
        ShareResponse.fromJson(json.decode(response.toString()));
    var _list = res.data.toList();
    // print(_list);
    // print(response.data);
    setState(() {
      this._list.addAll(_list);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('share'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: _list.length,
          itemBuilder: (context, index) {
            return Scaffold(
              body: _listItem(_list[index]),
            );
          },
        ),
      ),
    );
  }

  Column _listItem(item) {
    return Column(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 16 / 9,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
            child: Image.network(
              item.cover,
              fit: BoxFit.cover,
            ),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(item.avatar),
          ),
          title: Text(item.title),
          subtitle: Text(item.author),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
          child: Text(
            item.summary,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(16, 10, 16, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("￥${item.price}"),
              Text("url=${item.downLoad}"),
              Text("已售:${item.buyCount}")
            ],
          ),
        ),
        ButtonTheme(
          child: ButtonBar(
            children: <Widget>[
              FlatButton(
                child: Text('Buy'.toUpperCase()),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('details'.toUpperCase()),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

