import 'package:flutter/material.dart';
import 'package:horpao_application/Background/backgroun.dart';
import 'package:get/get.dart';
import 'package:horpao_application/Screen/notifications_screen.dart';
import 'package:horpao_application/Screen/profile_screen.dart';
import 'package:horpao_application/Theme/horpao_color.dart';
import 'package:horpao_application/controllers/bindings/auth_controller.dart';
import 'package:horpao_application/controllers/user_controller.dart';

class HomeScreen extends GetWidget<AuthController> {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBoby,
    );
  }

  get _buildBoby => Stack(
        children: [
          Background(),
          Positioned(
            top: 50.0,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 180.0,
                child: GetX<UserController>(
                  builder: (_) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning, ${_.user.name} !",
                          style: TextStyle(
                            fontSize: 26.0,
                            fontFamily: 'BLACKSWORD.OTF',
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        Row(
                          children: [
                            _blurPoinstyle(),
                            const SizedBox(width: 5.0),
                            _blurPoinstyle(),
                            const SizedBox(width: 5.0),
                            _blurPoinstyle(),
                            const SizedBox(width: 5.0),
                            _blurPoinstyle(),
                            const SizedBox(width: 5.0),
                            _blurPoinstyle(),
                          ],
                        ),
                        const SizedBox(height: 45.0),
                        Row(
                          children: const [
                            Text(
                              "January, 2022",
                              style: TextStyle(
                                fontSize: 24.0,
                                fontFamily: "BELCEADR.TTF",
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.expand_more, color: Colors.white),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
          Positioned(
            top: 74.0,
            right: 20.0,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(NotificationScreen());
                  },
                  child: const Icon(Icons.notifications_active_outlined,
                      size: 28.0, color: Colors.white),
                ),
                const SizedBox(width: 20.0),
                InkWell(
                  onTap: () {
                    Get.to(ProfileScreen());
                  },
                  child: Container(
                    height: 35.0,
                    width: 35.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 3.0),
                      image: const DecorationImage(
                        image: AssetImage("assets/IMG_1255.JPG"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 310.0,
            left: 25.0,
            child: Row(
              children: [
                const Text(
                  "Daily-Cost",
                  style: TextStyle(
                      fontSize: 22.0,
                      fontFamily: "BELCEADR.TTF",
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 80.0),
                const Text(
                  "Total ",
                  style: TextStyle(
                      fontSize: 22.0,
                      fontFamily: "BELCEADR.TTF",
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 10.0),
                Container(
                  height: 40.0,
                  width: 155.0,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(3, 3),
                        blurRadius: 5.0,
                      ),
                    ],
                  ),
                  child: const Text(
                    '\$3,020',
                    style: TextStyle(
                      fontFamily: 'BELCEADR.TTF',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 365,
            left: 5,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                alignment: Alignment.topRight,
                height: 400,
                width: 370,
                //color: Colors.amber,
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      width: 330,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: HorPaoColor().blue,
                            spreadRadius: 3,
                          ),
                        ],
                      ),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              color: HorPaoColor().blue,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                              ),
                            ),
                            child: Text(
                              'Cost-For',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'BELCEADR.TTF',
                                fontSize: 22,
                              ),
                            ),
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.keyboard_arrow_up_rounded,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );

  Container _blurPoinstyle() {
    return Container(
      height: 14.0,
      width: 14.0,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(18, 68, 129, 1),
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
