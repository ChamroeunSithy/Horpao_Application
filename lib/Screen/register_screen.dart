import 'package:flutter/material.dart';
import 'package:horpao_application/Background/backgroun_login_register.dart';
import 'package:horpao_application/Theme/horpao_color.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool hide = true;
// ignore: prefer_typing_uninitialized_variables
  late var _screenWidth;
  // ignore: prefer_typing_uninitialized_variables
  late var _screenHight;
  @override
  Widget build(BuildContext context) {
    _screenWidth = MediaQuery.of(context).size.width;
    _screenHight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: InkWell(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: _buildBody,
      ),
    );
  }

  get _buildBody => SingleChildScrollView(
        child: SizedBox(
          height: _screenHight,
          width: _screenWidth,
          child: Stack(
            alignment: Alignment.center,
            children: [
              const BackgroundLoginRegister(),
              Positioned(
                top: 270.0,
                child: SizedBox(
                  height: 450.0,
                  width: 330.0,
                  child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(29.0),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 22.0),
                        const ListTile(
                          title: Center(
                            child: Text(
                              'Register',
                              style: TextStyle(
                                fontFamily: 'BELCEADR.TTF',
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 24.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 250.0,
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            autocorrect: false,
                            decoration: const InputDecoration(
                              labelText: 'Name',
                            ),
                            style: const TextStyle(
                                fontFamily: 'BELCEADR.TTF', fontSize: 19.0),
                          ),
                        ),
                        SizedBox(
                          width: 250.0,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            autocorrect: false,
                            decoration: const InputDecoration(
                              labelText: 'E-mail',
                            ),
                            style: const TextStyle(
                                fontFamily: 'BELCEADR.TTF', fontSize: 19.0),
                          ),
                        ),
                        SizedBox(
                          width: 250.0,
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            obscureText: hide,
                            autocorrect: false,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    hide = !hide;
                                  });
                                },
                                icon: Icon(hide
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              ),
                            ),
                            style: const TextStyle(
                                fontFamily: 'BELCEADR.TTF', fontSize: 19.0),
                          ),
                        ),
                        SizedBox(
                          width: 250.0,
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            obscureText: hide,
                            autocorrect: false,
                            decoration: InputDecoration(
                              labelText: 'Confirm Password',
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    hide = !hide;
                                  });
                                },
                                icon: Icon(hide
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              ),
                            ),
                            style: const TextStyle(
                                fontFamily: 'BELCEADR.TTF', fontSize: 19.0),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          width: 250.0,
                          child: MaterialButton(
                            onPressed: () {},
                            textColor: Colors.white,
                            color: HorPaoColor().blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            child: const Text(
                              'Create Account',
                              style: TextStyle(
                                  fontFamily: 'BELCEADR.TTF', fontSize: 18.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 750.0,
                child: Column(
                  children: [
                    const Text(
                      "Already have account ?",
                      style: TextStyle(
                        fontFamily: 'BELCEADR.TTF',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    InkWell(
                      onTap: () {
                        debugPrint('Login');
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: HorPaoColor().blue,
                          fontFamily: 'BELCEADR.TTF',
                          fontSize: 18.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
