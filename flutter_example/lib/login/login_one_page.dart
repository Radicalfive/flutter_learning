import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

final List _loginMethod = [
  {
    "title": "手机号",
    "icon": Icons.phone,
  },
  {
    "title": "facebook",
    "icon": Icons.facebook,
  },
  {
    "title": "google",
    "icon": Icons.fiber_dvr,
  },
];

final Color color1 = Colors.blue.shade100;
final Color color2 = Colors.blue.shade200;
final Color color3 = Colors.blue.shade300;
final Color color4 = Colors.blue.shade400;

TextStyle titleStyle = const TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w700,
  fontSize: 30,
);

TextStyle tipStyle = const TextStyle(
  color: Colors.blue,
  fontSize: 12,
  fontWeight: FontWeight.w700,
);

class LoginOnePage extends StatefulWidget {
  const LoginOnePage({Key? key}) : super(key: key);

  @override
  State<LoginOnePage> createState() => _LoginOnePageState();
}

class _LoginOnePageState extends State<LoginOnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: WaveClipperOne(),
                  child: Container(
                    child: Column(),
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [color1, color2],
                      ),
                    ),
                  ),
                ),
                ClipPath(
                  clipper: WaveClipperTwo(),
                  child: Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [color3, color4],
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 50),
                        Icon(
                          Icons.code,
                          color: Colors.white,
                          size: 60,
                        ),
                        SizedBox(height: 20),
                        Text('Coding Life', style: titleStyle),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Material(
                elevation: 3,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: TextField(
                    onChanged: (String value) {},
                    cursorColor: color4,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: Material(
                        elevation: 0,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: Icon(Icons.email, color: color4),
                      ),
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                    )),
              ),
            ),
            SizedBox(height: 32),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Material(
                elevation: 3,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: TextField(
                    onChanged: (String value) {},
                    cursorColor: color4,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Material(
                        elevation: 0,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: Icon(Icons.lock, color: color4),
                      ),
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                    )),
              ),
            ),
            SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                color: color4,
              ),
              child: MaterialButton(
                padding: EdgeInsets.symmetric(horizontal: 70),
                child: Text('Login', style: titleStyle.copyWith(fontSize: 20)),
                onPressed: () {},
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Text('FORGOT PASSWORD ？', style: tipStyle),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an Account ?",
                  style: tipStyle.copyWith(
                      color: Colors.black87, fontWeight: FontWeight.normal),
                ),
                Text(
                  'Sign Up',
                  style:
                      tipStyle.copyWith(decoration: TextDecoration.underline),
                )
              ],
            ),
            SizedBox(height: 200),
            Text(
              '其他账号登录',
              style: const TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 10),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: _loginMethod
                  .map((item) => Builder(builder: (context) {
                        return IconButton(
                            icon: Icon(item['icon'],
                                size: 30,
                                color: Theme.of(context).iconTheme.color),
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text('${item['title']}登录'),
                                    action: SnackBarAction(
                                      label: '取消',
                                      onPressed: () {},
                                    )),
                              );
                            });
                      }))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
