import 'package:booking/Information/buildBottomNavigationBar.dart';
import 'package:booking/Information/colors.dart';
import 'package:booking/Information/widgets.dart';
import 'package:booking/Start%20Page/start.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:booking/Information/widgets.dart';
import 'package:booking/Confirm Page/confirm_page.dart';
import 'package:booking/Database/travel.dart';
import 'package:booking/Database/user.dart';

Container Price(BuildContext context,String button_name ,Travel futureTravel , User currentUser, int passengersNumber){


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
                  child: Text('${futureTravel.cost}\$',
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
        InkWell(
          child: buttonContainer(button_name, screenHeight, screenWidth),
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ConfirmPage(currentUser: currentUser,futureTravel: futureTravel,passengersNumber: passengersNumber,)),
            );
          },
        ),
        BuildBottomNavigationBar(activeIcon: "home",currentUser: currentUser,)
      ],
    ),
  );
}