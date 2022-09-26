import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileThreePage extends StatelessWidget {
  const ProfileThreePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color color1 = Color(0xff79f1a4);
    const Color color2 = Color(0xff0e5cad);

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 360,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              gradient: LinearGradient(
                  colors: [color1, color2],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 80),
            child: Column(
              children: <Widget>[
                const Text(
                  "About Me",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: double.infinity,
                        margin: const EdgeInsets.only(
                          left: 30,
                          right: 30,
                          top: 10,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.network(
                            'https://ossstored.oss-cn-shanghai.aliyuncs.com/avatar-boy/11.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        // 顶部橙色信息框
                        alignment: Alignment.topCenter,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade200,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text("Flutter Developer"),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 14),
                Text(
                  "WX - Radical",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      fontSize: 20,
                      color: Colors.blue), //可以通过 copyWith 复制全局样式，然后做部分属性的修改
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Icon(
                      Icons.location_on,
                      size: 16.0,
                      color: Colors.grey,
                    ),
                    Text(
                      "Yangshan North Street 1 , NANJING",
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  // 社交按钮
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: Icon(FontAwesomeIcons.qq),
                      color: Colors.blue,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(FontAwesomeIcons.weixin),
                      color: Colors.green,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(FontAwesomeIcons.weibo),
                      color: Colors.red.shade600,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Stack(
                  children: <Widget>[
                    Container(
                      // 局部渐变容器
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 16,
                      ),
                      margin: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [color1, color2],
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        // 行布局的图标按钮
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.person),
                            color: Colors.white,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.location_on),
                            color: Colors.white,
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add),
                            color: Colors.white,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.message),
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    Center(
                      // 中间的爱心悬浮按钮
                      child: FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: Colors.white,
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu),
              ),
            ],
          )
        ],
      ),
    );
  }
}
