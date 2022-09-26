import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileTwoPage extends StatelessWidget {
  const ProfileTwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    );
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);

    return Scaffold(
      backgroundColor: Colors.indigo.shade100,
      body: Stack(
        children: <Widget>[
          SizedBox(
            // 背景底图
            height: MediaQuery.of(context).size.height,
            child: Image.network(
              'https://ossstored.oss-cn-shanghai.aliyuncs.com/bg/76b54d3c880511ebb6edd017c2d2eca2.png',
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
                            _buildRow(),
                          ],
                        ),
                      ),
                      // 头像：指定大小，圆角，左外边距
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://ossstored.oss-cn-shanghai.aliyuncs.com/avatar-boy/11.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        margin: const EdgeInsets.only(left: 16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Card(
                    color: Colors.white.withAlpha(160),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 5,
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            "User Information",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          leading: const Icon(Icons.person),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        ),
                        ListView(
                            shrinkWrap: true,
                            children: infoList
                                .map((info) => SizedBox(
                                    height: 80,
                                    child: ListTile(
                                      title: Text(info.title),
                                      subtitle: Text(info.subTitle),
                                      leading: Icon(info.icon),
                                    )))
                                .toList())
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
        Text('Profile Two', style: Theme.of(context).textTheme.headline4),
        const ListTile(
          contentPadding: EdgeInsets.all(0),
          title: Text("Flutter Developer"),
          subtitle: Text('Radical'),
        ),
      ],
    );
  }

  Row _buildRow() {
    return Row(
      children: <Widget>[
        Expanded(
            child: Column(
          children: const <Widget>[Text("6543"), Text("Likes")],
        )),
        Expanded(
            child: Column(
          children: const <Widget>[Text("10.1k"), Text("Comments")],
        )),
        Expanded(
            child: Column(
          children: const <Widget>[Text("9.0k"), Text("Favourites")],
        )),
      ],
    );
  }
}

class Info {
  IconData icon;
  String title;
  String subTitle;

  Info(this.icon, this.title, this.subTitle);
}

List<Info> infoList = [
  Info(Icons.email, "Email", "1561548288@qq.com"),
  Info(Icons.phone, "Phone", "19908324671"),
  Info(Icons.web, "Website", "www.baidu.com"),
  Info(Icons.code, "Github", "https://github.com/Radicalfive"),
  Info(Icons.access_alarm, "QQ", "156****8288"),
  Info(Icons.calendar_view_day, "Join Date", "12 September 2022"),
];
