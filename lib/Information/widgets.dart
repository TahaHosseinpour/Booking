import 'package:flutter/material.dart';
import 'package:booking/Information/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
ClipRRect buildNavigationBar(BuildContext context) {
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
              color: Colors.white,
            ),
            onTap: (){},
          ),
          InkWell(
            child: SvgPicture.asset(
              'assets/images/transaction.svg',
              height: screenWidth * 0.079,
              width: screenWidth * 0.083,
              color: Colors.white,
            ),
            onTap: (){},
          ),
          InkWell(
            child: SvgPicture.asset(
              'assets/images/ticket.svg',
              height: screenWidth * 0.079,
              width: screenWidth * 0.083,
              color: Colors.white,
            ),
            onTap: (){},
          ),
          InkWell(
            child: SvgPicture.asset(
              'assets/images/home.svg',
              height: screenWidth * 0.079,
              width: screenWidth * 0.083,
              color: Colors.white,
            ),
            onTap: (){},
          ),
        ],
      ),
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

