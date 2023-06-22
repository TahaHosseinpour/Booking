import 'package:booking/Information/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:booking/Database/user.dart';
import 'package:booking/Database/travel.dart';
import 'package:booking/Database/company.dart';


Container TravelInformation(BuildContext context , User currentUser , Travel futureTravel ,int passengersNumber){
  String? companyLogoPath;
  for(Company company in companiesList){
    if(company.name == futureTravel.companyName){
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
  List<String> monthNames = [
    'January', 'February', 'March', 'April', 'May', 'June',
    'July', 'August', 'September', 'October', 'November', 'December'
  ];
  String monthName = monthNames[futureTravel.departureTime.month - 1];

  String travelCla = futureTravel.travelClass.replaceAll(' Class', '');
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
          child: Image.asset(companyLogoPath!,
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
                  child: Text(futureTravel.origin,
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
                  child: Text(futureTravel.destination,
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
                  child: Text("${futureTravel.departureTime.day} ${monthName} - ${futureTravel.departureTime.hour}:${futureTravel.departureTime.minute}",
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
                  child: Text(futureTravel.companyName,
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
                  child: Text(futureTravel.id.toString(),
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