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
              margin: const EdgeInsets.only(top: 19,right:33,left: 33),

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
                          ),
                        ),
                        const Text(
                          "Filter",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 34,
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
                      width: 45,
                      height: 46,
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
                            SizedBox(
                              width: screenWidth * 0.685,
                              height: screenHeight * 0.1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Departure Time",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                    ),
                                  ),
                                  MyRange()
                                ],
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.685,
                              height: screenHeight * 0.1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Back Time",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
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
                                  child: const Text(
                                    "Class",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
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
                                        padding: EdgeInsets.only(bottom: screenHeight * 0.009),
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
                                  margin: EdgeInsets.only(bottom : screenHeight * 0.010),
                                  child: const Text(
                                    "Company",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 200,
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
        bottomNavigationBar: buildNavigationBar(context),
      ),
    );
  }
}
