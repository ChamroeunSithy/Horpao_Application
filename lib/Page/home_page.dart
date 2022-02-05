import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar,
      body: _buildBoby,
      bottomNavigationBar: _buildBottom,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 35.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  get _buildAppbar => AppBar(
        backgroundColor: const Color.fromRGBO(35, 97, 172, 1),
        title: Container(
          alignment: Alignment.topLeft,
          child: const Text(
            'Good Morning Sithy !',
            style: TextStyle(fontFamily: "BLACKSWORD.OTF"),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_active_outlined,
              size: 33.0,
            ),
          ),
          const SizedBox(
            width: 25.0,
          ),
          Container(
            width: 38.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 3.3),
              image: const DecorationImage(
                image: AssetImage("assets/IMG_1255.JPG"),
              ),
            ),
          ),
          const SizedBox(
            width: 30.0,
          ),
        ],
      );

  get _buildBoby => Stack(
        children: const [
          Image(
            image: AssetImage('assets/Backgroun.jpg'),
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
        ],
      );

  get _buildBottom => BottomAppBar(
        notchMargin: 10.0,
        shape: const CircularNotchedRectangle(),
        color: Colors.white,
        elevation: 50.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                size: 30.0,
              ),
            ),
            const SizedBox(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.assessment,
                size: 30.0,
              ),
            ),
          ],
        ),
      );
}
