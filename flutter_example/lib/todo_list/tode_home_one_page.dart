import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color color1 = Color(0xffcc95c0);
const Color color2 = Color(0xffdbd4b4);
const Color color3 = Color(0xff7aa1d2);

TextStyle lightText = const TextStyle(
  color: Colors.white,
  fontSize: 18,
);

TextStyle darkText = const TextStyle(
  color: Colors.black54,
  fontSize: 18,
);

TextStyle titleText = TextStyle(
  color: Colors.grey.shade700,
  fontSize: 36,
  fontWeight: FontWeight.bold,
);

class TodoHomeOnePage extends StatefulWidget {
  const TodoHomeOnePage({Key? key}) : super(key: key);

  @override
  State<TodoHomeOnePage> createState() => _TodoHomeOnePageState();
}

class _TodoHomeOnePageState extends State<TodoHomeOnePage> {
  final List tasks = [
    {'title': "买入一瓶冰可乐", 'completed': true},
    {'title': "还上个月冲动消费的花呗", 'completed': false},
    {'title': "还京东白条", 'completed': false},
    {'title': "交学费和住宿费", 'completed': true},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // 顶部半圆形区
            _buildHeader(),
            const SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "今日任务",
                style: titleText,
              ),
            ),
            SizedBox(height: 30),
            // 任务列表，使用扩展运算符遍历 tasks 数组
            ...tasks.map((task) => Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: GestureDetector(
                    //点击改变任务的完成状态
                    onTap: () {
                      setState(() {
                        task['completed'] = !task['completed'];
                      });
                    },
                    child: CheckboxListTile(
                      activeColor: color1,
                      secondary: Icon(Icons.alarm_on),
                      title: Text(
                        task['title'],
                        style: TextStyle(
                          decoration: task['completed']
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                          decorationColor: Colors.blue,
                          fontSize: 20,
                        ),
                      ),
                      //任务未完成，则显示响铃提示
                      subtitle: task['completed'] ? Text('') : Text('58分钟后响铃'),
                      value: task['completed'],
                      onChanged: (value) {
                        setState(() {
                          task['completed'] = value;
                        });
                      },
                    ),
                  ),
                ))
          ],
        ),
      ),
      // 底部带凸起按钮的导航栏
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: SizedBox(
          height: 50,
          child: Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.grey.shade700,
                  )),
              Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.calendar_today_outlined,
                    size: 30,
                    color: Colors.grey.shade700,
                  )),
              SizedBox(width: 20),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: color2,
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  Container _buildHeader() {
    return Container(
      height: 260,
      width: double.infinity,
      child: Stack(children: <Widget>[
        Positioned(
          bottom: 0,
          left: -100,
          top: -150,
          child: Container(
            width: 360,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(colors: [color1, color2]),
              boxShadow: [
                BoxShadow(
                  color: color3,
                  offset: Offset(4, 4),
                  blurRadius: 10,
                )
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 60, left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Radical",
                style: lightText.copyWith(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "今天还有3项\n任务未完成！",
                style: lightText,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
