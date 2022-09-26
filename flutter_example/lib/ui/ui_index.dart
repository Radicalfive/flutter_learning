// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_example/ui/landing/dashboard_one_page.dart';
import 'package:flutter_example/ui/landing/landing_one_page.dart';
import 'package:flutter_example/ui/landing/on_boarding_ui.dart';
import 'package:flutter_example/ui/login/login_one_page.dart';
import 'package:flutter_example/ui/login/login_two_page.dart';
import 'package:flutter_example/ui/personal_center/profile_four_page.dart';
import 'package:flutter_example/ui/personal_center/profile_one_page.dart';
import 'package:flutter_example/ui/personal_center/profile_three_page.dart';
import 'package:flutter_example/ui/personal_center/profile_two_page.dart';
import 'package:flutter_example/ui/popup/dialogs.dart';
import 'package:flutter_example/ui/todo_list/todo_home_one_page.dart';
import 'package:flutter_example/ui/todo_list/todo_home_two_page.dart';
import 'package:flutter_example/widget/primary_button.dart';

class UiIndex extends StatefulWidget {
  const UiIndex({Key? key}) : super(key: key);

  @override
  State<UiIndex> createState() => _UiIndexState();
}

class _UiIndexState extends State<UiIndex> {
  @override
  Widget build(BuildContext context) {
    //获取当前组件的尺寸
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://ossstored.oss-cn-shanghai.aliyuncs.com/Vertical-bg/20200924123008734.jpg'),
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
            '21天UI挑战打卡',
            style: TextStyle(color: Colors.white, fontSize: 26),
          ),
          centerTitle: true,
        ),
        body: SizedBox(
          child: ListView(
            padding: EdgeInsets.all(14.0),
            children: [
              Row(
                children: [
                  Expanded(
                    child: PrimaryButton(
                        title: 'Day1',
                        color: Colors.lime.shade600,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfileOnePage()));
                        }),
                  ),
                  Expanded(
                    child: PrimaryButton(
                        title: 'Day2',
                        color: Colors.lime.shade600,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfileTwoPage()));
                        }),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: PrimaryButton(
                        title: 'Day3',
                        color: Colors.amber.shade600,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfileThreePage()));
                        }),
                  ),
                  Expanded(
                    child: PrimaryButton(
                        title: 'Day4',
                        color: Colors.amber.shade600,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfileFourPage()));
                        }),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: PrimaryButton(
                        title: 'Day5',
                        color: Colors.indigo.shade600,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TodoHomeOnePage()));
                        }),
                  ),
                  Expanded(
                    child: PrimaryButton(
                        title: 'Day6',
                        color: Colors.indigo.shade600,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TodoHomeTwoPage()));
                        }),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: PrimaryButton(
                        title: 'Day7',
                        color: Colors.cyan.shade400,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginOnePage()));
                        }),
                  ),
                  Expanded(
                    child: PrimaryButton(
                        title: 'Day8',
                        color: Colors.cyan.shade400,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginTwoPage()));
                        }),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: PrimaryButton(
                        title: 'Day9',
                        color: Colors.deepPurple.shade300,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LandingOnePage()));
                        }),
                  ),
                  Expanded(
                    child: PrimaryButton(
                        title: 'Day10',
                        color: Colors.deepPurple.shade300,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DashboardOnePage()));
                        }),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: PrimaryButton(
                        title: 'Day11',
                        color: Colors.lime.shade600,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OnBoardingUI()));
                        }),
                  ),
                  Expanded(
                    child: PrimaryButton(
                        title: 'Day12',
                        color: Colors.lime.shade600,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DialogsPage()));
                        }),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: PrimaryButton(
                        title: 'Day13',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OnBoardingUI()));
                        }),
                  ),
                  Expanded(
                    child: PrimaryButton(
                        title: 'Day14',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DialogsPage()));
                        }),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: PrimaryButton(
                        title: 'Day15',
                        color: Colors.indigo.shade600,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OnBoardingUI()));
                        }),
                  ),
                  Expanded(
                    child: PrimaryButton(
                        title: 'Day16',
                        color: Colors.indigo.shade600,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DialogsPage()));
                        }),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: PrimaryButton(
                        title: 'Day17',
                        color: Colors.orange.shade600,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OnBoardingUI()));
                        }),
                  ),
                  Expanded(
                    child: PrimaryButton(
                        title: 'Day18',
                        color: Colors.orange.shade600,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DialogsPage()));
                        }),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: PrimaryButton(
                        title: 'Day19',
                        color: Colors.deepPurple.shade600,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OnBoardingUI()));
                        }),
                  ),
                  Expanded(
                    child: PrimaryButton(
                        title: 'Day20',
                        color: Colors.deepPurple.shade600,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DialogsPage()));
                        }),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: PrimaryButton(
                        title: 'Day21',
                        color: Colors.purple.shade300,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OnBoardingUI()));
                        }),
                  ),
                  Expanded(
                    child: PrimaryButton(
                        title: 'Day22',
                        color: Colors.purple.shade300,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DialogsPage()));
                        }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
