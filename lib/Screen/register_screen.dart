import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horpao_application/Background/backgroun_login_register.dart';
import 'package:horpao_application/Screen/UserInformation/dateofbirth_screen.dart';
import 'package:horpao_application/Theme/horpao_color.dart';
import 'package:horpao_application/controllers/bindings/auth_controller.dart';
import 'package:horpao_application/models/user.dart';

class RegisterScreen extends GetWidget<AuthController> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController fnameController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController conpasswordController = TextEditingController();

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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 36.0),
                          SizedBox(
                            width: 120.0,
                            child: TextFormField(
                              controller: fnameController,
                              autocorrect: false,
                              decoration: InputDecoration(
                                labelText: 'Family Name',
                              ),
                              style: const TextStyle(
                                fontFamily: 'BELCEADR.TTF',
                                fontSize: 19.0,
                              ),
                            ),
                          ),
                          Spacer(),
                          SizedBox(
                            width: 120.0,
                            child: TextFormField(
                              controller: nameController,
                              autocorrect: false,
                              decoration: InputDecoration(
                                labelText: 'Your Name',
                              ),
                              style: const TextStyle(
                                fontFamily: 'BELCEADR.TTF',
                                fontSize: 19.0,
                              ),
                            ),
                          ),
                          SizedBox(width: 36.0),
                        ],
                      ),
                      SizedBox(
                        width: 250.0,
                        child: TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          autocorrect: false,
                          decoration: InputDecoration(
                            labelText: 'E-mail',
                          ),
                          style: const TextStyle(
                            fontFamily: 'BELCEADR.TTF',
                            fontSize: 19.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 250.0,
                        child: TextFormField(
                          controller: passwordController,
                          keyboardType: TextInputType.text,
                          autocorrect: false,
                          decoration: InputDecoration(
                            labelText: 'Password',
                          ),
                          style: const TextStyle(
                            fontFamily: 'BELCEADR.TTF',
                            fontSize: 19.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 250.0,
                        child: TextFormField(
                          controller: conpasswordController,
                          keyboardType: TextInputType.text,
                          autocorrect: false,
                          decoration: InputDecoration(
                            labelText: 'Confirm Password',
                          ),
                          style: const TextStyle(
                            fontFamily: 'BELCEADR.TTF',
                            fontSize: 19.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      SizedBox(
                        width: 250.0,
                        child: MaterialButton(
                          onPressed: () {
                            UserModel userModel = UserModel(
                              fname: fnameController.text,
                              name: nameController.text,
                              email: emailController.text,
                            );
                            Get.to(DateOfBirth(
                              userModel: userModel,
                              password: passwordController.text,
                              conPassword: conpasswordController.text,
                            ));
                          },
                          textColor: Colors.white,
                          color: HorPaoColor().blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: const Text(
                            'Create Account',
                            style: TextStyle(
                              fontFamily: 'BELCEADR.TTF',
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 765.0,
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
                      Get.back();
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
      );
}



// class RegisterScreen extends StatefulWidget {
//   RegisterScreen({Key? key}) : super(key: key);

//   @override
//   State<RegisterScreen> createState() => _RegisterScreenState();
// }

// class _RegisterScreenState extends State<RegisterScreen> {
//   bool _hide = true;
//   bool _hide1 = true;
//   bool _visibilitycolor = true;
//   bool _visibilitycolor1 = true;
// // ignore: prefer_typing_uninitialized_variables
//   late var _screenWidth;
//   // ignore: prefer_typing_uninitialized_variables
//   late var _screenHight;

//   final name = TextEditingController();
//   final email = TextEditingController();
//   final password = TextEditingController();
//   final confirmPassword = TextEditingController();
//   final formKey = GlobalKey<FormState>();

//   @override
//   void dispose() {
//     // name.removeListener(onListen);
//     email.removeListener(onListen);
//     password.removeListener(onListen);
//     // confirmPassword.addListener(onListen);
//     super.dispose();
//   }

//   void onListen() => setState(() {});
//   bool isPassword = true;

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

//   get _buildBody => SizedBox(
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
//                     children: [
//                       const SizedBox(height: 22.0),
//                       const ListTile(
//                         title: Center(
//                           child: Text(
//                             'Register',
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
//                           controller: name,
//                           keyboardType: TextInputType.name,
//                           autocorrect: false,
//                           decoration: InputDecoration(
//                             labelText: 'Name',
//                             suffixIcon: name.text.isEmpty
//                                 ? SizedBox(width: 0.0)
//                                 : IconButton(
//                                     onPressed: () {
//                                       name.clear();
//                                     },
//                                     icon: Icon(
//                                       Icons.close,
//                                       size: 20.0,
//                                     ),
//                                   ),
//                           ),
//                           style: const TextStyle(
//                               fontFamily: 'BELCEADR.TTF', fontSize: 19.0),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 250.0,
//                         child: TextFormField(
//                           controller: email,
//                           keyboardType: TextInputType.emailAddress,
//                           autocorrect: false,
//                           decoration: InputDecoration(
//                             labelText: 'E-mail',
//                             suffixIcon: email.text.isEmpty
//                                 ? SizedBox(width: 0.0)
//                                 : IconButton(
//                                     onPressed: () => email.clear(),
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
//                           style: const TextStyle(
//                               fontFamily: 'BELCEADR.TTF', fontSize: 19.0),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 250.0,
//                         child: TextFormField(
//                           controller: password,
//                           keyboardType: TextInputType.text,
//                           obscureText: _hide,
//                           autocorrect: false,
//                           decoration: InputDecoration(
//                             labelText: 'Password',
//                             suffixIcon: password.text.isEmpty
//                                 ? SizedBox(width: 0.0)
//                                 : IconButton(
//                                     onPressed: () {
//                                       setState(() {
//                                         _hide = !_hide;
//                                         _visibilitycolor = !_visibilitycolor;
//                                       });
//                                     },
//                                     icon: Icon(
//                                       _hide
//                                           ? Icons.visibility
//                                           : Icons.visibility_off,
//                                       color: _visibilitycolor
//                                           ? HorPaoColor().blue
//                                           : Colors.grey,
//                                     ),
//                                   ),
//                           ),
//                           validator: (value) {
//                             if (value == null || value == '') {
//                               return 'Password is Empty';
//                             } else {
//                               return null;
//                             }
//                           },
//                           style: const TextStyle(
//                               fontFamily: 'BELCEADR.TTF', fontSize: 19.0),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 250.0,
//                         child: TextFormField(
//                           controller: confirmPassword,
//                           keyboardType: TextInputType.text,
//                           obscureText: _hide1,
//                           autocorrect: false,
//                           decoration: InputDecoration(
//                             labelText: 'Confirm Password',
//                             suffixIcon: confirmPassword.text.isEmpty
//                                 ? SizedBox(width: 0.0)
//                                 : IconButton(
//                                     onPressed: () {
//                                       setState(() {
//                                         _hide1 = !_hide1;
//                                         _visibilitycolor1 = !_visibilitycolor1;
//                                       });
//                                     },
//                                     icon: Icon(
//                                       _hide1
//                                           ? Icons.visibility
//                                           : Icons.visibility_off,
//                                       color: _visibilitycolor1
//                                           ? HorPaoColor().blue
//                                           : Colors.grey,
//                                     ),
//                                   ),
//                           ),
//                           style: const TextStyle(
//                               fontFamily: 'BELCEADR.TTF', fontSize: 19.0),
//                         ),
//                       ),
//                       const SizedBox(height: 20.0),
//                       SizedBox(
//                         width: 250.0,
//                         child: MaterialButton(
//                           onPressed: () {
//                             register();
//                           },
//                           textColor: Colors.white,
//                           color: HorPaoColor().blue,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8.0)),
//                           child: const Text(
//                             'Create Account',
//                             style: TextStyle(
//                                 fontFamily: 'BELCEADR.TTF', fontSize: 18.0),
//                           ),
//                         ),
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
//                   text: "Already have an account?",
//                   style: TextStyle(
//                       fontFamily: 'BELCEADR.TTF',
//                       fontSize: 20.0,
//                       color: Colors.black),
//                   children: [
//                     TextSpan(
//                       recognizer: TapGestureRecognizer()
//                         ..onTap = widget.onClickedSignUp,
//                       text: '\nLog In',
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
//             //   top: 765.0,
//             //   child: Column(
//             //     children: [
//             //       const Text(
//             //         "Already have account ?",
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
//             //           Get.back();
//             //         },
//             //         child: Text(
//             //           'Login',
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
//       );

//   // Future register() async {
//   //   final isValid = formKey.currentState!.validate();
//   //   if (!isValid) return;

//   //   showDialog(
//   //       context: context,
//   //       barrierDismissible: false,
//   //       builder: (context) => Center(
//   //             child: CircularProgressIndicator(),
//   //           ));
//   //   try {
//   //     await FirebaseAuth.instance.createUserWithEmailAndPassword(
//   //       email: email.text.trim(),
//   //       password: password.text.trim(),
//   //     );
//   //   } on FirebaseAuthException catch (e) {
//   //     if (e.code == 'weak-password') {
//   //       ScaffoldMessenger.of(context)
//   //         ..removeCurrentSnackBar()
//   //         ..showSnackBar(
//   //           SnackBar(
//   //             content: Text('The password provided is too weak.'),
//   //           ),
//   //         );
//   //     } else if (e.code == 'email-already-in-use') {
//   //       ScaffoldMessenger.of(context)
//   //         ..removeCurrentSnackBar()
//   //         ..showSnackBar(
//   //           SnackBar(
//   //             content: Text('The account already exists for that email.'),
//   //           ),
//   //         );
//   //     }
//   //   } catch (e) {
//   //     print(e);
//   //   }
//   //   navigatorKey.currentState!.popUntil((route) => route.isFirst);
//   // }
// }
