import 'package:flutter/material.dart';

import 'hot_widget.dart';

class HttpIndex extends StatefulWidget {
  const HttpIndex({Key? key}) : super(key: key);

  @override
  State<HttpIndex> createState() => _HttpIndexState();
}

class _HttpIndexState extends State<HttpIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'http网络请求',
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan.shade700,
      ),
      body: _buildBody(context),
    );
  }

  Container _buildBody(context) {
    final size = MediaQuery.of(context).size;
    var list = [
      Info(
        width: size.width,
        height: 75.0,
        color: Colors.cyan.shade700,
        title: 'HttpClient',
        url: 'http_client',
      ),
    ];
    return Container(
      width: size.width,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(12),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: list
              .map(
                (e) => HotWidget(info: e),
              )
              .toList(),
        ),
      ),
    );
  }
}
