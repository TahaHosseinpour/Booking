import 'dart:js';

import 'package:booking/Start%20Page/start.dart';
import 'package:dropdown_search/dropdown_search.dart';
import'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import 'package:booking/Information/colors.dart';
import 'package:booking/Information/widgets.dart';
import 'package:booking/Search Page/two_button.dart';
import 'package:booking/Search Page/date_picker.dart';
import 'package:booking/Database/user.dart';
import 'package:booking/Database/country.dart';
import 'package:booking/Ticket Page/ticket_page.dart';
import 'package:booking/Information/buildBottomNavigationBar.dart';


class SearchPage extends StatefulWidget{

  User currentUser;
  String vehicle;


  SearchPage({super.key,
  required this.currentUser,
  required this.vehicle
  });
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  List<String> originList = countriesList.map((country) => country.fullName).toList();
  List<String> destinationList = countriesList.map((country) => country.fullName).toList();
  int adultPassengersNumber = 0;
  int childPassengersNumber = 0;
  String origin = "";
  String destination = "";

  DateTime backDate = DateTime(2023,11,10);
  DateTime departureDate = DateTime(2023,11,10);
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;






    String imagePa = "";
    String buttonText = "";




    if(widget.vehicle == "international"){
      imagePa = "assets/images/airplane.png";
      buttonText = "Search Flights";
    }
    if(widget.vehicle == "local"){
      imagePa = "assets/images/airplane.png";
      buttonText = "Search Flights";

    }
    if(widget.vehicle == "train"){
      imagePa = "assets/images/train.png";
      buttonText = "Search Trains";

    }
    if(widget.vehicle == "bus"){
      imagePa = "assets/images/bus.png";
      buttonText = "Search Buses";

    }

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              Back(context , imagePa),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(70),
                    //   ),

