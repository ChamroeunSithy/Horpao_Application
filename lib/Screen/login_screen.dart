import 'package:flutter/material.dart';
import 'package:horpao_application/Background/backgroun_login_register.dart';
import 'package:horpao_application/Screen/register_screen.dart';
import 'package:horpao_application/Theme/horpao_color.dart';
import 'package:horpao_application/controllers/bindings/auth_controller.dart';
import 'package:get/get.dart';

class LoginScreen extends GetWidget<AuthController> {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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

  get _buildBody => SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            const BackgroundLoginRegister(),
            Positioned(
              top: 290.0,
              child: SizedBox(
                height: 450.0,
                width: 330.0,
                child: Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(29.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          autocorrect: false,
                          style: const TextStyle(
                              fontFamily: 'BELCEADR.TTF', fontSize: 19.0),
                          decoration: InputDecoration(
                            labelText: 'E-mail',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 250.0,
                        child: TextFormField(
                          controller: passwordController,
                          keyboardType: TextInputType.text,
                          autocorrect: false,
                          obscureText: true,
                          style: const TextStyle(
                              fontFamily: 'BELCEADR.TTF', fontSize: 19.0),
                          decoration: InputDecoration(
                            labelText: 'Password',
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      InkWell(
                        onTap: () {
                          debugPrint('In case you forgot password ?');
                        },
                        child: Text(
                          'In case you forgot password ?',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: HorPaoColor().blue,
                          ),
                        ),
                      ),
                      const SizedBox(height: 25.0),
                      SizedBox(
                        width: 250.0,
                        child: MaterialButton(
                          onPressed: () {
                            controller.logIn(
                              emailController.text,
                              passwordController.text,
                            );
                          },
                          textColor: Colors.white,
                          color: HorPaoColor().blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                                fontFamily: 'BELCEADR.TTF', fontSize: 18.0),
                          ),
                        ),
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          const SizedBox(
                            height: 55.0,
                            width: 250.0,
                            child: Divider(
                              thickness: 2.0,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 25.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                              color: Colors.grey[350],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              'OR',
                              style: TextStyle(
                                  fontFamily: 'BELCEADR.TTF', fontSize: 16.0),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            borderRadius: BorderRadius.circular(20.0),
                            onTap: () {
                              debugPrint('Facebook');
                            },
                            child: SizedBox(
                              height: 38.0,
                              child: Image.asset(
                                'assets/facebook.png',
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          InkWell(
                            borderRadius: BorderRadius.circular(20.0),
                            onTap: () {
                              debugPrint('Google');
                            },
                            child: SizedBox(
                              height: 40.0,
                              child: Image.asset(
                                'assets/google-login-icon-6.jpg',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 765,
              child: Column(
                children: [
                  const Text(
                    "Don't have an account?",
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
                      Get.to(
                        RegisterScreen(),
                      );
                    },
                    child: Text(
                      'Register',
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
      );
}
// class LoginScreen extends StatefulWidget {
//   final VoidCallback onClickedSignUp;
//   LoginScreen({Key? key, required this.onClickedSignUp}) : super(key: key);

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   bool hide = true;
//   late var _screenWidth;
//   // ignore: prefer_typing_uninitialized_variables
//   late var _screenHight;

//   final email = TextEditingController();
//   final password = TextEditingController();

//   @override
//   void dispose() {
//     email.removeListener(onListen);
//     password.removeListener(onListen);
//     super.dispose();
//   }

//   void onListen() => setState(() {});

//   @override
//   Widget build(BuildContext context) {
//     _screenWidth = MediaQuery.of(context).size.width;
//     _screenHight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: InkWell(
//         onTap: () {
//           FocusScope.of(context).requestFocus(FocusNode());
//         },
//         child: _buildBody,
//       ),
//     );
//   }

  // get _buildBody => SingleChildScrollView(
  //       child: SizedBox(
  //         height: _screenHight,
  //         width: _screenWidth,
  //         child: Stack(
  //           alignment: Alignment.center,
  //           children: [
  //             const BackgroundLoginRegister(),
  //             Positioned(
  //               top: 290.0,
  //               child: SizedBox(
  //                 height: 450.0,
  //                 width: 330.0,
  //                 child: Card(
  //                   elevation: 5.0,
  //                   shape: RoundedRectangleBorder(
  //                     borderRadius: BorderRadius.circular(29.0),
  //                   ),
  //                   child: Column(
  //                     mainAxisAlignment: MainAxisAlignment.center,
  //                     children: [
  //                       const ListTile(
  //                         title: Center(
  //                           child: Text(
  //                             'Login Account',
  //                             style: TextStyle(
  //                               fontFamily: 'BELCEADR.TTF',
  //                               fontWeight: FontWeight.bold,
  //                               color: Colors.black,
  //                               fontSize: 24.0,
  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //                       SizedBox(
  //                         width: 250.0,
  //                         child: TextFormField(
  //                           controller: email,
  //                           keyboardType: TextInputType.emailAddress,
  //                           autocorrect: false,
  //                           style: const TextStyle(
  //                               fontFamily: 'BELCEADR.TTF', fontSize: 19.0),
  //                           decoration: InputDecoration(
  //                             labelText: 'Name or E-mail',
  //                             suffixIcon: email.text.isEmpty
  //                                 ? SizedBox(width: 0.0)
  //                                 : IconButton(
  //                                     onPressed: () {
  //                                       email.clear();
  //                                     },
  //                                     icon: Icon(
  //                                       Icons.close,
  //                                       size: 20.0,
  //                                     ),
  //                                   ),
  //                           ),
  //                           autofillHints: [AutofillHints.email],
  //                           validator: (value) {
  //                             return value != null &&
  //                                     !EmailValidator.validate(value)
  //                                 ? 'Please enter a valid email'
  //                                 : null;
  //                           },
  //                         ),
  //                       ),
  //                       SizedBox(
  //                         width: 250.0,
  //                         child: TextFormField(
  //                           controller: password,
  //                           keyboardType: TextInputType.text,
  //                           obscureText: hide,
  //                           autocorrect: false,
  //                           style: const TextStyle(
  //                               fontFamily: 'BELCEADR.TTF', fontSize: 19.0),
  //                           decoration: InputDecoration(
  //                             labelText: 'Password',
  //                             suffixIcon: IconButton(
  //                               onPressed: () {
  //                                 setState(() {
  //                                   hide = !hide;
  //                                 });
  //                               },
  //                               icon: Icon(hide
  //                                   ? Icons.visibility
  //                                   : Icons.visibility_off),
  //                             ),
  //                           ),
  //                           validator: (value) {
  //                             if (value == null || value == '') {
  //                               return 'Password is Empty';
  //                             } else {
  //                               return null;
  //                             }
  //                           },
  //                         ),
  //                       ),
  //                       const SizedBox(height: 10.0),
  //                       InkWell(
  //                         onTap: () {
  //                           debugPrint('In case you forgot password ?');
  //                         },
  //                         child: Text(
  //                           'In case you forgot password ?',
  //                           style: TextStyle(
  //                             fontSize: 12.0,
  //                             color: HorPaoColor().blue,
  //                           ),
  //                         ),
  //                       ),
  //                       const SizedBox(height: 25.0),
  //                       SizedBox(
  //                         width: 250.0,
  //                         child: MaterialButton(
  //                           onPressed: () {},
  //                           textColor: Colors.white,
  //                           color: HorPaoColor().blue,
  //                           shape: RoundedRectangleBorder(
  //                               borderRadius: BorderRadius.circular(8.0)),
  //                           child: const Text(
  //                             'Login',
  //                             style: TextStyle(
  //                                 fontFamily: 'BELCEADR.TTF', fontSize: 18.0),
  //                           ),
  //                         ),
  //                       ),
  //                       Stack(
  //                         alignment: Alignment.center,
  //                         children: [
  //                           const SizedBox(
  //                             height: 55.0,
  //                             width: 250.0,
  //                             child: Divider(
  //                               thickness: 2.0,
  //                             ),
  //                           ),
  //                           Container(
  //                             alignment: Alignment.center,
  //                             height: 25.0,
  //                             width: 50.0,
  //                             decoration: BoxDecoration(
  //                               color: Colors.grey[350],
  //                               borderRadius: BorderRadius.circular(20),
  //                             ),
  //                             child: const Text(
  //                               'OR',
  //                               style: TextStyle(
  //                                   fontFamily: 'BELCEADR.TTF', fontSize: 16.0),
  //                             ),
  //                           )
  //                         ],
  //                       ),
  //                       const SizedBox(height: 10.0),
  //                       Row(
  //                         mainAxisAlignment: MainAxisAlignment.center,
  //                         children: [
  //                           InkWell(
  //                             borderRadius: BorderRadius.circular(20.0),
  //                             onTap: () {
  //                               debugPrint('Facebook');
  //                             },
  //                             child: SizedBox(
  //                               height: 38.0,
  //                               child: Image.asset(
  //                                 'assets/facebook.png',
  //                               ),
  //                             ),
  //                           ),
  //                           const SizedBox(
  //                             width: 15.0,
  //                           ),
  //                           InkWell(
  //                             borderRadius: BorderRadius.circular(20.0),
  //                             onTap: () {
  //                               debugPrint('Google');
  //                             },
  //                             child: SizedBox(
  //                               height: 40.0,
  //                               child: Image.asset(
  //                                 'assets/google-login-icon-6.jpg',
  //                               ),
  //                             ),
  //                           ),
  //                         ],
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //             ),
  //             Positioned(
  //               top: 765.0,
  //               child: RichText(
  //                 textAlign: TextAlign.center,
  //                 text: TextSpan(
  //                   text: "Don't have an account?",
  //                   style: TextStyle(
  //                       fontFamily: 'BELCEADR.TTF',
  //                       fontSize: 20.0,
  //                       color: Colors.black),
  //                   children: [
  //                     TextSpan(
  //                       recognizer: TapGestureRecognizer()
  //                         ..onTap = widget.onClickedSignUp,
  //                       text: '\nRegister',
  //                       style: TextStyle(
  //                         decoration: TextDecoration.underline,
  //                         color: HorPaoColor().blue,
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ),
  //             // Positioned(
  //             //   top: 765,
  //             //   child: Column(
  //             //     children: [
  //             //       const Text(
  //             //         "Don't have an account?",
  //             //         style: TextStyle(
  //             //           fontFamily: 'BELCEADR.TTF',
  //             //           fontSize: 20.0,
  //             //           fontWeight: FontWeight.w600,
  //             //         ),
  //             //       ),
  //             //       const SizedBox(
  //             //         height: 5.0,
  //             //       ),
  //             //       InkWell(
  //             //         onTap: () {
  //             //           Get.to(RegisterScreen(onClickedSignUp: () {}));
  //             //         },
  //             //         child: Text(
  //             //           'Register',
  //             //           style: TextStyle(
  //             //             color: HorPaoColor().blue,
  //             //             fontFamily: 'BELCEADR.TTF',
  //             //             fontSize: 18.0,
  //             //           ),
  //             //         ),
  //             //       )
  //             //     ],
  //             //   ),
  //             // ),
  //           ],
  //         ),
  //       ),
  //     );
  // Future signin() async {
  //   showDialog(
  //       context: context,
  //       barrierDismissible: false,
  //       builder: (context) => Center(
  //             child: CircularProgressIndicator(),
  //           ));
  //   try {
  //     await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: email.text.trim(),
  //       password: password.text.trim(),
  //     );
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'user-not-found') {
  //       ScaffoldMessenger.of(context)
  //         ..removeCurrentSnackBar()
  //         ..showSnackBar(
  //           SnackBar(
  //             content: Text('No user found for that email.'),
  //           ),
  //         );
  //     } else if (e.code == 'wrong-password') {
  //       ScaffoldMessenger.of(context)
  //         ..removeCurrentSnackBar()
  //         ..showSnackBar(
  //           SnackBar(
  //             content: Text('Wrong password provided for that user.'),
  //           ),
  //         );
  //     }
  //   }
  //   navigatorKey.currentState!.popUntil((route) => route.isFirst);
  // }
//}
