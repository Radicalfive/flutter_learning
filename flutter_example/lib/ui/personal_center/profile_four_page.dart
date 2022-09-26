import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class ProfileFourPage extends StatelessWidget {
  const ProfileFourPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile-four"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              height: 380,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),
          ),
          ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              height: 380,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://ossstored.oss-cn-shanghai.aliyuncs.com/bg/2c4e9c78fb4f4b448a68420067c4c654.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              foregroundDecoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.6),
              ),
            ),
          ),
          ListView(
            padding: const EdgeInsets.all(8.0),
            children: [
              const SizedBox(height: 90),
              _buildAvatar(
                  'https://ossstored.oss-cn-shanghai.aliyuncs.com/avatar-boy/11.jpg'),
              const SizedBox(height: 10.0),
              Text(
                "Radical",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5.0),
              const Text(
                "“若见识过天高海阔，怎甘愿拘泥于城墙之内？”",
                style: TextStyle(color: Colors.white70),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 15,
              ),
              Card(
                color: Colors.white70,
                elevation: 10,
                margin: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 32,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "26.6K",
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Followers",
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "10.6K",
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Following",
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Favorite",
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 160,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildFavoriteCard(context, "Design"),
                    SizedBox(width: 15),
                    _buildFavoriteCard(context, "Fruits"),
                    SizedBox(width: 15),
                    _buildFavoriteCard(context, "Nature"),
                    SizedBox(width: 15),
                  ],
                ),
              ),

              const SizedBox(height: 30),
              Text(
                "Friends",
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: Stack(
                  children: [
                    ...avatars
                        .asMap()
                        .map(
                          (i, e) => MapEntry(
                            i,
                            Transform.translate(
                              offset: Offset(i * 30.0, 0),
                              child: SizedBox(
                                  height: 60,
                                  width: 60,
                                  child: _buildAvatar(e, radius: 30)),
                            ),
                          ),
                        )
                        .values
                        .toList(),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade500,
        onPressed: () {},
        hoverColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }

  CircleAvatar _buildAvatar(String image, {double radius = 80}) {
    return CircleAvatar(
      backgroundColor: Colors.white70,
      radius: radius,
      child: CircleAvatar(
        radius: radius - 5,
        backgroundImage: NetworkImage(image),
      ),
    );
  }

  Widget _buildFavoriteCard(BuildContext context, String title) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue.shade300,
              borderRadius: BorderRadius.circular(10),
            ),
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.indigo.shade300,
              borderRadius: BorderRadius.circular(10),
            ),
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 4.0,
            ),
          ),
          Container(
            clipBehavior: Clip.antiAlias,
            alignment: Alignment.center,
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: NetworkImage(
                    'https://ossstored.oss-cn-shanghai.aliyuncs.com/avatar-boy/head-196.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            foregroundDecoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 20),
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

const List<String> avatars = [
  'https://ossstored.oss-cn-shanghai.aliyuncs.com/avatar-boy/head-200.jpg',
  'https://ossstored.oss-cn-shanghai.aliyuncs.com/avatar-boy/R-C%20(7).jpg',
  'https://ossstored.oss-cn-shanghai.aliyuncs.com/avatar-boy/R-C%20(2).jpg',
  'https://ossstored.oss-cn-shanghai.aliyuncs.com/avatar-boy/head-196.jpg',
  'https://ossstored.oss-cn-shanghai.aliyuncs.com/avatar-boy/18.jpg',
];
