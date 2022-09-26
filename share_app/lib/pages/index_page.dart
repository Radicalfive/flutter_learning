import 'package:flutter/material.dart';
import 'package:share_app/pages/home_page.dart';
import 'package:share_app/pages/mine_page.dart';
import 'package:share_app/pages/share_page.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  var pages = [const HomePage(), const SharePage(), const MinePage()];
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "首页"),
          BottomNavigationBarItem(
              icon: Icon(Icons.share),
              label: "分享"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "我的"),
        ],
      ),
    );
  }
}
