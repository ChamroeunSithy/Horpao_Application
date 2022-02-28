import 'package:flutter/material.dart';
import 'package:horpao_application/Background/background_let_start.dart';
import 'package:horpao_application/Theme/horpao_color.dart';

class LetStartScreen extends StatefulWidget {
  const LetStartScreen({Key? key}) : super(key: key);

  @override
  State<LetStartScreen> createState() => _LetStartScreenState();
}

class _LetStartScreenState extends State<LetStartScreen> {
  // ignore: prefer_typing_uninitialized_variables
  var _screenWight;
  var _screenHight;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
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
        reverse: true,
        child: Container(
          color: Colors.white,
          width: _screenWight,
          height: _screenHight,
          child: Stack(
            alignment: Alignment.center,
            children: [
              const BackgroundLetStartScreen(),
              const Positioned(
                top: 480.0,
                left: 40.0,
                child: Text(
                  'Your base salary',
                  style: TextStyle(
                      fontFamily: 'BELCEADR.TTF',
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                top: 580.0,
                child: SizedBox(
                  width: 310.0,
                  child: TextFormField(
                    autocorrect: false,
                    decoration: const InputDecoration(
                      hintText: "Let's Start",
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
                    onPressed: () {},
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
