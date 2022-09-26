// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LandingOnePage extends StatelessWidget {
  const LandingOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String bgImage =
        'https://ossstored.oss-cn-shanghai.aliyuncs.com/bg/8c30a659880811ebb6edd017c2d2eca2.png';
    String image =
        'https://ossstored.oss-cn-shanghai.aliyuncs.com/Vertical-bg/20200922072356447.jpg';
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.network(
              bgImage,
              fit: BoxFit.contain,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black38,
                          offset: Offset(5.0, 5.0),
                          blurRadius: 5.0)
                    ]),
                margin: EdgeInsets.all(48.0),
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(image), fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          )),
                    )),
                    SizedBox(height: 20.0),
                    Text(
                      "How will you do?",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 24.0,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "你努力样子像星辉,像野风。既美又酷。\n You work hard like a star, like a wild wind. Beautiful and cool.",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 15.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 80.0),
                width: double.infinity,
                child: MaterialButton(
                  padding: EdgeInsets.all(16.0),
                  textColor: Colors.white,
                  color: Colors.lightGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40.0),
            ],
          ),
        ],
      ),
    );
  }
}
