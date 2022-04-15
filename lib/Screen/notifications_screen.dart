import 'package:flutter/material.dart';
import 'package:horpao_application/Theme/horpao_color.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/Backgroun.jpg'),
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                floating: true,
                title: Text('Notifications'),
                // actions: [
                //   IconButton(
                //     onPressed: () {},
                //     icon: Icon(Icons.search),
                //   ),
                // ],
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/facebook.png'),
                          backgroundColor: HorPaoColor().blue,
                        ),
                        title: Text('Sithy'),
                        subtitle: Text('Awesome Item $index'),
                        trailing: Icon(Icons.more_horiz),
                      ),
                    );
                  },
                  childCount: 5,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
