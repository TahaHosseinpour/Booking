import 'package:booking/Filter%20Page/group_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:booking/Information/widgets.dart';
import 'package:booking/Information/colors.dart';
import 'package:booking/Filter%20Page/range_side.dart';
import 'package:checkbox_grouped/checkbox_grouped.dart';
import 'package:booking/Start Page/start.dart';

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
                  Container(
                    width: 146,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){},
                          child: SvgPicture.asset(
                            "assets/images/arrow_back.svg",
                          ),
                        ),
                        Text(
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
                  width: 358,
                  height: screenHeight * 0.78,
                  color: grey3,
                  padding: EdgeInsets.only(top: 35 , left: 31),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Container(
                        width: 296,
                        height: 78,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
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
                      Container(
                        width: 296,
                        height: 78,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
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
                      Container(
                        // margin: EdgeInsets.only(top: 28),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom : 10),
                              child: Text(
                                "Class",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 8),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 8),
                                    child:checkBox(lable: 'First Class'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 8),
                                    child:checkBox(lable: 'Business Class'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 8),
                                    child:checkBox(lable: 'Economy Class'),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        // margin: EdgeInsets.only(top: 28),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom : 10),
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
                              margin: EdgeInsets.only(left: 8),
                              child: ListView(
                                scrollDirection: Axis.vertical,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 8),
                                    child:checkBox(lable: 'Delta'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 8),
                                    child:checkBox(lable: 'United'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 8),
                                    child:checkBox(lable: 'KLM'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 8),
                                    child:checkBox(lable: 'Air France'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 8),
                                    child:checkBox(lable: 'British Airways'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 8),
                                    child:checkBox(lable: 'Iberia'),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      MyButton().buildElevatedButton("Apply Filters", context),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: buildNavigationBar(),
      ),
    );
  }
}
