import 'package:booking/Information/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:booking/Database/user.dart';
import 'package:booking/Database/travel.dart';

Container TravelInformation(BuildContext context , User currentUser , Travel futueTravel ,int passengersNumber){
  final screenWidth = MediaQuery
      .of(context)
      .size
      .width;
  final screenHeight = MediaQuery
      .of(context)
      .size
      .height;
  List<String> monthNames = [
    'January', 'February', 'March', 'April', 'May', 'June',
    'July', 'August', 'September', 'October', 'November', 'December'
  ];
  String monthName = monthNames[futueTravel.departureTime.month - 1];

  String travelCla = futueTravel.travelClass.replaceAll(' Class', '');
  return Container(
    width: screenWidth * 0.83,
    height: screenHeight * 0.3,
    padding: EdgeInsets.only( top: screenHeight * 0.006, bottom: screenHeight * 0.02, right: screenWidth * 0.079, left: screenWidth * 0.079),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(35),
      color: Colors.white,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          child: SvgPicture.asset('assets/images/ticket_icon.svg',
          width:screenWidth * 0.11,
          height: screenHeight * 0.05,
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // width:screenWidth * 0.12,
                height: screenHeight * 0.028,
                child: FittedBox(
                  child: Text("Origin",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Container(
                // width:screenWidth * 0.158,
                height: screenHeight * 0.028,
                child: FittedBox(
                  child: Text(futueTravel.origin,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color: grey2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // width:screenWidth * 0.24,
                height: screenHeight * 0.028,
                child: FittedBox(
                  child: Text("Destination",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Container(
                // width:screenWidth * 0.16,
                height: screenHeight * 0.028,
                child: FittedBox(
                  child: Text(futueTravel.destination,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color: grey2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // width:screenWidth * 0.25,
                height: screenHeight * 0.028,
                child: FittedBox(
                  child: Text("Date & Time",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Container(
                // width:screenWidth * 0.27,
                height: screenHeight * 0.028,
                child: FittedBox(
                  child: Text("${futueTravel.departureTime.day} ${monthName} - ${futueTravel.departureTime.hour}:${futueTravel.departureTime.minute}",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color: grey2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // width:screenWidth * 0.2,
                height: screenHeight * 0.028,
                child: FittedBox(
                  child: Text("Company",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Container(
                // width:screenWidth * 0.24,
                height: screenHeight * 0.028,
                child: FittedBox(
                  child: Text(futueTravel.companyName,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color: grey2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // width:screenWidth * 0.27,
                height: screenHeight * 0.028,
                child: FittedBox(
                  child: Text("Flight Number",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Container(
                // width:screenWidth * 0.12,
                height: screenHeight * 0.028,
                child: FittedBox(
                  child: Text(futueTravel.id.toString(),
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color: grey2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // width:screenWidth * 0.11,
                height: screenHeight * 0.028,
                child: FittedBox(
                  child: Text("Class",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Container(
                // width:screenWidth * 0.18,
                height: screenHeight * 0.028,
                child: FittedBox(
                  child: Text(travelCla,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color: grey2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}