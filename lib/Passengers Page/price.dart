import 'package:booking/Information/buildBottomNavigationBar.dart';
import 'package:booking/Information/colors.dart';
import 'package:booking/Information/widgets.dart';
import 'package:booking/Start%20Page/start.dart';
import 'package:flutter/cupertino.dart';

Container Price(BuildContext context, String botton_name){
  final screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;
  return Container(
    height:screenHeight * 0.29,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35)),
      color: yellow2,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: screenWidth * 0.22,
                height: screenHeight * 0.048,
                child: FittedBox(
                  child: Text('Price :',
                    style: TextStyle(
                      fontSize: 34,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color:grey2,
                    ),
                  ),
                ),
                margin: EdgeInsets.only(left: screenWidth * 0.17),
              ),
              Container(
                width: screenWidth * 0.26,
                height: screenHeight * 0.07,
                child: FittedBox(
                  child: Text('320\$',
                    style: TextStyle(
                      fontSize: 50,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                margin: EdgeInsets.only(right: screenWidth * 0.17),
              ),
            ],
          ),
        ),
        MyButton().buildElevatedButton(botton_name, context),
        BuildBottomNavigationBar(activeIcon: "home")
      ],
    ),
  );
}