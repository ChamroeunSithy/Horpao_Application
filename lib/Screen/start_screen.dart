import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _screenhight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: _screenhight,
            child: const Image(
              image: AssetImage(
                "assets/1453912.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: _screenhight,
              child: const Image(
                image: AssetImage("assets/Logo welocome.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
