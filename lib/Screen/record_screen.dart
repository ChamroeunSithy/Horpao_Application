import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:horpao_application/Theme/horpao_color.dart';
import 'package:horpao_application/controllers/bindings/auth_controller.dart';
import 'package:horpao_application/controllers/user_controller.dart';

import '../Background/backgroun.dart';

class RecordScreen extends GetWidget<AuthController> {
  const RecordScreen({Key? key}) : super(key: key);

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
            top: 55,
            right: 25,
            child: Container(
              height: 105.0,
              width: 220.0,
              child: Image.asset(
                'assets/Logo2.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            top: 50.0,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 180.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "2022",
                          style: TextStyle(
                            fontSize: 26.0,
                            fontFamily: 'BLACKSWORD.OTF',
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_up_rounded,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    Row(
                      children: [
                        Container(
                          height: 14.0,
                          width: 14.0,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(18, 68, 129, 1),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        const SizedBox(width: 5.0),
                        Container(
                          height: 14.0,
                          width: 14.0,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(18, 68, 129, 1),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        const SizedBox(width: 5.0),
                        Container(
                          height: 14.0,
                          width: 14.0,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(18, 68, 129, 1),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        const SizedBox(width: 5.0),
                        Container(
                          height: 14.0,
                          width: 14.0,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(18, 68, 129, 1),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        const SizedBox(width: 5.0),
                        Container(
                          height: 14.0,
                          width: 14.0,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(18, 68, 129, 1),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 45.0),
                    Text(
                      "\t\t\t\t\t\t\t\t\t\t\tIncome and Expense\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tRecord",
                      style: TextStyle(
                        fontSize: 28.0,
                        fontFamily: "BELCEADR.TTF",
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 300.0,
            left: 25.0,
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 375,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          //spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(3, 3),
                        )
                      ]),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 25.0),
                        _buildMonth('January'),
                        SizedBox(width: 25.0),
                        _buildMonth('February'),
                        SizedBox(width: 25.0),
                        _buildMonth('March'),
                        SizedBox(width: 25.0),
                        _buildMonth('April'),
                        SizedBox(width: 25.0),
                        _buildMonth('May'),
                        SizedBox(width: 25.0),
                        _buildMonth('June'),
                        SizedBox(width: 25.0),
                        _buildMonth('July'),
                        SizedBox(width: 25.0),
                        _buildMonth('August'),
                        SizedBox(width: 25.0),
                        _buildMonth('September'),
                        SizedBox(width: 25.0),
                        _buildMonth('October'),
                        SizedBox(width: 25.0),
                        _buildMonth('November'),
                        SizedBox(width: 25.0),
                        _buildMonth('December'),
                        SizedBox(width: 25.0),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25.0),
                GetX<UserController>(
                  builder: (_) {
                    return FlipCard(
                      front: Container(
                        height: 420,
                        width: 375,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.white,
                              Color.fromARGB(255, 240, 247, 255),
                            ],
                          ),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(70.0),
                            bottomLeft: Radius.circular(70.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 10,
                              offset: Offset(5, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: 50.0,
                                ),
                                _buildTextTile('Your Income'),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.navigate_next_rounded,
                                    size: 40.0,
                                    color: HorPaoColor().blue,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            _buildBox('\$${_.user.salary}'),
                            SizedBox(height: 30),
                            _buildTextTile('Cost'),
                            SizedBox(height: 15),
                            _buildBox('\$3,020'),
                            Divider(
                              height: 50.0,
                              thickness: 0.3,
                              color: HorPaoColor().blue,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _buildTextTile('Balance'),
                                SizedBox(width: 30),
                                _buildBox('\$1,980')
                              ],
                            ),
                            SizedBox(height: 20.0),
                            Row(
                              children: [
                                SizedBox(width: 38.0),
                                Text(
                                  'Note:',
                                  style: TextStyle(
                                    color: HorPaoColor().blue,
                                    fontFamily: 'BELCEADR.TTF',
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      back: Container(
                        height: 420,
                        width: 375,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.white,
                              Color.fromARGB(255, 240, 247, 255),
                            ],
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(70.0),
                            bottomRight: Radius.circular(70.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 10,
                              offset: Offset(5, 5),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildTextTile('Daily cost Detail'),
                              SizedBox(height: 30.0),
                              Image.asset('assets/chart.png'),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      );

  Container _buildBox(String num) {
    return Container(
      height: 45.0,
      width: 200.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 5,
            offset: Offset(3, 3),
          ),
        ],
      ),
      child: Center(
        child: Text(
          num,
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontFamily: 'BELCEADR.TTF',
            fontSize: 24.0,
          ),
        ),
      ),
    );
  }

  Text _buildTextTile(String title) {
    return Text(
      title,
      style: TextStyle(
        color: HorPaoColor().blue,
        fontFamily: 'BELCEADR.TTF',
        fontSize: 24.0,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Text _buildMonth(String month) {
    return Text(
      month,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: "BELCEADR.TTF",
        fontSize: 25.0,
      ),
    );
  }
}