                    color: grey3,
                    height: screenHeight * 0.5,
                    width: screenWidth * 0.83,
                    margin: EdgeInsets.only(top: screenHeight * 0.017 ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TwoButton(leftText: "Round Trip",rightText: "One Way" , height: screenHeight * 0.053,),

                        Container(
                          width: screenWidth * 0.69,
                          margin: EdgeInsets.only(left: 30,right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width:45,
                                padding: EdgeInsets.only(top: 20),
                                child: SvgPicture.asset(
                                    'assets/images/From.svg'
                                ),
                              ),
                              Container(
                                width: screenWidth * 0.553,
                                padding: EdgeInsets.only(top: 3.5),
                                child: DropdownSearch<String> (
                                  popupProps: PopupProps.menu(
                                    showSelectedItems: true,
                                    showSearchBox: true,
                                  ),
                                  items: originList,
                                  dropdownDecoratorProps: DropDownDecoratorProps(
                                    dropdownSearchDecoration: InputDecoration(
                                      labelText: "From",
                                      labelStyle: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          color: grey2
                                      ),
                                      contentPadding: EdgeInsets.only(bottom: 5),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  onChanged: (String? selectItem){
                                    setState(() {
                                      origin = selectItem!;
                                      destinationList.remove(selectItem);
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: screenWidth * 0.69,
                          margin: EdgeInsets.only(left: 30,right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width:45,
                                padding: EdgeInsets.only(top: 20),
                                child: SvgPicture.asset(
                                    'assets/images/To.svg'
                                ),
                              ),
                              Container(
                                width: screenWidth * 0.553,
                                padding: EdgeInsets.only(top: 3.5),
                                child: DropdownSearch<String> (
                                  popupProps: const PopupProps.menu(
                                    showSelectedItems: true,
                                    showSearchBox: true,
                                  ),
                                  items: destinationList,
                                  dropdownDecoratorProps: DropDownDecoratorProps(
                                    dropdownSearchDecoration: InputDecoration(
                                      labelText: "To",
                                      labelStyle: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          color: grey2
                                      ),
                                      contentPadding: EdgeInsets.only(bottom: 5),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  onChanged: (String? selectItem){
                                    setState(() {
                                      destination = selectItem!;
                                      originList.remove(selectItem);
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Text("Adult",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          color: grey2,
                                        ),
                                      ),
                                       margin: EdgeInsets.only(left: screenWidth * 0.28),
                                    ),
                                   // SizedBox(width: screenWidth * 0.216,),
                                    Container(
                                      child: Text("child",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          color: grey2,
                                        ),
                                      ),
                                      margin: EdgeInsets.only(right: screenWidth * 0.224 ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.003,),
                              Container(
                                margin: EdgeInsets.only(right: screenWidth * 0.144),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: SvgPicture.asset('assets/images/Passengers.svg',
                                        height: 30,
                                        width: 30,
                                      ),
                                      margin: EdgeInsets.only(left: screenWidth * 0.075),
                                    ),
                                   // SizedBox(width: screenWidth * 0.024,),
                                    Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.white,
                                        ),
                                        height: 30,
                                        width: 90,
                                        child:Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child:InkWell(
                                                onTap: (){
                                                  setState(() {
                                                    if(adultPassengersNumber > 0){
                                                      adultPassengersNumber -= 1;
                                                    }
                                                  });
                                                },
                                                child:  SvgPicture.asset('assets/images/minus.svg',
                                                  height: 20,
                                                  width: 20,
                                                ),
                                              ),
                                              margin: EdgeInsets.only(left: 2.22),
                                            ),
                                            Container(
                                              child: Text(adultPassengersNumber.toString(),
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child:  InkWell(
                                                onTap: (){
                                                  setState(() {
                                                    adultPassengersNumber += 1;
                                                  });
                                                },
                                                child:  SvgPicture.asset('assets/images/plus.svg',
                                                  height: 20,
                                                  width: 20,
                                                ),
                                            ),
                                              margin: EdgeInsets.only(right: 2.22),
                                            ),
                                          ],
                                        )
                                    ),
                                   // SizedBox(width: screenWidth * 0.081,),
                                    Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.white,
                                        ),
                                        height: 30,
                                        width: 90,
                                        child:Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: InkWell(
                                                onTap: (){
                                                  setState(() {
                                                    if(childPassengersNumber > 0){
                                                      childPassengersNumber -= 1;
                                                    }
                                                  });
                                                },
                                                child:  SvgPicture.asset('assets/images/minus.svg',
                                                  height: 20,
                                                  width: 20,
                                                ),
                                              ),
                                              margin: EdgeInsets.only(left: 2.22),
                                            ),
                                            Container(
                                              child: Text(childPassengersNumber.toString(),
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: InkWell(
                                                onTap: (){
                                                  setState(() {
                                                    childPassengersNumber += 1;
                                                  });
                                                },
                                                child:  SvgPicture.asset('assets/images/plus.svg',
                                                  height: 20,
                                                  width: 20,
                                                ),
                                              ),
                                              margin: EdgeInsets.only(right: 2.22),
                                            ),
                                          ],
                                        )
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),


                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(left: screenWidth * 0.16),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: SvgPicture.asset('assets/images/Departure.svg',
                                                width: 16,
                                                height: 17,
                                              ),
                                            ),
                                            SizedBox(width: 5,),
                                            Container(
                                              child: Text("Departure",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins',
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(right: screenWidth * 0.27),
                                        child: Row(
                                          children: [
                                            Container(
                                              child: SvgPicture.asset('assets/images/Departure.svg',
                                                width: 16,
                                                height: 17,
                                              ),
                                            ),
                                            SizedBox(width: 5,),
                                            Container(
                                              child: Text("Back",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins',
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height:screenHeight * 0.009 ,),
                              Container(
                                width: 239,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: MyDatePickerTextField(),
                                      margin: EdgeInsets.only(left: screenWidth * 0.02),
                                    ),
                                    Container(
                                      child: MyDatePickerTextField(),
                                      margin: EdgeInsets.only(left: screenWidth * 0.01),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          child: buttonContainer(buttonText, screenHeight, screenWidth),
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => TicketPage(
                                  currnetUser: widget.currentUser,
                                vehicle: widget.vehicle,
                                date: departureDate,
                                origin: origin,
                                destination: destination,
                                passengersNumber: childPassengersNumber + adultPassengersNumber,
                              )),
                            );

                          },
                        ),



                      ],
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
        bottomNavigationBar: BuildBottomNavigationBar(activeIcon: "home",currentUser: widget.currentUser,),
      ),
    );
  }
}
Widget Back(BuildContext context , String imagePath){
  return Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[
  Image(
    height: MediaQuery.of(context).size.height * 0.375,
    width:  MediaQuery.of(context).size.width,
  image: new AssetImage(imagePath),
  ),
        Padding(
          padding: EdgeInsets.only(top: 30, left: 40),
          child:InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: SvgPicture.asset('assets/images/arrow_back.svg',
              width: 26,
              height: 38,
            ),
          )
        ),
  ],
  );
}


