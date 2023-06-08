import 'package:booking/Information/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Search Page/date_picker.dart';

Widget SearchBox(BuildContext context){
  final screenWidth = MediaQuery
      .of(context)
      .size
      .width;
  final screenHeight = MediaQuery
      .of(context)
      .size
      .height;
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
        padding: EdgeInsets.only(top: screenHeight * 0.01),
        alignment: Alignment.center,
        width: screenWidth * 0.83,
        height: screenHeight * 0.19,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: grey3,
        ),
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Container(
             alignment: Alignment.center,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Column(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                           margin :EdgeInsets.only(left: screenWidth * 0.04),
                           child: SvgPicture.asset('assets/images/Departure.svg',
                             width: screenWidth * 0.037,
                             height: screenHeight * 0.018,
                           ),
                         ),
                         SizedBox(width: screenWidth * 0.01,),
                         Container(
                             height: screenHeight * 0.017,
                             child:FittedBox(
                               child:  Text("Departure",
                                 style: TextStyle(
                                   fontSize: 12,
                                   fontFamily: 'Poppins',
                                 ),
                               ),
                             )
                         ),
                       ],
                     ),
                     SizedBox(height: screenHeight * 0.0096,),
                     Container(
                       child:   MyDatePickerTextField(),
                       margin: EdgeInsets.only(left: screenWidth * 0.11),
                     ),
                     ],
                 ),
                     Column(
                       children: [
                         Row(
                           children: [
                             Container(
                               child: SvgPicture.asset('assets/images/Departure.svg',
                                 width: screenWidth * 0.037,
                                 height: screenHeight * 0.018,
                               ),
                             ),
                             SizedBox(width: screenWidth * 0.01,),
                             Container(
                               margin: EdgeInsets.only(right: screenWidth * 0.27),
                                 height: screenHeight * 0.017,
                                 child: FittedBox(
                                   child: Text("Back",
                                     style: TextStyle(
                                       fontSize: 12,
                                       fontFamily: 'Poppins',
                                     ),
                                   ),
                                 )
                             ),
                           ],
                         ),
                         SizedBox(height: screenHeight * 0.0096,),
                         Container(
                           child: MyDatePickerTextField(),
                           margin: EdgeInsets.only(right: screenWidth * 0.13),
                         ),
                       ],
                     ),
               ],
             ),
           ),
            Container(
             // height: screenHeight * 0.06,
              padding: EdgeInsets.only(right: screenWidth * 0.17, left:screenWidth * 0.17 ),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Travel Number',
                  hintStyle: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    //height: screenHeight * 0.04,
                  ),
                ),

              ),
            ),
          ],
        ),
      ),
    InkWell(
      onTap: (){
        print("salam");
      },
        child: Container(
          width: screenWidth * 0.3,
          height: screenHeight * 0.046,
          margin: EdgeInsets.only(top: screenHeight * 0.19),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(45),
            color: yellow1,
          ),
          child:  Container(
            height: screenHeight * 0.04,
            child: FittedBox(
              child: Text(
                "Search",
                style: TextStyle(
                  backgroundColor: yellow1,
                  fontSize: 25,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          )
        )
      ),

    ],
  );
}