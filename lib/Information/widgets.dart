import 'package:flutter/material.dart';
import 'package:booking/Information/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

Container buildNavigationBar(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;
  return Container(
    color: green2,
    padding:  EdgeInsets.only(top: screenHeight * 0.025,bottom: screenHeight * 0.025),
    child : Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SvgPicture.asset(
          'assets/images/ticket.svg',
          height: screenHeight * 0.036,
          width: screenWidth * 0.076,
          color: Colors.white,
        ),
        SvgPicture.asset(
          'assets/images/home.svg',
          height: screenHeight * 0.041,
          width: screenWidth * 0.089,
          color: green3,
        ),
        SvgPicture.asset(
          'assets/images/setting.svg',
          height: screenHeight * 0.036,
          width: screenWidth * 0.069,
          color: Colors.white,
        ),
      ],
    ),
  );
}


ClipRRect buttonContainer(String text , double screenHeight , double screenWidth){
  return ClipRRect(
    borderRadius: BorderRadius.circular(70),
    child: Container(
      width: screenWidth * 0.83,
      height: screenHeight * 0.107,
      color: yellow1,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 28,
            fontFamily: 'Poppins',
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}

