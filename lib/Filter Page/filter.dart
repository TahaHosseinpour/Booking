import 'package:booking/Information/buildBottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:booking/Information/widgets.dart';
import 'package:booking/Information/colors.dart';
import 'package:booking/Filter%20Page/range_side.dart';
import 'package:booking/Filter Page/checkBox.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  // This widget is the root of your application.
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TicketPage',
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              // color: Colors.red,
              margin:  EdgeInsets.only(top: screenHeight * 0.02,right:screenWidth * 0.076,left: screenWidth * 0.076),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: screenWidth * 0.337,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){},
                          child: SvgPicture.asset(
                            "assets/images/arrow_back.svg",
                            width: screenWidth * 0.06,
                            height: screenHeight * 0.04,
                          ),
                        ),
                         Text(
                          "Filter",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: screenHeight * 0.036,
                              fontWeight: FontWeight.w400,
                              color: Colors.black
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(
                        "assets/images/Filter.svg",
                      width: screenWidth * 0.1,
                      height: screenHeight * 0.049,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: screenHeight * 0.03),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  width: screenWidth * 0.83,
                  height: screenHeight * 0.78,
                  color: grey3,
                  padding: EdgeInsets.only(top: screenHeight * 0.037 ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: screenWidth * 0.072),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Container(
                              padding: EdgeInsets.only(top: screenHeight * 0.024),
                              width: screenWidth * 0.685,
                              height: screenHeight * 0.13,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                   Text(
                                    "Departure Time",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      fontSize: screenHeight * 0.021,
                                    ),
                                  ),
                                  MyRange()
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: screenHeight * 0.024),
                              width: screenWidth * 0.685,
                              height: screenHeight * 0.13,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                   Text(
                                    "Back Time",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      fontSize: screenHeight * 0.02,
                                    ),
                                  ),
                                  MyRange()
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom : screenHeight * 0.010),
                                  child:  Text(
                                    "Class",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      fontSize: screenHeight * 0.02,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: screenWidth * 0.018),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: screenHeight * 0.009),
                                        child:checkBox(lable: 'First Class'),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: screenHeight * 0.009),
                                        child:checkBox(lable: 'Business Class'),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: screenHeight * 0.015),
                                        child:checkBox(lable: 'Economy Class'),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom : screenHeight * 0.01),
                                  child:  Text(
                                    "Company",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      fontSize: screenHeight * 0.02,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: screenHeight * 0.2,
                                  margin: EdgeInsets.only(left: screenWidth * 0.018),
                                  child: ListView(
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: screenHeight * 0.009),
                                        child:checkBox(lable: 'Delta'),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: screenHeight * 0.009),
                                        child:checkBox(lable: 'United'),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: screenHeight * 0.009),
                                        child:checkBox(lable: 'KLM'),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: screenHeight * 0.009),
                                        child:checkBox(lable: 'Air France'),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: screenHeight * 0.009),
                                        child:checkBox(lable: 'British Airways'),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: screenHeight * 0.009),
                                        child:checkBox(lable: 'Iberia'),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        child: buttonContainer(
                            "Apply Travels",
                            screenHeight,
                            screenWidth,
                        ),
                        onTap: (){
                          print("click on Apply Filters");
                        },
                      )
                    ]
                  ),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: BuildBottomNavigationBar(activeIcon:"home"),
      ),
    );
  }
}
