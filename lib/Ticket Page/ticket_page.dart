import 'package:booking/Information/buildBottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'dart:io';
import 'dart:convert';
import 'package:booking/Database/ticket.dart';
import 'package:booking/ServerMethods/parseTravelFromJson.dart';

import 'package:booking/global.dart';

import 'package:booking/Information/colors.dart';
import 'package:booking/Ticket Page/ticketItem.dart';
import 'package:booking/Database/user.dart';
import 'package:booking/Database/country.dart';
import 'package:booking/Filter Page/filter.dart';
import 'package:booking/Database/travel.dart';
import 'package:booking/Ticket Page/dateItem.dart';

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
  static List<Travel> travelsList = [];
  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  // This widget is the root of your application.
  String des = "";
  String ori = "";
  String iconPath = "";
  late DateTime currentDate = widget.date;



  @override
  Widget build(BuildContext context) {
    ItemScrollController _scrollController = ItemScrollController();

    setState(() {
      print(currentDate);
      widget.date = currentDate;
      getTicketList(widget.origin,widget.destination,widget.date,widget.vehicle,widget.passengersNumber,"empty");

      WidgetsBinding.instance.addPostFrameCallback((_) {
        int middleIndex = 2;
        _scrollController.scrollTo(
          index: middleIndex,
          duration: Duration(milliseconds: 500),
        );
      });
    });
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


    @override
    void initState() {
      super.initState();
      getTicketList(widget.origin,widget.destination,widget.date,widget.vehicle,widget.passengersNumber,"empty");

      WidgetsBinding.instance.addPostFrameCallback((_) {
        int middleIndex = 1;
        _scrollController.scrollTo(
          index: middleIndex,
          duration: Duration(milliseconds: 500),
        );
      });
    }

      List <DateTime> dateList = [];
    for(int i = 5 ; i >= -5 ; i--){
      dateList.add(currentDate.subtract(Duration(days: i)));
    }
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
              width: screenWidth * 0.799,
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
                      DottedLine(
                        direction: Axis.horizontal,
                        lineLength: screenWidth * 0.138,
                          lineThickness: screenWidth * 0.007,
                          dashLength: screenWidth * 0.008
                      ),
                      Container(
                        margin: EdgeInsets.only(left: screenWidth * 0.011,right: screenWidth * 0.011),
                        child: SvgPicture.asset(
                            iconPath,
                          height: screenWidth * 0.081,
                          width: screenWidth * 0.081,
                        ),
                      ),
                      DottedLine(
                          direction: Axis.horizontal,
                          lineLength: screenWidth * 0.138,
                          lineThickness: screenWidth * 0.007,
                          dashLength: screenWidth * 0.008
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
              child: ScrollablePositionedList.builder(
                itemScrollController:  _scrollController,
                scrollDirection: Axis.horizontal,
                itemCount: dateList.length,
                itemBuilder: (context,index) {
                  final item = dateList[index];
                  bool flag = (currentDate == item);
                  DateTime currentDate1 = DateTime(2000);

                  return StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState2) {
                      print(currentDate);

                      return DateItem(
                          date: item,
                          isActive :(flag) ? true : false,
                          onDateChanged: (copyFlag) {
                            setState(() {
                              currentDate = copyFlag; // تغییر مقدار flag با مقدار جدید
                            });
                          }
                      );
                    }
                  );
                },
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(screenHeight * 0.053),
                  topLeft: Radius.circular(screenHeight * 0.053)
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
                            borderRadius: BorderRadius.circular(screenHeight * 0.013),
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
                                onChanged: (String? selectItem){
                                  getTicketList(widget.origin,widget.destination,widget.date,widget.vehicle,widget.passengersNumber,selectItem!);
                                },
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(screenHeight * 0.013),
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
                        itemCount: TicketPage.travelsList.length,
                        itemBuilder: (context, index) {
                          final item = TicketPage.travelsList[index];
                          return ticketItem(
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




  void getTicketList(String origin,String destination,DateTime date,String vehicle,int passengersNumber,String sort) async{
    /* by using gotten information form user , request to server and
  and get fill travelsList in Database directory inside travel.dart*/
    List<Travel> result = TicketPage.travelsList;

    Map<String, dynamic> travelInfo = {
      'origin' : origin,
      'destination': destination,
      'date': date.toString(),
      'vehicle' : vehicle,
      'passengersNumber' : passengersNumber,
    };

    Map<String, dynamic> requestDataMap = {
      'travel' : json.encode(travelInfo),
      'sort': sort,
      'filter': "empty",
    };
    Map<String, dynamic> jsonRequest = {
      'requestType': "getTicketList",
      'requestData': json.encode(requestDataMap),
    };

    String jsonString = json.encode(jsonRequest);
    List<int> bytes = utf8.encode(jsonString);

    await Socket.connect(Global.ip,Global.port).then((serverSocket) async{
      serverSocket.encoding = utf8;
      serverSocket.add(bytes);
      await serverSocket.flush();

      String receivedData = "";
      await serverSocket.listen(
            (List<int> data) {
          receivedData += utf8.decode(data);
        },
        onDone: () {
          Map<String, dynamic> jsonData = json.decode(receivedData);
          setState(() {
            TicketPage.travelsList = parseTravelFromJson(receivedData);
          });

        },
        onError: (error) {
          TicketPage.travelsList = [];
        },
      );

      serverSocket.close();
    });

  }
}
