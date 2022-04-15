// import 'package:flutter/material.dart';
// import 'package:horpao_application/Screen/login_screen.dart';

// class StartScreen extends StatefulWidget {
//   const StartScreen({Key? key}) : super(key: key);

//   @override
//   State<StartScreen> createState() => _StartScreenState();
// }

// class _StartScreenState extends State<StartScreen> {
//   @override
//   void initState() {
//     super.initState();
//     _navigatetologin();
//   }

//   _navigatetologin() async {
//     await Future.delayed(Duration(milliseconds: 1200), () {});
//     Navigator.pushReplacement(
//         context, MaterialPageRoute(builder: (context) => LoginScreen()));
//   }

//   @override
//   Widget build(BuildContext context) {
//     var _screenhight = MediaQuery.of(context).size.height;
//     var _screenWight = MediaQuery.of(context).size.width;

//     return Scaffold(
//       body: Stack(
//         children: [
//           SizedBox(
//             height: _screenhight,
//             width: _screenWight,
//             child: const Image(
//               image: AssetImage(
//                 "assets/1453912.jpg",
//               ),
//               fit: BoxFit.cover,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: SizedBox(
//               height: _screenhight,
//               child: const Image(
//                 image: AssetImage("assets/Logo welocome.png"),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
