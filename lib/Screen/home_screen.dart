import 'package:flutter/material.dart';
import 'package:horpao_application/Background/backgroun.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBoby,
      bottomNavigationBar: _buildBottom,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add, size: 35.0),
        backgroundColor: const Color.fromRGBO(35, 97, 172, 1),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  get _buildBoby => Stack(
        children: [
          const Background(),
          Positioned(
            top: 50.0,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 180.0,
                // color: Colors.redAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Good morning, Sithy !",
                      style: TextStyle(
                        fontSize: 26.0,
                        fontFamily: 'BLACKSWORD.OTF',
                        color: Colors.white,
                      ),
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
                  onTap: () {},
                  child: const Icon(Icons.notifications_active_outlined,
                      size: 35.0, color: Colors.white),
                ),
                const SizedBox(width: 20.0),
                InkWell(
                  onTap: () {},
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
            left: 20.0,
            child: Row(
              children: [
                const Text(
                  "Daily-Cost",
                  style: TextStyle(
                      fontSize: 26.0,
                      fontFamily: "BELCEADR.TTF",
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 90.0,
                ),
                const Text(
                  "Total ",
                  style: TextStyle(
                      fontSize: 26.0,
                      fontFamily: "BELCEADR.TTF",
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 40.0,
                  width: 155.0,
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
                ),
              ],
            ),
          ),
        ],
      );

  get _buildBottom => BottomAppBar(
        notchMargin: 10.0,
        shape: const CircularNotchedRectangle(),
        color: Colors.white,
        elevation: 50.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonBar(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.home,
                    size: 30.0,
                  ),
                ),
                const Text("Home"),
              ],
            ),
            const SizedBox(),
            ButtonBar(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.assessment,
                    size: 30.0,
                  ),
                ),
                const Text("Record"),
              ],
            ),
          ],
        ),
      );
}
