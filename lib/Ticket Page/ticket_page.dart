import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:dropdown_search/dropdown_search.dart';

import 'package:booking/Information/colors.dart';
import 'package:booking/Ticket Page/ticket.dart';
import 'package:booking/Information/widgets.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
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
                      const Text(
                        'SYD',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 26
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: const Text(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const DottedLine(
                        direction: Axis.horizontal,
                        lineLength: 60,
                          lineThickness: 3.0,
                          dashLength: 3.5
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5,right: 5),
                        child: SvgPicture.asset(
                            "assets/images/airplane_ticket.svg"
                        ),
                      ),
                      const DottedLine(
                          direction: Axis.horizontal,
                          lineLength: 60,
                          lineThickness: 3.0,
                          dashLength: 3.5
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        'LCI',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 26
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: const Text(
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
                  buildDateItem("Fri","13"),
                  buildDateItem("Sat","14"),
                  buildDateItem("Sun","15"),
                  buildDateItem("Mon","16"),
                  buildDateItem("Tue","17"),
                  buildDateItem("Wed","18"),
                  buildDateItem("Thu","19"),
                  buildDateItem("Fri","20"),
                  buildDateItem("Sat","21"),


                ],
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50)
              ),
              child: Container(
                  height: screenHeight * 0.62,
                  color: green1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 35,right: 35,top: 17),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              height: 30,
                              width: 132,
                              color: Colors.white,
                              child: DropdownSearch<String> (
                                popupProps: const PopupProps.menu(
                                  showSelectedItems: true,
                                  showSearchBox: true,
                                ),
                                items: const ["Price", "Time", "Star"],
                                dropdownDecoratorProps: DropDownDecoratorProps(
                                  dropdownSearchDecoration: InputDecoration(
                                    hintText: "Sort By :",
                                    hintStyle: const TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 13,
                                      color: Colors.black,
                                    ),
                                    suffixIconColor: yellow2,
                                    contentPadding: const EdgeInsets.only(bottom: 3),
                                  ),
                                  textAlign: TextAlign.center,

                                ),
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              color: Colors.white,
                              height: 30,
                              width: 103,
                              child: InkWell(
                                child: Container(
                                  padding: const EdgeInsets.only(left: 17,right: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Filter",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Poppins',
                                            color: Colors.black
                                        ),
                                      ),
                                      SvgPicture.asset(
                                        "assets/images/Filter.svg"
                                      )
                                    ],
                                  ),
                                )
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 500,
                      width: 360,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 18),
                            child: ticket(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 18),
                            child: ticket(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 18),
                            child: ticket(),
                          ),

                        ],
                      ),
                    )
                  ],
                ),

              ),
            )
          ],
        ),
        bottomNavigationBar: buildNavigationBar(context),
      )

    );
  }

  Padding buildDateItem(String dayInMonth, String dayInWeek) {
    return Padding(
                  padding: const EdgeInsets.only(right: 3,left: 3),
                  child: InkWell(
                    onTap: (){print("click on InkWell");},
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        padding: const EdgeInsets.only(top: 2),
                        height: 70,
                        width: 63,
                        color: green2,

                        child: Column(
                          children: [
                            Text(
                              dayInWeek,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              dayInMonth,
                              style: const TextStyle(
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
                );
  }
}