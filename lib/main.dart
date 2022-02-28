import 'package:flutter/material.dart';
import 'package:horpao_application/Background/background_let_start.dart';
import 'package:horpao_application/Screen/let_start_screen.dart';
import 'package:horpao_application/Screen/register_screen.dart';
import 'package:horpao_application/Theme/horpao_color.dart';
import 'package:horpao_application/Screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: HorPaoColor().blue,
      ),
      home: const LetStartScreen(),
    );
  }
}
