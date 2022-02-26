import 'package:flutter/material.dart';
import 'package:horpao_application/Screen/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  static Map<int, Color> color = {
    50: const Color.fromRGBO(35, 97, 172, 1),
    100: const Color.fromRGBO(35, 97, 172, .2),
    200: const Color.fromRGBO(35, 97, 172, .3),
    300: const Color.fromRGBO(35, 97, 172, .4),
    400: const Color.fromRGBO(35, 97, 172, .5),
    500: const Color.fromRGBO(35, 97, 172, .6),
    600: const Color.fromRGBO(35, 97, 172, .7),
    700: const Color.fromRGBO(35, 97, 172, .8),
    800: const Color.fromRGBO(35, 97, 172, .9),
    900: const Color.fromRGBO(35, 97, 172, 1),
  };
  MaterialColor primeColor = MaterialColor(0xFF2361ac, color);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primeColor,
      ),
      home: const LoginScreen(),
    );
  }
}
