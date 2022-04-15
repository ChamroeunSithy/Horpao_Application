import 'package:flutter/material.dart';
import 'package:horpao_application/Background/backgroun_profile.dart';
import 'package:horpao_application/Screen/income_screen.dart';
import 'package:horpao_application/controllers/bindings/auth_binding.dart';
import 'package:horpao_application/controllers/bindings/auth_controller.dart';
import 'package:get/get.dart';
import 'package:horpao_application/controllers/user_controller.dart';

class ProfileScreen extends GetWidget<AuthController> {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar,
      body: _buildBody,
    );
  }

  get _buildAppbar => AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
            onPressed: () async {
              AuthBinding();
              controller.signOut();
              Get.back();
            },
            icon: Icon(Icons.logout_outlined),
          ),
        ],
      );

  get _buildBody => GetX<UserController>(builder: (_) {
        return Stack(
          alignment: Alignment.center,
          children: [
            BackgroundProfile(),
            Positioned(
              top: 100.0,
              child: _profilePicture(),
            ),
            Positioned(
              top: 290.0,
              child: Text(
                '${_.user.fname} ${_.user.name}',
                style: TextStyle(
                  fontFamily: 'BELCEADR.TTF',
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 363.0,
              child: SizedBox(
                height: 335.0,
                width: 280.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 90.0,
                          child: Text(
                            'DOB',
                            style: TextStyle(
                              fontFamily: 'BELCEADR.TTF',
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                            ),
                          ),
                        ),
                        Text(
                          _.user.dob.toString(),
                          style: TextStyle(
                            fontFamily: 'BELCEADR.TTF',
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                    const Divider(thickness: 2.0),
                    const SizedBox(height: 30.0),
                    Row(
                      children: [
                        SizedBox(
                          width: 90.0,
                          child: Text(
                            'Email',
                            style: TextStyle(
                              fontFamily: 'BELCEADR.TTF',
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                            ),
                          ),
                        ),
                        Text(
                          _.user.email.toString(),
                          style: TextStyle(
                            fontFamily: 'BELCEADR.TTF',
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                    const Divider(thickness: 2.0),
                    const SizedBox(height: 30.0),
                    Row(
                      children: [
                        SizedBox(
                          width: 90.0,
                          child: Text(
                            'Phone',
                            style: TextStyle(
                              fontFamily: 'BELCEADR.TTF',
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                            ),
                          ),
                        ),
                        Text(
                          _.user.phone.toString(),
                          style: TextStyle(
                            fontFamily: 'BELCEADR.TTF',
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                    const Divider(thickness: 2.0),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 570.0,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(IncomeScreen());
                },
                //mousemostyle: OutlinedButton.,
                child: const Text(
                  'Income',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
          ],
        );
      });

  Container _profilePicture() {
    return Container(
      height: 168.0,
      width: 168.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Colors.black.withOpacity(0.5),
            offset: const Offset(0, 5),
          ),
        ],
        border: Border.all(
          color: Colors.white,
          width: 10.0,
        ),
        image: const DecorationImage(
          image: AssetImage(
            'assets/IMG_1255.JPG',
          ),
        ),
      ),
    );
  }
}
