import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            image: AssetImage('assets/Backgroun.jpg'),
            fit: BoxFit.cover,
          ),
          Container(
            height: 230.0,
            color: const Color.fromRGBO(35, 97, 172, 1),
          ),
          Positioned(
            top: 180.0,
            child: ClipOval(
              child: Container(
                height: 100.0,
                width: _screenwidth,
                color: const Color.fromRGBO(35, 97, 172, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
