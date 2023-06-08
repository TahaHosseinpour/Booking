import 'package:booking/Confirm%20Page/seat_number.dart';
import 'package:booking/Confirm%20Page/travel_information.dart';
import 'package:booking/Information/widgets.dart';
import 'package:booking/Passengers%20Page/price.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../Information/colors.dart';
import 'package:booking/Database/travel.dart';
import 'package:booking/Database/user.dart';

class ConfirmPage extends StatefulWidget{

  Travel futureTravel;
  User currentUser;
  int passengersNumber;


  ConfirmPage({
    required this.futureTravel,
    required this.currentUser,
    required this.passengersNumber,
  });

  @override
  State<ConfirmPage> createState() => _ConfirmPage();
}

class _ConfirmPage extends State<ConfirmPage> {

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
              TravelInformation(context , widget.currentUser,widget.futureTravel, widget.passengersNumber),
              Container(
                height: screenHeight * 0.22,
                width: screenWidth * 0.83,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 0),
                      child: SeatNumber(context, "Taha Hosseinpour", 15),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 0),
                      child:  SeatNumber(context, "Hossein Mostafavi", 16),
                    ),
                  ],
                ),
              ),
              Price(context, "Payment",widget.futureTravel,widget.currentUser,widget.passengersNumber),
            ],
          ),
        ),
      ),
    );
  }
}