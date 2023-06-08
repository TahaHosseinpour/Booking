import 'dart:math';
import 'package:booking/Information/widgets.dart';
import 'package:booking/Passengers%20Page/passenger_information.dart';
import 'package:booking/Passengers%20Page/price.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:booking/Information/colors.dart';
import 'package:booking/Database/country.dart';
import 'package:booking/Database/travel.dart';
import 'package:booking/Database/user.dart';

class PassengersPage extends StatefulWidget{

  Travel futureTravel;
  User currentUser;
  int passengersNumber;


  PassengersPage({
    required this.futureTravel,
    required this.currentUser,
    required this.passengersNumber,
  });

  @override
  State<PassengersPage> createState() => _PassengersPageState();
}

class _PassengersPageState extends State<PassengersPage>{
  List<String> textFieldValues = ['Value 1',];

  String des = "";
  String ori = "";

  @override
  Widget build(BuildContext context) {

    for(Country country in countriesList){
      if(widget.futureTravel.origin == country.fullName){
        ori = country.shortName;
      }
      if(widget.futureTravel.destination == country.fullName){
        des = country.shortName;
      }
    }

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    List<String> weekDays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    String dayOfWeek = weekDays[widget.futureTravel.departureTime.weekday - 1];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
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
                    margin: EdgeInsets.only(right: screenWidth * 0.39, top: screenHeight * 0.012),
                   width: screenWidth * 0.38,
                   height: screenHeight * 0.048,
                   child: FittedBox(
                     child: Text("Passengers",
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
                    child: SvgPicture.asset('assets/images/like.svg',
                      height: screenHeight * 0.03,
                      width: screenWidth * 0.06,
                    ),
                  ),
                  Container(
                    child: SvgPicture.asset('assets/images/arrow_right_black.svg',
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
            Container(
                width: screenWidth * 0.86,
                height: screenHeight * 0.13,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: green3,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: screenWidth * 0.4,
                    height: screenHeight * 0.132,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: yellow2,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: screenHeight * 0.01),
                          child: SvgPicture.asset('assets/images/ticket_icon.svg',
                          width: screenWidth * 0.15,
                            height: screenHeight * 0.07,
                          ),
                        ),
                        Container(
                            width: screenWidth * 0.3,
                            height: screenHeight * 0.034,
                          margin: EdgeInsets.only(bottom: screenHeight * 0.013),
                          child:FittedBox(
                            child:  Text(widget.futureTravel.companyName,
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: screenWidth * 0.05),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: screenWidth * 0.15,
                                height: screenHeight * 0.048,
                                child:FittedBox(
                                  child:  Text(ori,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 34,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                               margin: EdgeInsets.only(top: screenHeight * 0.02),
                              ),
                              Container(
                                child: SvgPicture.asset('assets/images/arrow_right.svg',
                                width: screenWidth * 0.06,
                                height: screenHeight * 0.02,
                                ),
                                margin: EdgeInsets.only(top: screenHeight * 0.02),
                              ),
                              Container(
                                width: screenWidth * 0.137,
                                height: screenHeight * 0.048,
                                child: FittedBox(
                                  child: Text(des,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 34,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                margin: EdgeInsets.only(top: screenHeight * 0.02),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: screenWidth * 0.38,
                          height: screenHeight * 0.048,
                          child:FittedBox(
                            child:  Text("${dayOfWeek} , ${widget.futureTravel.departureTime.month}/${widget.futureTravel.departureTime.day}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 34,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          margin: EdgeInsets.only(bottom: screenHeight * 0.01),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: SvgPicture.asset('assets/images/people_green.svg',
              width: screenWidth * 0.18,
                height: screenHeight * 0.04,
              ),
            ),
      Container(
        height: screenHeight * 0.37,
        width: screenWidth * 0.83,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: widget.passengersNumber,
          itemBuilder: (BuildContext context, int index) {
            return PassengerInformation(
              onTextChanged: (String value) {
                setState(() {
                  textFieldValues[index] = value;
                  setState(() {
                    print(textFieldValues);
                  });
                });
              },
            );

          },

        ),
      ),
          ],
        ),
        bottomNavigationBar: Price(context, "Continue",widget.futureTravel,widget.currentUser,widget.passengersNumber),
      ),
    );
    throw UnimplementedError();

  }
}

