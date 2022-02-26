import 'package:flutter/material.dart';

class BackgroundLoginRegister extends StatelessWidget {
  const BackgroundLoginRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            image: AssetImage('assets/Backgroun.jpg'),
            fit: BoxFit.cover,
          ),
          Container(
            height: 350.0,
            color: const Color.fromRGBO(35, 97, 172, 1),
          ),
          Positioned(
            top: 300.0,
            child: ClipOval(
              child: Container(
                height: 100.0,
                width: _screenWidth,
                color: const Color.fromRGBO(35, 97, 172, 1),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              children: const [
                SizedBox(
                  height: 25.0,
                ),
                Image(
                  image: AssetImage('assets/Logo2.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
