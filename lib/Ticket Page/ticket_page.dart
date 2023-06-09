import 'package:booking/Database/company.dart';
import 'package:booking/Information/buildBottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:dropdown_search/dropdown_search.dart';

import 'package:booking/Information/colors.dart';
import 'package:booking/Ticket Page/ticket.dart';
import 'package:booking/Information/widgets.dart';
import 'package:booking/Database/user.dart';
import 'package:booking/Database/country.dart';
import 'package:booking/Filter Page/filter.dart';
import 'package:booking/Database/travel.dart';

class TicketPage extends StatefulWidget {

  TicketPage({
    required this.currentUser,
    required this.vehicle,
    required this.date,
    required this.origin,
    required this.destination,
    required this.passengersNumber
  });


  User currentUser;
  String vehicle;
  DateTime date;
  String origin;
  String destination;
  int passengersNumber;

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  // This widget is the root of your application.
  String des = "";
  String ori = "";
  String iconPath = "";


  List<Travel> searchedTravels = [];
  @override
  Widget build(BuildContext context) {
    setState(() {
      for(Country country in countriesList){
        if(widget.origin == country.fullName){
          ori = country.shortName;
        }
        if(widget.destination == country.fullName){
          des = country.shortName;
        }
      }
      if(widget.vehicle == "intenational" || widget.vehicle == "local"){
        iconPath = "assets/images/airplane_ticket.svg";
      }
      if(widget.vehicle == "train"){
        iconPath = "assets/images/train_ticket.svg" ;
      }
      if(widget.vehicle == "bus"){
        iconPath ="assets/images/bus.svg" ;
      }

    });

    setState(() {
      for(Travel travel in travelsList){
        for(Company company in companiesList){
          if(travel.companyName == company){
            if(company.vehicle == widget.vehicle && travel.origin == widget.origin && travel.destination == widget.destination && travel.departureTime.day == widget.date.day){
              searchedTravels.add(travel);
              print(travel);
            }
          }
        }
      }
      print(searchedTravels);
    });

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

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
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        "assets/images/arrow_back.svg",
                        width: screenWidth * 0.06,
                        height: screenHeight * 0.04,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        "assets/images/search_yellow.svg",
                        width: screenWidth * 0.11,
                        height: screenHeight * 0.053,
                      ),
                    )
                  ],
                ),
              ),
            Container(
              width: screenWidth * 0.779,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                       Text(
                        ori,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: screenHeight * 0.027
                        ),
                      ),
                      Container(
                        margin:  EdgeInsets.only(left: screenWidth * 0.046),
                        child: Text(
                          widget.origin,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize:  screenHeight * 0.016
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
                        margin: EdgeInsets.only(left: screenWidth * 0.011,right: screenWidth * 0.011),
                        child: SvgPicture.asset(
                            iconPath,
                          height: screenWidth * 0.081,
                          width: screenWidth * 0.081,
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
                      Text(
                        des,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize:  screenHeight * 0.027
                        ),
                      ),
                      Container(
                        margin:  EdgeInsets.only(right: screenWidth * 0.046),
                        child: Text(
                          widget.destination,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize:  screenHeight * 0.016
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height:  screenHeight * 0.08,
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
                      padding:  EdgeInsets.only(left: screenWidth * 0.081,right: screenWidth * 0.081,top: screenHeight * 0.018),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              height: screenHeight * 0.032,
                              width: screenWidth * 0.3,
                              color: Colors.white,
                              child: DropdownSearch<String> (
                                popupProps: const PopupProps.menu(
                                  showSelectedItems: true,
                                  showSearchBox: true,
                                ),
                                items: const ["Price", "Time", "Distance"],
                                dropdownDecoratorProps: DropDownDecoratorProps(
                                  dropdownSearchDecoration: InputDecoration(
                                    hintText: "Sort By :",
                                    hintStyle:  TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: screenHeight * 0.0139,
                                      color: Colors.black,
                                    ),
                                    suffixIconColor: yellow2,
                                    contentPadding:  EdgeInsets.only(bottom: screenHeight * 0.005),
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
                              height: screenHeight * 0.032,
                              width: screenWidth * 0.239,
                              child: InkWell(
                                child: Container(
                                  padding:  EdgeInsets.only(left: screenWidth * 0.039,right: screenWidth * 0.01),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                       Text(
                                        "Filter",
                                        style: TextStyle(
                                            fontSize: screenHeight * 0.017,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Poppins',
                                            color: Colors.black
                                        ),
                                      ),
                                      SvgPicture.asset(
                                        "assets/images/Filter.svg",
                                        width: screenWidth * 0.053,
                                        height: screenHeight * 0.026,
                                      )
                                    ],
                                  ),
                                ),
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Filter(currentUser: widget.currentUser,vehicle: widget.vehicle,date: widget.date,origin: widget.origin,destination: widget.destination,passengersNumber: widget.passengersNumber,),
                                      ));
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: screenHeight * 0.53,
                      width: screenWidth * 0.83,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: travelsList.length,
                        itemBuilder: (context, index) {
                          final item = travelsList[index];
                          return ticket(
                            context,
                            widget.currentUser,
                            widget.passengersNumber,
                            screenWidth,
                            screenHeight,
                            item.departureTime,
                            item.arrivalTime,
                            item.travelTime,
                            item.origin,
                            item.destination,
                            item.cost,
                            item.travelClass,
                            item.companyName,
                            item.id
                          );
                        },
                        // children: [
                        //   Padding(
                        //     padding: const EdgeInsets.only(bottom: 18),
                        //     child: ticket(),
                        //   ),
                        //   Padding(
                        //     padding: const EdgeInsets.only(bottom: 18),
                        //     child: ticket(),
                        //   ),
                        //   Padding(
                        //     padding: const EdgeInsets.only(bottom: 18),
                        //     child: ticket(),
                        //   ),
                        //
                        // ],
                      ),
                    )
                  ],
                ),

              ),
            )
          ],
        ),
        bottomNavigationBar: BuildBottomNavigationBar(activeIcon: "home", currentUser:widget.currentUser ),
      )

    );
  }

  Padding buildDateItem(String dayInMonth, String dayInWeek) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
                  padding:  EdgeInsets.only(right:screenWidth * 0.006 ,left: screenWidth * 0.006),
                  child: InkWell(
                    onTap: (){print("click on InkWell");},
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        padding:  EdgeInsets.only(top: screenHeight * 0.002),
                        height: screenHeight * 0.075,
                        width: screenWidth * 0.146,
                        color: green2,

                        child: Column(
                          children: [
                            Text(
                              dayInWeek,
                              style:  TextStyle(
                                color: Colors.white,
                                fontSize: screenHeight * 0.025,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              dayInMonth,
                              style:  TextStyle(
                                color: Colors.white,
                                fontSize: screenHeight * 0.025,
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