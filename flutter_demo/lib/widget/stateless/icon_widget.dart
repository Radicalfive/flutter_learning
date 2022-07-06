import 'package:flutter/material.dart';
import 'package:flutter_demo/common/iconfont.dart';
import 'package:flutter_demo/common/style.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('各类图标组件'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Icon',
              style: titleStyle,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              child: const Text(
                '用于图标显示的组件，可指定图标资源、大小、颜色，简单实用。',
                style: descStyle,
              ),
            ),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: const <Widget>[
                Icon(
                  Icons.send,
                  color: Colors.blue,
                  size: 40,
                ),
                Icon(
                  Icons.ios_share,
                  color: Colors.green,
                  size: 40,
                ),
                Icon(
                  IconFont.icon__guoji,
                  color: Colors.blue,
                  size: 50,
                ),
              ],
            ),
            const Text(
              'IconButton',
              style: titleStyle,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              child: const Text(
                '可用于点击的图标按钮，可指定图标信息，内边距、大小、颜色等，接收点击事件。',
                style: descStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: IconButton(
                padding: const EdgeInsets.only(),
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  size: 50,
                  color: Colors.greenAccent,
                ),
                //  长按提示文字
                tooltip: 'access_alarm_rounded',
                // 长安高亮色
                highlightColor: Colors.green,
                //  水波纹效果
                splashColor: Colors.blueAccent,
              ),
            ),
            const Text(
              'AnimatedIcon',
              style: titleStyle,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              child: const Text(
                '根据动画控制器来使图标获得动画效果，可指定大小、颜色等.',
                style: descStyle,
              ),
            ),
            Test(),
          ],
        ),
      ),
    );
  }
}

class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TestState();
}

class _TestState extends State<Test> with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this)
          ..addStatusListener((AnimationStatus status) {
            if (status == AnimationStatus.completed) {
              animationController.reverse();
            } else if (status == AnimationStatus.dismissed) {
              animationController.forward();
            }
          });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      alignment: Alignment.center,
      child: AnimatedIcon(
        icon: AnimatedIcons.view_list,
        progress: animationController,
        color: Colors.cyan,
        size: 50,
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }
}
