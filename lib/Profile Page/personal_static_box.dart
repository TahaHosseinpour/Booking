import 'package:booking/Information/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//
// Container PersonalBox (BuildContext context){
//   final screenWidth = MediaQuery
//       .of(context)
//       .size
//       .width;
//   final screenHeight = MediaQuery
//       .of(context)
//       .size
//       .height;
//   return Container(
//     padding: EdgeInsets.only(top: screenHeight * 0.011, bottom: screenHeight * 0.011, right: screenWidth * 0.06, left: screenWidth * 0.03 ),
//     width: screenWidth * 0.83 ,
//     height: screenHeight * 0.18,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(35),
//       color: grey3,
//     ),
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//
//         InkWell(
//           child:  Container(
//             alignment: Alignment.centerRight,
//             child: SvgPicture.asset('assets/images/edit.svg',
//               width: screenWidth * 0.093,
//               height: screenHeight * 0.042,
//             ),
//           ),
//         )
//       ],
//     ),
//   );
// }

class PersonalStaticBox extends StatefulWidget{
  @override
  State<PersonalStaticBox> createState() => _PersonalStaticBoxState();
}

class _PersonalStaticBoxState extends State<PersonalStaticBox> {
  Widget build(context){
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: screenHeight * 0.03,
                child: FittedBox(
                  child:  Text("Phone",
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
                  child:  Text("09105860050",
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
                  child:  Text("ID",
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
                  child:  Text("03489547",
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
                  child:  Text("Birthday",
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
                  child:  Text("1382/05/17",
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
      ],
    );
  }
}