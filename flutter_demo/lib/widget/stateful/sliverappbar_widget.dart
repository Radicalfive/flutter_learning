import 'package:flutter/material.dart';

const greenColor = Color(0xFF0C9869);

class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              elevation: 1,
              expandedHeight: 200.0,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text('SliverAppBarWidget'),
                background: Image.network(
                  'https://ossstored.oss-cn-shanghai.aliyuncs.com/bg/8320021c7e6f4e199d246ede02722eb1.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // SliverFixedExtentList(
            //   itemExtent: 80.0,
            //   delegate: SliverChildBuilderDelegate(
            //     (BuildContext context, int index) {
            //       return Card(
            //         child: Container(
            //           alignment: Alignment.center,
            //           color: Colors.primaries[(index % 18)],
            //           child: const Text('demo'),
            //         ),
            //       );
            //     },
            //   ),
            // ),
            SliverFillRemaining(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Image.network(
                    'https://ossstored.oss-cn-shanghai.aliyuncs.com/bg/7ec3bb7a44804ec28e47798bd6239487.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
