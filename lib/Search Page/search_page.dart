
import 'package:booking/Start%20Page/start.dart';
import 'package:dropdown_search/dropdown_search.dart';
import'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:dropdown_button2/dropdown_button2.dart';

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

  late MyDatePickerTextField backDateButton ;
  late MyDatePickerTextField departureDateButton;

  @override
  void initState() {
    super.initState();
    backDateButton = MyDatePickerTextField();
    departureDateButton = MyDatePickerTextField();
  }


  List<String> originList = countriesList.map((country) => country.fullName).toList();
  List<String> destinationList = countriesList.map((country) => country.fullName).toList();
  int adultPassengersNumber = 0;
  int childPassengersNumber = 0;
  String origin = "";
  String destination = "";

  DateTime? backDate = DateTime(2023,11,10);
  DateTime? departureDate = DateTime(2023,11,10);
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
                  borderRadius: BorderRadius.circular(screenHeight * 0.053),
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
                          margin: EdgeInsets.only(left:screenWidth * 0.069,right: screenWidth * 0.069),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width:screenWidth * 0.1,
                                padding: EdgeInsets.only(top: screenHeight * 0.02),
                                child: SvgPicture.asset(
                                    'assets/images/From.svg'
                                ),
                              ),
                              Container(
                                width: screenWidth * 0.553,
                                padding: EdgeInsets.only(top: screenHeight * 0.003),
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
                                          fontSize: screenHeight * 0.0128,
                                          color: grey2
                                      ),
                                      contentPadding: EdgeInsets.only(bottom: screenHeight * 0.005),
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
                          margin: EdgeInsets.only(left:screenWidth * 0.069,right: screenWidth * 0.069),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width:screenWidth * 0.1,
                                padding: EdgeInsets.only(top: screenHeight * 0.02),
                                child: SvgPicture.asset(
                                    'assets/images/To.svg'
                                ),
                              ),
                              Container(
                                width: screenWidth * 0.553,
                                padding: EdgeInsets.only(top: screenHeight * 0.003),
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
                                          fontSize: screenHeight * 0.0128,
                                          color: grey2
                                      ),
                                      contentPadding: EdgeInsets.only(bottom: screenHeight * 0.005),
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
                                          fontSize: screenHeight * 0.012,
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
                                          fontSize: screenHeight * 0.012,
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
                                        height: screenHeight * 0.032,
                                        width: screenWidth * 0.069,
                                      ),
                                      margin: EdgeInsets.only(left: screenWidth * 0.075),
                                    ),
                                   // SizedBox(width: screenWidth * 0.024,),
                                    Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(screenHeight * 0.011),
                                          color: Colors.white,
                                        ),
                                        height: screenHeight * 0.032,
                                        width: screenWidth * 0.2,
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
                                                  height: screenHeight * 0.021,
                                                  width: screenWidth * 0.046,
                                                ),
                                              ),
                                              margin: EdgeInsets.only(left: screenWidth * 0.005),
                                            ),
                                            Container(
                                              child: Text(adultPassengersNumber.toString(),
                                                style: TextStyle(
                                                  fontSize: screenHeight * 0.017,
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
                                                  height: screenHeight * 0.021,
                                                  width: screenWidth * 0.046,
                                                ),
                                            ),
                                              margin: EdgeInsets.only(right: screenWidth * 0.005),
                                            ),
                                          ],
                                        )
                                    ),
                                   // SizedBox(width: screenWidth * 0.081,),
                                    Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(screenHeight * 0.011),
                                          color: Colors.white,
                                        ),
                                        height: screenHeight * 0.032,
                                        width: screenWidth * 0.2,
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
                                                  height: screenHeight * 0.021,
                                                  width: screenWidth * 0.046,
                                                ),
                                              ),
                                              margin: EdgeInsets.only(left: screenWidth * 0.005),
                                            ),
                                            Container(
                                              child: Text(childPassengersNumber.toString(),
                                                style: TextStyle(
                                                  fontSize:screenHeight * 0.017 ,
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
                                                  height: screenHeight * 0.021,
                                                  width: screenWidth * 0.046,
                                                ),
                                              ),
                                              margin: EdgeInsets.only(right: screenWidth * 0.005),
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
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin :EdgeInsets.only(left: screenWidth * 0.08),
                                        child: SvgPicture.asset('assets/images/Departure.svg',
                                          width: screenWidth * 0.037,
                                          height: screenHeight * 0.018,
                                        ),
                                      ),
                                      SizedBox(width: screenWidth * 0.01,),
                                      Container(
                                          height: screenHeight * 0.017,
                                          child:FittedBox(
                                            child:  Text("Departure",
                                              style: TextStyle(
                                                fontSize: screenHeight * 0.012,
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          )
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: screenHeight * 0.0096,),
                                  Container(
                                    child: departureDateButton,
                                    margin: EdgeInsets.only(left: screenWidth * 0.15),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        child: SvgPicture.asset('assets/images/Departure.svg',
                                          width: screenWidth * 0.037,
                                          height: screenHeight * 0.018,
                                        ),
                                      ),
                                      SizedBox(width: screenWidth * 0.01,),
                                      Container(
                                          margin: EdgeInsets.only(right: screenWidth * 0.25),
                                          height: screenHeight * 0.017,
                                          child: FittedBox(
                                            child: Text("Back",
                                              style: TextStyle(
                                                fontSize: screenHeight * 0.012,
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          )
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: screenHeight * 0.0096,),
                                  Container(
                                    child: backDateButton,
                                    margin: EdgeInsets.only(right: screenWidth * 0.118),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          child: buttonContainer(buttonText, screenHeight, screenWidth),
                          onTap: (){
                            setState(() {
                              backDate = backDateButton.pickDate;
                              departureDate = departureDateButton.pickDate;
                            });
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => TicketPage(
                                  currentUser: widget.currentUser,
                                vehicle: widget.vehicle,
                                date: departureDate!,
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
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;
  return Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[
  Image(
    fit: BoxFit.fill,
    height: MediaQuery.of(context).size.height * 0.375,
    width:  MediaQuery.of(context).size.width,
  image: new AssetImage(imagePath,
  ),
  ),
        Padding(
          padding: EdgeInsets.only(top: screenHeight * 0.032, left: screenWidth * 0.093),
          child:InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: SvgPicture.asset('assets/images/arrow_back.svg',
              width: screenWidth * 0.06,
              height: screenHeight * 0.04,
            ),
          )
        ),
  ],
  );
}

