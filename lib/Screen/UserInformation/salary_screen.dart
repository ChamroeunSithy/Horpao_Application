import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:horpao_application/Background/background_let_start.dart';
import 'package:horpao_application/Theme/horpao_color.dart';
import 'package:horpao_application/models/user.dart';
import '../../controllers/bindings/auth_controller.dart';

var _screenWight;
var _screenHight;

class Salary extends GetWidget<AuthController> {
  final UserModel userModel;
  final String password;
  final String conPassword;
  Salary({
    required this.userModel,
    required this.password,
    required this.conPassword,
  });

  final TextEditingController salarycontroller = TextEditingController();

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
                  'Your Base Salary',
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
                    controller: salarycontroller,
                    keyboardType: TextInputType.number,
                    autocorrect: false,
                    decoration: const InputDecoration(
                      hintText: "Salary",
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
                      controller.createUser(
                        fname: userModel.fname.toString(),
                        name: userModel.name.toString(),
                        email: userModel.email.toString(),
                        password: password,
                        confirmpassword: conPassword,
                        dob: userModel.dob.toString(),
                        phone: userModel.phone.toString(),
                        salary: salarycontroller.text,
                      );
                    },
                    child: const Text(
                      "Let's Start",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'BELCEADR.TTF',
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    color: HorPaoColor().blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
