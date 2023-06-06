import 'package:booking/Information/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Container AccountBox (BuildContext context){
  final screenWidth = MediaQuery
      .of(context)
      .size
      .width;
  final screenHeight = MediaQuery
      .of(context)
      .size
      .height;
  return Container(
    padding: EdgeInsets.only(top: screenHeight * 0.011, bottom: screenHeight * 0.011, right: screenWidth * 0.06, left: screenWidth * 0.03 ),
    width: screenWidth * 0.83 ,
    height: screenHeight * 0.18,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(35),
      color: grey3,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: screenHeight * 0.03,
                child: FittedBox(
                  child:  Text("Username",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color:green3,
                    ),
                  ),
                ),
              ),
              Container(
                height: screenHeight * 0.025,
                child: FittedBox(
                  child:  Text("T.hosseinpour",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: screenHeight * 0.03,
                child: FittedBox(
                  child:  Text("Password",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color:green3,
                    ),
                  ),
                ),
              ),
              Container(
               // width: screenWidth * 0.16,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: screenHeight * 0.04,
                      child: FittedBox(
                        child:  Text("********",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){

                      },
                      child: Container(
                        child: SvgPicture.asset('assets/images/visible.svg',
                          width: screenWidth * 0.07,
                          height: screenHeight * 0.016,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: screenHeight * 0.03,
                child: FittedBox(
                  child:  Text("Email",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color:green3,
                    ),
                  ),
                ),
              ),
              Container(
                height: screenHeight * 0.025,
                child: FittedBox(
                  child:  Text("t.hosseinpour@gmail.com",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
       InkWell(
         child:  Container(
           alignment: Alignment.centerRight,
           child: SvgPicture.asset('assets/images/edit.svg',
             width: screenWidth * 0.093,
             height: screenHeight * 0.042,
           ),
         ),
       )
      ],
    ),
  );
}