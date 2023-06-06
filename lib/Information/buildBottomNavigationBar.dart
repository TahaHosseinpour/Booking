import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:booking/Information/colors.dart';

class BuildBottomNavigationBar extends StatefulWidget{

  String activeIcon = "";

  BuildBottomNavigationBar({super.key, required this.activeIcon});

  @override
  State<BuildBottomNavigationBar> createState() => _BuildBottomNavigationBarState();
}

class _BuildBottomNavigationBarState extends State<BuildBottomNavigationBar> {

  bool homeIsActive = true;
  bool ticketIsActive = false;
  bool transactionIsActive = false;
  bool profileIsActive = false;

  Color homeColor = grey2;
  Color ticketColor = Colors.white;
  Color transactionColor = Colors.white;
  Color profileColor = Colors.white;

  void setIcon(){
    if(widget.activeIcon == "home"){
      homeIsActive = true;
      homeColor = grey2;

      ticketColor = Colors.white;
      transactionColor = Colors.white;
      profileColor = Colors.white;
      ticketIsActive = false;
      transactionIsActive = false;
      profileIsActive = false;
    }
    if(widget.activeIcon == "ticket"){
      ticketIsActive = true;

      ticketColor = grey2;
      homeColor = Colors.white;
      transactionColor = Colors.white;
      profileColor = Colors.white;
      homeIsActive = false;
      transactionIsActive = false;
      profileIsActive = false;
    }
    if(widget.activeIcon == "transaction"){
      transactionIsActive = true;
      transactionColor = grey2;

      homeColor = Colors.white;
      ticketColor = Colors.white;
      profileColor = Colors.white;
      homeIsActive = false;
      ticketIsActive = false;
      profileIsActive = false;
    }
    if(widget.activeIcon == "profile"){
      profileIsActive = true;
      profileColor = grey2;

      homeColor = Colors.white;
      ticketColor = Colors.white;
      transactionColor = Colors.white;
      homeIsActive = false;
      ticketIsActive = false;
      transactionIsActive = false;
    }
  }

  Widget build(context){
    setState(() {
      setIcon();
    });
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25)
      ),
      child: Container(
        color: green2,
        padding:  EdgeInsets.only(top: screenHeight * 0.025,bottom: screenHeight * 0.025),
        child : Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              child: SvgPicture.asset(
                'assets/images/profile.svg',
                height: screenWidth * 0.079,
                width: screenWidth * 0.083,
                color: profileColor,
              ),
              onTap: (){
                setState(() {
                  widget.activeIcon = "profile";
                });
              },
            ),
            InkWell(
              child: SvgPicture.asset(
                'assets/images/transaction.svg',
                height: screenWidth * 0.079,
                width: screenWidth * 0.083,
                color: transactionColor,
              ),
              onTap: (){
                setState(() {
                  widget.activeIcon = "transaction";
                });
              },
            ),
            InkWell(
              child: SvgPicture.asset(
                'assets/images/ticket.svg',
                height: screenWidth * 0.079,
                width: screenWidth * 0.083,
                color: ticketColor,
              ),
              onTap: (){
                setState(() {
                  widget.activeIcon = "ticket";
                });
              },
            ),
            InkWell(
              child: SvgPicture.asset(
                'assets/images/home.svg',
                height: screenWidth * 0.079,
                width: screenWidth * 0.083,
                color: homeColor,
              ),
              onTap: (){
                setState(() {
                  widget.activeIcon = "home";
                });
              },
            ),
          ],
        ),
      ),
    );  }
}