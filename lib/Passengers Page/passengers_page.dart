import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:booking/Information/colors.dart';

class PassengersPage extends StatefulWidget{
  const PassengersPage({super.key});
  @override
  State<PassengersPage> createState() => _PassengersPageState();
}

class _PassengersPageState extends State<PassengersPage>{
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: screenWidth * 0.06,
                    height: screenHeight * 0.04,
                    margin: EdgeInsets.only(left: screenWidth * 0.1, top: 0.01),
                    child:  InkWell(
                      onTap: (){},
                      child: SvgPicture.asset(
                        "assets/images/arrow_back.svg",
                        width: screenWidth * 0.06,
                        height: screenHeight * 0.04,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: screenWidth * 0.27, top: 0.007),
                    child: const Text(
                  "Passengers",
                  style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 34,
                  fontWeight: FontWeight.w400,
                  color: Colors.black
                  ),
                  ),
                  ),
                ],
              ),
            ),
            Container(
              color: grey2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: SvgPicture.asset('assets/images/local.svg',
                    height: screenHeight * 0.03,
                      width: screenWidth * 0.06,
                    ),
                  ),
                  Container(
                    child: SvgPicture.asset('assets/images/arrow_back_right.svg',
                      height: screenHeight * 0.02,
                      width: screenWidth * 0.02,
                    ),
                  ),
                  Container(
                    child: SvgPicture.asset('assets/images/people.svg',
                      height: screenHeight * 0.03,
                      width: screenWidth * 0.13,
                    ),
                  ),
                  Container(
                    child: SvgPicture.asset('assets/images/arrow_back_right.svg',
                      height: screenHeight * 0.02,
                      width: screenWidth * 0.02,
                    ),
                  ),
                  Container(
                    child: SvgPicture.asset('assets/images/like.svg',
                      height: screenHeight * 0.03,
                      width: screenWidth * 0.06,
                    ),
                  ),
                  Container(
                    child: SvgPicture.asset('assets/images/arrow_back_right.svg',
                      height: screenHeight * 0.02,
                      width: screenWidth * 0.02,
                    ),
                  ),
                  Container(
                    child: SvgPicture.asset('assets/images/credit_card.svg',
                      height: screenHeight * 0.03,
                      width: screenWidth * 0.09,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
}

