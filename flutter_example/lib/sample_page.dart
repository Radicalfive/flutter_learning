// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_example/http/http_client_page.dart';
import 'package:flutter_example/ui/ui_index.dart';
import 'package:flutter_example/widget/primary_button.dart';

class SamplePage extends StatefulWidget {
  const SamplePage({Key? key}) : super(key: key);

  @override
  State<SamplePage> createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage> {
  @override
  Widget build(BuildContext context) {
    //获取当前组件的尺寸
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    // 用Container包裹Scaffold,设置背景图充满
    return Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://ossstored.oss-cn-shanghai.aliyuncs.com/Vertical-bg/20200928103633211.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          // AppBar设置背景色透明，取消阴影
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: const Text(
              'Flutter 课程代码',
              style: TextStyle(color: Colors.cyan, fontSize: 26),
            ),
            centerTitle: true,
          ),
          body: SizedBox(
            child: ListView(
              padding: EdgeInsets.all(18.0),
              children: [
                PrimaryButton(
                    title: '21天UI挑战打卡',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => UiIndex()));
                    }),
                PrimaryButton(
                    title: 'Flutter 数据共享',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => UiIndex()));
                    }),
                PrimaryButton(
                    title: 'Flutter 事件',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => UiIndex()));
                    }),
                PrimaryButton(
                    title: 'Flutter 路由',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => UiIndex()));
                    }),
                PrimaryButton(
                    title: 'Flutter 绘制',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => UiIndex()));
                    }),
                PrimaryButton(
                    title: 'Flutter 动画',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => UiIndex()));
                    }),
                PrimaryButton(
                    title: 'Flutter 网络请求',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HttpClientPage()));
                    }),
                PrimaryButton(
                    title: 'Flutter 状态管理',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => UiIndex()));
                    }),
              ],
            ),
          ),
        ));
  }
}
