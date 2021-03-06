import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:horpao_application/Theme/horpao_color.dart';

class Background extends GetWidget {
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
            color: HorPaoColor().blue,
          ),
          Positioned(
            top: 180.0,
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
