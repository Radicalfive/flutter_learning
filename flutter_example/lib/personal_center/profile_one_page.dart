import 'package:flutter/material.dart';

TextStyle _titleStyle = const TextStyle(color: Colors.blue, fontSize: 15.0);
TextStyle _subTitleStyle = const TextStyle(fontSize: 14.0);

class ProfileOnePage extends StatelessWidget {
  const ProfileOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: <Widget>[
              _buildHeader(),
              _buildRow(),
              Expanded(child: _buildListTile()),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 270,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: const [0.2, 0.8],
          colors: [
            Colors.blue,
            Colors.blue.shade300,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  minRadius: 30.0,
                  backgroundColor: Colors.blue.shade600,
                  child: const Icon(
                    Icons.call,
                    size: 30.0,
                  ),
                ),
                CircleAvatar(
                  minRadius: 60,
                  backgroundColor: Colors.blue.shade300,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://ossstored.oss-cn-shanghai.aliyuncs.com/avatar-boy/11.jpg'),
                    minRadius: 50,
                  ),
                ),
                CircleAvatar(
                  minRadius: 30.0,
                  backgroundColor: Colors.blue.shade600,
                  child: const Icon(
                    Icons.message,
                    size: 30.0,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'radical',
            style: TextStyle(fontSize: 14.0, color: Colors.blue.shade100),
          )
        ],
      ),
    );
  }

  Widget _buildRow() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            color: Colors.blue.shade300,
            child: const ListTile(
              title: Text(
                '50898',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              subtitle: Text(
                'FOLLOWERS',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blue.shade300,
            child: const ListTile(
              title: Text(
                '345288',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              subtitle: Text(
                'FOLLOWING',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildListTile() {
    return ListView.builder(
        itemCount: infoList.length,
        itemExtent: 100,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            title: Text(
              '${infoList[index].title}',
              style: _titleStyle,
            ),
            subtitle: Text(
              '${infoList[index].subTitle}',
              style: _subTitleStyle,
            ),
          );
        });
  }
}

class Info {
  String title;
  String subTitle;

  Info(this.title, this.subTitle);
}

List<Info> infoList = [
  Info('Email', '1561548288@qq.com'),
  Info('Phone', '+86 19908234671'),
  Info('Github', 'https://github.com/Radicalfive'),
  Info('Google', 'www.Google.com'),
  Info('Baidu', 'www.baidu.com'),
  Info('Email', '1561548288@qq.com'),
  Info('Phone', '+86 19908234671'),
  Info('Github', 'https://github.com/Radicalfive'),
  Info('Google', 'www.Google.com'),
  Info('Baidu', 'www.baidu.com'),
];
