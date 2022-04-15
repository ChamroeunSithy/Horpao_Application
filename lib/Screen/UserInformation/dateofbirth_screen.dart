import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horpao_application/Background/background_let_start.dart';
import 'package:horpao_application/Screen/UserInformation/phonenumber_screen.dart';
import 'package:horpao_application/Theme/horpao_color.dart';
import 'package:horpao_application/models/user.dart';
import '../../controllers/bindings/auth_controller.dart';

var _screenWight;
var _screenHight;

class DateOfBirth extends GetWidget<AuthController> {
  final UserModel userModel;
  final String password;
  final String conPassword;
  DateOfBirth({
    required this.userModel,
    required this.password,
    required this.conPassword,
  });

  final TextEditingController dobController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    _screenWight = MediaQuery.of(context).size.width;
    _screenHight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: InkWell(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: _builBody,
      ),
    );
  }

  get _builBody => SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: _screenWight,
          height: _screenHight,
          child: Stack(
            alignment: Alignment.center,
            children: [
              const BackgroundLetStartScreen(),
              const Positioned(
                top: 495.0,
                left: 40.0,
                child: Text(
                  'Your Date Of Birth',
                  style: TextStyle(
                    fontFamily: 'BELCEADR.TTF',
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 590.0,
                child: SizedBox(
                  width: 310.0,
                  child: TextFormField(
                    controller: dobController,
                    autocorrect: false,
                    decoration: const InputDecoration(
                      hintText: "Date Of Birth",
                      helperStyle: TextStyle(
                        fontFamily: 'font/BELCEADR.TTF',
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 40.0,
                bottom: 90.0,
                child: SizedBox(
                  height: 45.0,
                  width: 150.0,
                  child: MaterialButton(
                    onPressed: () {
                      UserModel user = UserModel(
                        fname: userModel.fname,
                        name: userModel.name,
                        email: userModel.email,
                        dob: dobController.text,
                      );
                      Get.to(PhoneNumber(
                        userModel: user,
                        password: password,
                        conPassword: conPassword,
                      ));
                    },
                    child: const Text(
                      "Next",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'BELCEADR.TTF',
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    color: HorPaoColor().blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
