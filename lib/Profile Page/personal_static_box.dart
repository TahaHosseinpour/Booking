import 'package:booking/Information/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class PersonalStaticBox extends StatefulWidget{

  String phone;
  String id;
  String birthday;

  PersonalStaticBox({
    required this.phone,
    required this.id,
    required this.birthday
  });

  @override
  State<PersonalStaticBox> createState() => _PersonalStaticBoxState();
}

class _PersonalStaticBoxState extends State<PersonalStaticBox> {
  @override
  Widget build(context){
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
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
            SizedBox(
              height: screenHeight * 0.025,
              child: FittedBox(
                child:  Text(widget.phone,
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
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
            SizedBox(
              height: screenHeight * 0.025,
              child: FittedBox(
                child:  Text(widget.id,
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
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
            SizedBox(
              height: screenHeight * 0.025,
              child: FittedBox(
                child:  Text(widget.birthday,
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}