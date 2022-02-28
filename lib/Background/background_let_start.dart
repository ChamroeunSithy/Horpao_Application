import 'package:flutter/material.dart';

class BackgroundLetStartScreen extends StatelessWidget {
  const BackgroundLetStartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/Backgroun.jpg'),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                const SizedBox(height: 90.0),
                Image.asset(
                    'assets/cartoon-students-using-mobile-app-for-education-vector-34347325.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
