// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

const Color color1 = Color(0xffcc95c0);
const Color color2 = Color(0xffdbd4b4);
const Color color3 = Color(0xff7aa1d2);

class LoginTwoPage extends StatelessWidget {
  const LoginTwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 380,
              foregroundDecoration: BoxDecoration(
                color: Colors.black.withOpacity(0.15),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(300),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(300),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://ossstored.oss-cn-shanghai.aliyuncs.com/Vertical-bg/20200930113610974.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 70,
                    right: 50,
                    width: 100,
                    height: 150,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://ossstored.oss-cn-shanghai.aliyuncs.com/%E6%BC%82%E6%B5%AE%E5%85%83%E7%B4%A0/float-6.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      child: Container(
                    margin: EdgeInsets.only(top: 60, right: 120),
                    child: Center(
                      child: Text(
                        "SING IN",
                        style: TextStyle(
                          color: color3,
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(143, 148, 251, 0.4),
                            blurRadius: 20,
                            offset: Offset(5, 10),
                          )
                        ]),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.grey.shade200),
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email",
                              hintStyle: TextStyle(color: Colors.grey.shade400),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.grey.shade400),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: const [
                          color1,
                          color2,
                          color3,
                        ],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "SING IN",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Text(
                    "Forgot Password ?",
                    style: TextStyle(color: color3),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
