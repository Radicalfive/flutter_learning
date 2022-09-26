// ignore: import_of_legacy_library_into_null_safe
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter/material.dart';
import 'package:share_app/widget/new_notice_widget.dart';
import 'package:share_app/widget/share_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('share-app'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          slideshow(),
          SizedBox(height: 10),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  '最新公告:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              NewNoticeWidget(),
              ShareWidget(),
            ],
          )
        ],
      ),
    );
  }

  Widget slideshow() {
    return SizedBox(
      width: double.infinity,
      child: AspectRatio(
        // 配置宽高比
        aspectRatio: 16 / 9,
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            // 配置图片地址
            return Image.network(
              imageList[index]["url"],
              fit: BoxFit.fill,
            );
          },
          // 配置图片数量
          itemCount: imageList.length,
          // 底部分页器
          pagination: const SwiperPagination(),
          // 左右箭头
          // control: const SwiperControl(),
          // 无限循环
          loop: true,
          // 自动轮播
          autoplay: true,
        ),
      ),
    );
  }
}

List<Map> imageList = [
  {
    "url":
        "https://ossstored.oss-cn-shanghai.aliyuncs.com/bg/0432a40b6ab749f8ae473d5c7e9ce12a.jpg"
  },
  {
    "url":
        "https://ossstored.oss-cn-shanghai.aliyuncs.com/bg/08cb1986881b11ebb6edd017c2d2eca2.jpg"
  },
  {"url": "https://ossstored.oss-cn-shanghai.aliyuncs.com/bg/18080.jpg"},
  {
    "url":
        "https://ossstored.oss-cn-shanghai.aliyuncs.com/bg/76b54d3c880511ebb6edd017c2d2eca2.png"
  },
  {
    "url":
        "https://ossstored.oss-cn-shanghai.aliyuncs.com/bg/7e4afde0d80946dea5898e2dfa559b81.png"
  }
];
