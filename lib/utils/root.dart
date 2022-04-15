import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horpao_application/Screen/dashboard_screen.dart';
import 'package:horpao_application/Screen/login_screen.dart';
import 'package:horpao_application/controllers/user_controller.dart';

import '../controllers/bindings/auth_controller.dart';

class Root extends GetWidget<AuthController> {
  Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX(
      init: UserController(),
      initState: (_) async {
        Get.put<UserController>(UserController());
      },
      builder: (_) {
        if (Get.find<AuthController>().user?.uid != null) {
          return DashBoard();
        } else {
          return LoginScreen();
        }
      },
    );
  }
}
