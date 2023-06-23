import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Information/colors.dart';
import 'package:booking/Database/ticket.dart';
import 'package:booking/Database/company.dart';
import 'package:booking/Database/country.dart';

class TravelInfo extends StatefulWidget{
  Ticket ticket;

  TravelInfo({
    required this.ticket
  });

  @override
  State<TravelInfo> createState() => _TravelInfoState();
}

class _TravelInfoState extends State<TravelInfo> {
  String? companyLogoPath;
  String? threeCharOriginName;
  String? threeCharDestinationName;

  Widget build(context){

    for(Company company in companiesList){
      if(company.name == widget.ticket.companyName){
        companyLogoPath = company.logoPath;
      }
    }
    for(Country country in countriesList){
      if(country.fullName == widget.ticket.origin){
        threeCharOriginName = country.shortName;
      }
    }
    for(Country country in countriesList){
      if(country.fullName == widget.ticket.destination){
        threeCharDestinationName = country.shortName;
      }
    }
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        padding: EdgeInsets.only(bottom: screenHeight * 0.007),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(35),
        ),
        width:screenWidth * 0.83 ,
        height: screenHeight * 0.182,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: screenHeight * 0.032,
              margin: EdgeInsets.only(top: screenHeight * 0.01),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child:Text(widget.ticket.companyName,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: screenHeight * 0.019,
                          color: Colors.black,
                          decoration: TextDecoration.none

                      ),
                    ),
                  ),
                  SizedBox(width: 6,),
                  Container(
                    child: Image.asset(companyLogoPath!,
                      height: screenHeight * 0.032,
                      width: screenWidth * 0.069,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.025,),
            Container(
              height: screenHeight * 0.065,
              width: screenWidth * 0.77,
              padding: EdgeInsets.only(bottom: screenHeight * 0.01),
              child: Column(
                children: [
                  Container(
                    height: screenHeight * 0.02,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // height: 20,
                          margin: EdgeInsets.only(left: screenWidth * 0.032),
                          alignment: Alignment.centerLeft,
                          child: Text(threeCharOriginName!,
                            style: TextStyle(
                                fontSize: screenHeight * 0.016,
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
                          child: Text(threeCharDestinationName!,
                            style: TextStyle(
                                fontSize: screenHeight * 0.016,
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
                    height: screenHeight * 0.033,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // height: 21,
                          margin:  EdgeInsets.only(left: screenWidth * 0.032),
                          alignment: Alignment.centerLeft,
                          child: Text('${widget.ticket.departureTime.hour}:${widget.ticket.departureTime.minute}',
                            style: TextStyle(
                              fontSize: screenHeight * 0.03,
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontWeight: FontWeight.w400,

                            ),
                          ),
                        ),
                        Container(
                          // height: 21,
                            child: SvgPicture.asset('assets/images/airplane_ticket.svg',
                              width: screenWidth * 0.083,
                              height: screenHeight * 0.036,
                            )
                        ),
                        Container(
                          margin:  EdgeInsets.only(right:screenWidth * 0.032),
                          // height: 21,
                          alignment: Alignment.centerRight,
                          child:Text('${widget.ticket.arrivalTime.hour}:${widget.ticket.arrivalTime.minute}',
                            style: TextStyle(
                              fontSize: screenHeight * 0.03,
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontWeight: FontWeight.w400,

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
              indent: 15.5,
              endIndent: 15.5,
            ),
            SizedBox(height: screenHeight * 0.013,),
            Container(
              padding: EdgeInsets.only(right: screenWidth * 0.13, left: screenWidth *0.12),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child:Text("Number",
                      style: TextStyle(
                        fontSize: screenHeight * 0.019,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: grey2,
                      ),
                    ),
                  ),
                  Container(
                    child:Text(widget.ticket.id.toString(),
                      style: TextStyle(
                        fontSize: screenHeight * 0.019,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}