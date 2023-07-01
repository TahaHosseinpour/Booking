import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Container SeatNumber(BuildContext context, String name, int number){
  final screenWidth = MediaQuery
      .of(context)
      .size
      .width;
  final screenHeight = MediaQuery
      .of(context)
      .size
      .height;
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(screenHeight * 0.037),
      color: Colors.white,
    ),
    alignment: Alignment.center,
    padding: EdgeInsets.only(right: screenWidth * 0.03, left: screenWidth * 0.069),
    width: screenWidth * 0.83,
    height: screenHeight * 0.077,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: screenWidth * 0.39,
          height: screenHeight * 0.028,
          child: FittedBox(
            child: Text(name,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: screenHeight * 0.021,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        Container(
          width: screenWidth * 0.12,
          height: screenHeight * 0.03,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: screenWidth * 0.055,
                height: screenHeight * 0.028,
                child: FittedBox(
                  child: Text("$number",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Container(
                child: SvgPicture.asset('assets/images/seat.svg',
                  width: screenWidth * 0.0558,
                  height: screenHeight * 0.0429,
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}