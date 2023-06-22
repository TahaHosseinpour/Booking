import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math';

import '../Information/colors.dart';
import 'package:booking/Database/travel.dart';
import 'package:booking/Database/user.dart';
import 'package:booking/Confirm%20Page/seat_number.dart';
import 'package:booking/Confirm%20Page/travel_information.dart';
import 'package:booking/Information/widgets.dart';
import 'package:booking/Passengers%20Page/price.dart';
import 'package:booking/Database/passenger.dart';
import 'package:booking/Information/buildBottomNavigationBar.dart';
import 'package:booking/Database/company.dart';

class ConfirmPage extends StatefulWidget{

  Travel futureTravel;
  User currentUser;
  List<Passenger> passengerList;


  ConfirmPage({
    required this.futureTravel,
    required this.currentUser,
    required this.passengerList
  });

  @override
  State<ConfirmPage> createState() => _ConfirmPage();
}

class _ConfirmPage extends State<ConfirmPage> {


  Random random = Random();
  late int randomNumber = random.nextInt(50);

  @override
  Widget build(BuildContext context) {

    String? companyLogoPath;
    for(Company company in companiesList){
      if(company.name == widget.futureTravel.companyName){
        companyLogoPath = company.logoPath;
      }
    }

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: screenWidth * 0.06,
                      height: screenHeight * 0.04,
                      margin: EdgeInsets.only(left: screenWidth * 0.08, top: screenHeight * 0.018),
                      child:  InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset(
                          "assets/images/arrow_back.svg",
                          width: screenWidth * 0.06,
                          height: screenHeight * 0.04,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: screenWidth * 0.48, top: screenHeight * 0.012),
                      width: screenWidth * 0.38,
                      height: screenHeight * 0.048,
                      child: FittedBox(
                        child: Text("Confirm",
                          style: TextStyle(
                            fontSize: 34,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: screenHeight * 0.05,
                width: screenWidth,
                color: grey3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: SvgPicture.asset('assets/images/local.svg',
                        height: screenHeight * 0.03,
                        width: screenWidth * 0.06,
                      ),
                      margin: EdgeInsets.only(left: screenWidth * 0.07),
                    ),
                    Container(
                      child: SvgPicture.asset('assets/images/arrow_back_right.svg',
                        height: screenHeight * 0.02,
                        width: screenWidth * 0.02,
                      ),
                    ),
                    Container(
                      child: SvgPicture.asset('assets/images/people.svg',
                        height: screenHeight * 0.03,
                        width: screenWidth * 0.13,
                      ),
                    ),
                    Container(
                      child: SvgPicture.asset('assets/images/arrow_back_right.svg',
                        height: screenHeight * 0.02,
                        width: screenWidth * 0.02,
                      ),
                    ),
                    Container(
                      child: SvgPicture.asset('assets/images/like_yellow.svg',
                        height: screenHeight * 0.03,
                        width: screenWidth * 0.06,
                      ),
                    ),
                    Container(
                      child: SvgPicture.asset('assets/images/arrow_back_right.svg',
                        height: screenHeight * 0.02,
                        width: screenWidth * 0.02,
                      ),
                    ),
                    Container(
                      child: SvgPicture.asset('assets/images/credit_card.svg',
                        height: screenHeight * 0.03,
                        width: screenWidth * 0.09,
                      ),
                    ),
                    Container(
                      child: SvgPicture.asset('assets/images/arrow_right_black.svg',
                        height: screenHeight * 0.02,
                        width: screenWidth * 0.02,
                      ),
                    ),
                    Container(
                      child: SvgPicture.asset('assets/images/confirmation_number.svg',
                        height: screenHeight * 0.03,
                        width: screenWidth * 0.09,
                      ),
                      margin: EdgeInsets.only(right: screenWidth * 0.11),
                    ),
                  ],
                ),
              ),
              TravelInformation(context , widget.currentUser,widget.futureTravel, widget.passengerList.length),
              Container(
                height: screenHeight * 0.22,
                width: screenWidth * 0.83,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: widget.passengerList.length,
                  itemBuilder: (context , index){
                    final item = widget.passengerList[index];
                    String firstname = item.firstname;
                    String lastname = item.lastname;
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 0),
                      child: SeatNumber(context, "$firstname $lastname", randomNumber + index),
                    );
                  },
                ),
              ),
              // Price(context, "Payment",widget.futureTravel,widget.currentUser,widget.passengerList.length),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height:screenHeight * 0.29,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35)),
            color: yellow2,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: screenWidth * 0.22,
                      height: screenHeight * 0.048,
                      child: FittedBox(
                        child: Text('Price :',
                          style: TextStyle(
                            fontSize: 34,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            color:grey2,
                          ),
                        ),
                      ),
                      margin: EdgeInsets.only(left: screenWidth * 0.17),
                    ),
                    Container(
                      width: screenWidth * 0.26,
                      height: screenHeight * 0.07,
                      child: FittedBox(
                        child: Text('${widget.futureTravel.cost}\$',
                          style: TextStyle(
                            fontSize: 50,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      margin: EdgeInsets.only(right: screenWidth * 0.17),
                    ),
                  ],
                ),
              ),
              InkWell(
                child: buttonContainer("Payment", screenHeight, screenWidth),
                onTap: (){

                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => ConfirmPage(currentUser: widget.currentUser,futureTravel: widget.futureTravel,passengerList: passengerList,)),
                  // );
                },
              ),
              BuildBottomNavigationBar(activeIcon: "home",currentUser: widget.currentUser,)
            ],
          ),
        ),
      ),
    );
  }
}