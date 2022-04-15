import 'package:flutter/material.dart';
import 'package:horpao_application/Screen/daily_cost.dart';
import 'package:horpao_application/Screen/home_screen.dart';
import 'package:horpao_application/Screen/record_screen.dart';
import 'package:horpao_application/Theme/horpao_color.dart';
import 'package:get/get.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _currentIndex = 0;
  final List<Widget> _screenlist = [];
  @override
  void initState() {
    super.initState();
    _screenlist.add(HomeScreen());
    _screenlist.add(RecordScreen());
  }

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        controller: _pageController,
        children: _screenlist,
      ),
      bottomNavigationBar: _buildBottom,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.dialog(DailyCost());
        },
        child: const Icon(Icons.add, size: 35.0),
        backgroundColor: const Color.fromRGBO(35, 97, 172, 1),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  get _buildBottom => BottomAppBar(
        notchMargin: 10.0,
        shape: const CircularNotchedRectangle(),
        color: Colors.white,
        elevation: 50.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              onPressed: () {
                setState(() {
                  _currentIndex = 0;
                  _pageController.animateToPage(_currentIndex,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOut);
                });
              },
              child: Row(
                children: [
                  _currentIndex == 0
                      ? Icon(Icons.home, size: 30.0, color: HorPaoColor().blue)
                      : Icon(Icons.home, size: 30.0),
                  SizedBox(width: 10.0),
                  _currentIndex == 1
                      ? Text("Home", style: TextStyle(fontSize: 14.0))
                      : Text("Home",
                          style: TextStyle(
                              fontSize: 14.0, color: HorPaoColor().blue)),
                ],
              ),
            ),
            const SizedBox(),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              onPressed: () {
                setState(() {
                  _currentIndex = 1;
                  _pageController.animateToPage(
                    _currentIndex,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                  );
                });
              },
              child: Row(
                children: [
                  _currentIndex == 1
                      ? Icon(Icons.date_range_rounded,
                          size: 30.0, color: HorPaoColor().blue)
                      : Icon(Icons.date_range_rounded, size: 30.0),
                  SizedBox(width: 10.0),
                  _currentIndex == 1
                      ? Text("Record",
                          style: TextStyle(
                              fontSize: 14.0, color: HorPaoColor().blue))
                      : Text("Record", style: TextStyle(fontSize: 14.0)),
                ],
              ),
            ),
          ],
        ),
      );
}
