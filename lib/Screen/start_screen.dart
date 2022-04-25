import 'package:flutter/material.dart';
import 'package:horpao_application/utils/root.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetologin();
  }

  _navigatetologin() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Root()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
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
              height: double.infinity,
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
