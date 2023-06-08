import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../Information/colors.dart';

Container TravelInfo(BuildContext context){
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;
  return Container(
    padding: EdgeInsets.only(bottom: screenHeight * 0.007),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(35),
    ),
    width:screenWidth * 0.83 ,
    height: screenHeight * 0.182,
    child: Column(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: screenHeight * 0.032,
          margin: EdgeInsets.only(top: screenHeight * 0.01),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: screenHeight * 0.028,
                child:FittedBox(
                  child:   Text("Fly Emirates",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Colors.black,
                        decoration: TextDecoration.none

                    ),
                  ),
                )
              ),
              SizedBox(width: 6,),
              Container(
                child: SvgPicture.asset('assets/images/ticket_icon.svg',
                  height: screenHeight * 0.032,
                  width: screenWidth * 0.069,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: screenHeight * 0.025,),
        Container(
          height: screenHeight * 0.065,
          width: screenWidth * 0.77,
          padding: EdgeInsets.only(bottom: screenHeight * 0.01),
          child: Column(
            children: [
              Container(
                height: screenHeight * 0.02,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // height: 20,
                      margin: EdgeInsets.only(left: screenWidth * 0.032),
                      height: screenHeight * 0.028,
                      alignment: Alignment.centerLeft,
                      child:FittedBox(
                        child:  Text('SYD',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              color: grey2,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none
                          ),
                        ),
                      )
                    ),
                    Container(
                      // height: 20,
                      margin: EdgeInsets.only(right: screenWidth * 0.032),
                      alignment: Alignment.centerRight,
                      height: screenHeight * 0.028,
                      child: FittedBox(
                        child: Text('LCY',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              color:grey2,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none

                          ),
                        ),
                      )
                    ),
                  ],
                ),
              ),
              Container(
                height: screenHeight * 0.033,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // height: 21,
                      margin:  EdgeInsets.only(left: screenWidth * 0.032),
                      alignment: Alignment.centerLeft,
                      height: screenHeight * 0.045,
                      child: FittedBox(
                        child:  Text('18:50',
                          style: TextStyle(
                              fontSize: 28,
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontWeight: FontWeight.w400,

                          ),
                        ),
                      )
                    ),
                    Container(
                      // height: 21,
                      child: SvgPicture.asset('assets/images/airplane_ticket.svg',
                      width: screenWidth * 0.083,
                      height: screenHeight * 0.036,
                      )
                    ),
                    Container(
                      margin:  EdgeInsets.only(right:screenWidth * 0.032),
                      // height: 21,
                      alignment: Alignment.centerRight,
                        height: screenHeight * 0.045,
                        width: screenWidth * 0.167,
                      child:FittedBox(
                        child:   Text('22:10',
                          style: TextStyle(
                              fontSize: 28,
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontWeight: FontWeight.w400,

                          ),
                        ),
                      )
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Divider(
          color: yellow1,
          thickness: 1,
          height: 0,
          indent: 15.5,
          endIndent: 15.5,
        ),
       SizedBox(height: screenHeight * 0.015,),
        Container(
          padding: EdgeInsets.only(right: screenWidth * 0.13, left: screenWidth *0.12),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: screenHeight * 0.025,
                child: FittedBox(
                  child: Text("Number",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: grey2,
                    ),
                  ),
                )
              ),
              Container(
                  height: screenHeight * 0.025,
                child:FittedBox(
                  child:  Text("987423",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ),
            ],
          ),
        )
      ],
    ),
  );
}