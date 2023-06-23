import 'package:booking/Database/travel.dart';
import 'package:booking/Passengers%20Page/passengers_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:booking/Information/colors.dart';

import 'package:booking/Database/company.dart';
import 'package:booking/Database/country.dart';
import 'package:booking/Database/user.dart';

Padding ticket(BuildContext context,User currentUser ,int passengersNumber,double screenWidth ,double screenHeight,DateTime departureTime , DateTime arrivalTime, String travelTime, String origin, String destination,int cost , String travelClass , String companyName , int id){
  String companyLogoPath = "";
  for(Company company in companiesList){
    if(company.name == companyName){
      companyLogoPath = company.logoPath;
    }
  }

  String ori = "";
  String des = "";
  for(Country country in countriesList){
    if(country.fullName == origin){
      ori = country.shortName;
    }
    if(country.fullName == destination){
      des = country.shortName;
    }
  }
  return Padding(
    padding:  EdgeInsets.only(bottom: screenHeight * 0.019),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(35),
      ),
      width: screenWidth * 0.83,
      height: screenHeight * 0.23,
      child: Column(
        children: [
          Container(
            height: screenHeight * 0.032 ,
            margin: EdgeInsets.only(top:  screenHeight * 0.012),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(companyName,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize:  screenHeight * 0.019,
                        color: Colors.black,
                        decoration: TextDecoration.none

                    ),
                  ),
                ),
                SizedBox(width: screenWidth * 0.013,),
                Container(
                  child: Image.asset(companyLogoPath,
                    height:  screenHeight * 0.032,
                    width: screenWidth * 0.069,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height:  screenHeight * 0.025,),
          Container(
            height:  screenHeight * 0.065,
            width: screenWidth * 0.77,
            padding: EdgeInsets.only(bottom:  screenHeight * 0.01),
            child: Column(
              children: [
                Container(
                  height:  screenHeight * 0.02,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // height: 20,
                        margin: EdgeInsets.only(left:  screenHeight * 0.032),
                        alignment: Alignment.centerLeft,
                        child: Text(ori,
                          style: TextStyle(
                              fontSize:  screenHeight * 0.016,
                              fontFamily: 'Poppins',
                              color: grey2,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none
                          ),
                        ),
                      ),
                      Container(
                        // height: 20,
                        margin: EdgeInsets.only(right: screenWidth * 0.032),
                        alignment: Alignment.centerRight,
                        child: Text(des,
                          style: TextStyle(
                              fontSize:  screenHeight * 0.016,
                              fontFamily: 'Poppins',
                              color:grey2,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none

                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height:  screenHeight * 0.033,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // height: 21,
                        margin:  EdgeInsets.only(left: screenWidth * 0.032),
                        alignment: Alignment.centerLeft,
                        child:  Text('${departureTime.hour}:${departureTime.minute}',
                          style: TextStyle(
                              fontSize:  screenHeight * 0.03,
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none

                          ),
                        ),
                      ),
                      Container(
                        // height: 21,
                        child: Text(travelTime,
                          style: TextStyle(
                              fontSize:  screenHeight * 0.019,
                              fontFamily: 'Poppins',
                              color: grey2,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none

                          ),
                        ),
                      ),
                      Container(
                        margin:  EdgeInsets.only(right: screenWidth * 0.032),
                        // height: 21,
                        alignment: Alignment.centerRight,
                        child: Text('${arrivalTime.hour}:${arrivalTime.minute}',
                          style: TextStyle(
                              fontSize:  screenHeight * 0.03,
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none

                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(
            color: yellow1,
            thickness: 1,
            height: 0,
            indent: screenWidth * 0.036,
            endIndent: screenWidth * 0.036,
          ),
          SizedBox(height:  screenHeight * 0.005,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: screenWidth * 0.036),
                padding: EdgeInsets.only(top:  screenHeight * 0.002),
                width: screenWidth * 0.17,
                height:  screenHeight * 0.018,
                decoration: BoxDecoration(
                  color: yellow1,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(travelClass,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: screenHeight * 0.009,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none

                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: screenHeight * 0.003, left: screenWidth * 0.036),
                alignment: Alignment.centerLeft,
                child: Text("${cost}\$",
                  style: TextStyle(
                      fontSize: screenHeight * 0.042,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      decoration: TextDecoration.none

                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: screenHeight * 0.003, right: screenWidth * 0.036),
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: (){
                    print("click");
                    Travel futureTravel = Travel(companyName: companyName, origin: origin, destination: destination, remainingPassengers: 0, departureTime: departureTime, arrivalTime: arrivalTime, travelTime: travelTime, cost: cost, travelClass: travelClass, id: id);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PassengersPage(futureTravel: futureTravel,currentUser: currentUser,passengersNumber: passengersNumber,)),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: yellow1,
                    fixedSize: Size(screenWidth * 0.35, screenHeight * 0.055),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(70),
                    ),
                  ),
                  child: Text("Buy",
                    style: TextStyle(
                        fontSize: screenHeight * 0.036,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        decoration: TextDecoration.none

                    ),
                  ),
                ),
              )
            ],
          )


        ],
      ),
    ),
  );
}