import 'package:flutter/material.dart';
import 'package:horpao_application/Background/backgroun_login_register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool hide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: _buildBody,
      ),
    );
  }

  get _buildBody => Stack(
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
                    const ListTile(
                      title: Center(
                        child: Text(
                          'Login Account',
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
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: false,
                        decoration: const InputDecoration(
                          labelText: 'User Name or E-mail',
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
                            icon: Icon(
                                hide ? Icons.visibility : Icons.visibility_off),
                          ),
                          helperText: 'In case you forgot password ?',
                          helperStyle: const TextStyle(
                            fontFamily: 'BELCEADR.TTF',
                            fontSize: 14.0,
                            color: Color.fromRGBO(35, 97, 172, 1),
                          ),
                        ),
                        style: const TextStyle(
                            fontFamily: 'BELCEADR.TTF', fontSize: 19.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
}
