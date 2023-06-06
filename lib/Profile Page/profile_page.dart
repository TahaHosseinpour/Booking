import 'package:booking/Information/wallet.dart';
import 'package:booking/Profile%20Page/shapes_painter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Information/colors.dart';

class ProfilePage extends StatefulWidget{
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    final screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column (
          children: [
            CustomPaint(
              painter: ShapesPainter(),
              child: Container(
                width: screenWidth,
                height: screenHeight * 0.37,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: screenWidth * 0.08, left: screenWidth * 0.08, top: screenHeight * 0.032),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: Container(
                              child: SvgPicture.asset('assets/images/profile_edit.svg',
                              height: screenHeight * 0.139,
                                width: screenWidth * 0.3,
                              ),
                            ),
                          ),
                          Container(
                            height: screenHeight * 0.048,
                            child:FittedBox(
                              child:  Text("T.hosseinpour",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          )
                        ],
                      ),
                    ),
                    Wallet(balance: balance)
                  ],
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}


