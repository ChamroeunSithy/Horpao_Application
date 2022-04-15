import 'package:flutter/material.dart';
import 'package:horpao_application/Theme/horpao_color.dart';

class BackgroundProfile extends StatelessWidget {
  const BackgroundProfile({Key? key}) : super(key: key);

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
            height: 130.0,
            color: HorPaoColor().blue,
          ),
          Positioned(
            top: 80.0,
            child: ClipOval(
              child: Container(
                height: 100.0,
                width: _screenwidth,
                color: HorPaoColor().blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
