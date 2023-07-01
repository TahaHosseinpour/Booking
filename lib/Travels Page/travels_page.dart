import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:booking/Database/user.dart';
import 'package:booking/Information/buildBottomNavigationBar.dart';
import 'package:booking/Information/colors.dart';
import 'package:booking/Information/widgets.dart';
import 'package:booking/Travels%20Page/search_box.dart';
import 'package:booking/Travels%20Page/travel_info.dart';
import 'package:booking/Database/ticket.dart';



class TravelsPage extends StatefulWidget{
  User currentUser;

  TravelsPage({super.key , required this.currentUser});

  @override
  State<TravelsPage> createState() => _TravelsPageState();
}

class _TravelsPageState extends State<TravelsPage> {
  List<Ticket>? ticketsList = [];
  DateTime? departureDate = DateTime(1000,10,10);
  DateTime? backDate = DateTime(1000,10,10);
  String? ticketNumber = "0";

  @override
  void initState() {
    super.initState();
    ticketsList = widget.currentUser.ticketsList;
  }

  void changeTicketList(DateTime departure, DateTime back, String number){
    // setState(() {
    //   //change ticketsList by Filters
    // });
  }

  void _handleSearch(DateTime departure, DateTime back, String number) {
    setState(() {
      departureDate = departure;
      backDate = back;
      ticketNumber = number;
      print(" ticketNumber : $ticketNumber \n backDate : ${backDate.toString()}\n departureDate : ${departureDate.toString()}");
      changeTicketList(departure, back, number);
    });
  }

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
        body: Container(
          color: green1,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Container(
            alignment: Alignment.center,
            height: screenHeight * 0.07,
            width: screenWidth * 0.62,
          decoration:  BoxDecoration(
          color: yellow2,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(screenHeight * 0.107),
              bottomRight: Radius.circular(screenHeight * 0.107),
            ),
          ),
            child: SizedBox(
              height: screenHeight * 0.06,
                child: Text("Travels",
                  style: TextStyle(
                      fontSize: screenHeight * 0.035,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'
                  ),
              ),
            )
          ),
          SearchBox(onSearch: _handleSearch),
             Container(
               margin: EdgeInsets.only(top: screenHeight * 0.01),
               height: screenHeight * 0.58,
               width: screenWidth * 0.83,
               child: ListView.builder(
                 scrollDirection: Axis.vertical,
                 itemCount: ticketsList?.length,
                 itemBuilder: (context,indext){
                   final item = ticketsList?[indext];

                   return TravelInfo(ticket: item!);
                 },
               ),
             )

            ],
          ),
        ),
        bottomNavigationBar: BuildBottomNavigationBar(activeIcon: "ticket",currentUser: widget.currentUser,),
      ),
    );
  }
}

