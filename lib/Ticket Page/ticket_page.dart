import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_line/dotted_line.dart';

import 'package:booking/Information/colors.dart';
import 'package:booking/Ticket Page/ticket.dart';
import 'package:booking/Information/widgets.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TicketPage',
      home: Scaffold(
        body: Column(
          children: [
            Container(
                color: Colors.red,
                margin: EdgeInsets.only(top: 19,right:33,left: 33),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: SvgPicture.asset(
                        "assets/images/arrow_back.svg",
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        "assets/images/search_yellow.svg"
                      ),
                    )
                  ],
                ),
              ),
            Container(
              width: 335,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        child: Text(
                          'SYD',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 26
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          'Sydney',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 15
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DottedLine(
                          direction: Axis.horizontal,
                          lineLength: 60,
                            lineThickness: 3.0,
                            dashLength: 3.5
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5,right: 5),
                          child: SvgPicture.asset(
                              "assets/images/airplane_ticket.svg"
                          ),
                        ),
                        DottedLine(
                            direction: Axis.horizontal,
                            lineLength: 60,
                            lineThickness: 3.0,
                            dashLength: 3.5
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          'LCI',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 26
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Text(
                          'London',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 15
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 75,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                      padding: EdgeInsets.only(right: 3,left: 3),
                    child: InkWell(
                      onTap: (){print("click on InkWell");},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          padding: EdgeInsets.only(top: 2),
                          height: 70,
                          width: 63,
                          color: green2,

                          child: Column(
                            children: [
                              Text(
                                "Fri",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              Text(
                                "19",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 3,left: 3),
                    child: InkWell(
                      onTap: (){print("click on InkWell");},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          padding: EdgeInsets.only(top: 2),
                          height: 70,
                          width: 63,
                          color: green2,

                          child: Column(
                            children: [
                              Text(
                                "Fri",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              Text(
                                "19",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 3,left: 3),
                    child: InkWell(
                      onTap: (){print("click on InkWell");},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          padding: EdgeInsets.only(top: 2),
                          height: 70,
                          width: 63,
                          color: green2,

                          child: Column(
                            children: [
                              Text(
                                "Fri",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              Text(
                                "19",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 3,left: 3),
                    child: InkWell(
                      onTap: (){print("click on InkWell");},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          padding: EdgeInsets.only(top: 2),
                          height: 70,
                          width: 63,
                          color: green2,

                          child: Column(
                            children: [
                              Text(
                                "Fri",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              Text(
                                "19",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 3,left: 3),
                    child: InkWell(
                      onTap: (){print("click on InkWell");},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          padding: EdgeInsets.only(top: 2),
                          height: 70,
                          width: 63,
                          color: green2,

                          child: Column(
                            children: [
                              Text(
                                "Fri",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              Text(
                                "19",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 3,left: 3),
                    child: InkWell(
                      onTap: (){print("click on InkWell");},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          padding: EdgeInsets.only(top: 2),
                          height: 70,
                          width: 63,
                          color: green2,

                          child: Column(
                            children: [
                              Text(
                                "Fri",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              Text(
                                "19",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 3,left: 3),
                    child: InkWell(
                      onTap: (){print("click on InkWell");},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          padding: EdgeInsets.only(top: 2),
                          height: 70,
                          width: 63,
                          color: green2,

                          child: Column(
                            children: [
                              Text(
                                "Fri",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              Text(
                                "19",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 3,left: 3),
                    child: InkWell(
                      onTap: (){print("click on InkWell");},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          padding: EdgeInsets.only(top: 2),
                          height: 70,
                          width: 63,
                          color: green2,

                          child: Column(
                            children: [
                              Text(
                                "Fri",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              Text(
                                "19",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 3,left: 3),
                    child: InkWell(
                      onTap: (){print("click on InkWell");},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          padding: EdgeInsets.only(top: 2),
                          height: 70,
                          width: 63,
                          color: green2,

                          child: Column(
                            children: [
                              Text(
                                "Fri",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              Text(
                                "19",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: buildNavigationBar(),
      )

    );
  }
}