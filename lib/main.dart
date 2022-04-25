import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:horpao_application/Screen/start_screen.dart';
import 'package:horpao_application/Theme/horpao_color.dart';
import 'package:horpao_application/controllers/bindings/auth_binding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: HorPaoColor().blue,
      ),
      initialBinding: AuthBinding(),
      //home: Root(),
      home: StartScreen(),
    );
  }
}
