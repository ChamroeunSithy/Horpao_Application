import 'package:flutter/material.dart';
import 'package:horpao_application/Theme/horpao_color.dart';
import 'package:get/get.dart';

class DailyCost extends StatelessWidget {
  const DailyCost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.001),
      body: buildCard(),
    );
  }

  Center buildCard() {
    return Center(
      child: Container(
        height: 620,
        width: 380,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 10,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 24.0,
                      color: HorPaoColor().blue,
                    ),
                  ),
                  SizedBox(width: 45.0),
                  Text(
                    'Daily Cost',
                    style: TextStyle(
                      fontFamily: 'BLACKSWORD.OTF',
                      color: HorPaoColor().blue,
                      fontSize: 24.0,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildBluePoinStyle(),
                  const SizedBox(width: 5.0),
                  _buildBluePoinStyle(),
                  const SizedBox(width: 5.0),
                  _buildBluePoinStyle(),
                  const SizedBox(width: 5.0),
                  _buildBluePoinStyle(),
                  const SizedBox(width: 5.0),
                  _buildBluePoinStyle(),
                ],
              ),
              _buildTextformField('Auto-No'),
              _buildTextformField('Cost-For'),
              _buildTextformField('Date'),
              _buildTextformField('Unit-Price'),
              _buildTextformField('QTY'),
              _buildTextformField('Sub-Total'),
              SizedBox(height: 25.0),
              MaterialButton(
                minWidth: 200,
                height: 50,
                textColor: Colors.white,
                color: HorPaoColor().blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                child: const Text('Add Cost',
                    style:
                        TextStyle(fontFamily: 'BELCEADR.TTF', fontSize: 24.0)),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildTextformField<Widget>(String labelText) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
      decoration: InputDecoration(
        labelText: labelText,
      ),
      style: const TextStyle(
        fontFamily: 'BELCEADR.TTF',
        fontSize: 22.0,
      ),
    );
  }

  Container _buildBluePoinStyle() {
    return Container(
      height: 10.0,
      width: 10.0,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(18, 68, 129, 1).withOpacity(0.8),
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
