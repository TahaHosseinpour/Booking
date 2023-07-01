import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'dart:io';
import 'dart:convert';
import 'package:intl/intl.dart';
import 'dart:math';

import 'package:booking/global.dart';

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
import 'package:booking/Main Page/main_page.dart';
import 'package:booking/Database/ticket.dart';
import 'package:booking/ServerMethods/random10Digit.dart';
import 'package:booking/Database/transaction.dart';


class ConfirmPage extends StatefulWidget{

  Ticket futureTravel;
  User currentUser;
  static bool result = false;
  static bool createTransactionResult = false;
  List<Passenger> passengerList = [];


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
              Row(
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
                    child: Text("Confirm",
                        style: TextStyle(
                          fontSize: screenHeight * 0.036,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                    ),
                  ),
                ],
              ),
              Container(
                height: screenHeight * 0.05,
                width: screenWidth,
                color: grey3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset('assets/images/local.svg',
                      height: screenHeight * 0.03,
                      width: screenWidth * 0.06,
                    ),
                    SvgPicture.asset('assets/images/arrow_back_right.svg',
                      height: screenHeight * 0.02,
                      width: screenWidth * 0.02,
                    ),
                    SvgPicture.asset('assets/images/people.svg',
                      height: screenHeight * 0.03,
                      width: screenWidth * 0.13,
                    ),
                    SvgPicture.asset('assets/images/arrow_back_right.svg',
                      height: screenHeight * 0.02,
                      width: screenWidth * 0.02,
                    ),
                    SvgPicture.asset('assets/images/like_yellow.svg',
                      height: screenHeight * 0.03,
                      width: screenWidth * 0.06,
                    ),
                    SvgPicture.asset('assets/images/arrow_back_right.svg',
                      height: screenHeight * 0.02,
                      width: screenWidth * 0.02,
                    ),
                    SvgPicture.asset('assets/images/credit_card.svg',
                      height: screenHeight * 0.03,
                      width: screenWidth * 0.09,
                    ),
                    SvgPicture.asset('assets/images/arrow_right_black.svg',
                      height: screenHeight * 0.02,
                      width: screenWidth * 0.02,
                    ),
                    SvgPicture.asset('assets/images/confirmation_number.svg',
                      height: screenHeight * 0.03,
                      width: screenWidth * 0.09,
                    ),
                  ],
                ),
              ),
              TravelInformation(context , widget.currentUser,widget.futureTravel, widget.passengerList.length),
              SizedBox(
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
            borderRadius: BorderRadius.only(topLeft: Radius.circular(screenHeight * 0.037), topRight: Radius.circular(screenHeight * 0.037)),
            color: yellow2,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: screenWidth * 0.22,
                    height: screenHeight * 0.048,
                    child: Text('Price :',
                        style: TextStyle(
                          fontSize: screenHeight * 0.035,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          color: grey2,
                        ),
                    ),
                    margin: EdgeInsets.only(left: screenWidth * 0.17),
                  ),
                  Container(
                    width: screenWidth * 0.26,
                    height: screenHeight * 0.07,
                    child: Text('${widget.futureTravel.cost}\$',
                        style: TextStyle(
                          fontSize: screenHeight * 0.053,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                    ),
                    margin: EdgeInsets.only(right: screenWidth * 0.17),
                  ),
                ],
              ),
              InkWell(
                child: buttonContainer("Payment", screenHeight, screenWidth),
                onTap: (){
                  String id = generateRandomNumber();
                  String date = formatDate();

                  changeWalletBalanceAndCreateTransaction(widget.currentUser.username,widget.futureTravel.cost * -1,id).then((isWalletBalanceChanged){
                    if(isWalletBalanceChanged){
                      widget.currentUser.transactionsList.add(Transaction(date:date,type:"Buy",amount:widget.futureTravel.cost,id:id));
                      int walletBalance = (int.parse(widget.currentUser.walletBalance) + (widget.futureTravel.cost * -1));
                      widget.currentUser.walletBalance = walletBalance.toString();
                      addFutureTravelToTicketsList(widget.currentUser, widget.futureTravel).then((isDone) {
                        if(isDone){
                          widget.currentUser.ticketsList.add(widget.futureTravel);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MainPage(currentUser: widget.currentUser)),
                          );
                        }
                      });
                    }
                  });



                  changeRemainPassengersOfTravel(widget.futureTravel, widget.passengerList.length);




                },
              ),
              BuildBottomNavigationBar(activeIcon: "home",currentUser: widget.currentUser,)
            ],
          ),
        ),
      ),
    );
  }
  changeWalletBalanceAndCreateTransaction(String username , int amount , String id) async{
    bool result = ConfirmPage.result;

    Map<String, dynamic> requestDataMap = {
      'username': username,
      'amount': amount,
      'id' : id,
    };
    Map<String, dynamic> jsonRequest = {
      'requestType': "changeWalletBalanceAndCreateTransaction",
      'requestData': json.encode(requestDataMap),
    };

    String jsonString = json.encode(jsonRequest);
    List<int> bytes = utf8.encode(jsonString);

    await Socket.connect(Global.ip,Global.port).then((serverSocket) async{
      serverSocket.encoding = utf8;
      serverSocket.add(bytes);
      await serverSocket.flush();

      String receivedData = "";
      await serverSocket.listen(
            (List<int> data) {
          receivedData += utf8.decode(data);
        },
        onDone: () {
          Map<String, dynamic> jsonData = json.decode(receivedData);
          setState(() {
            ConfirmPage.result = jsonData["result"];
          });

        },
        onError: (error) {
          ConfirmPage.result = false;
        },
      );

      serverSocket.close();
    });

    return result;
  }


  addFutureTravelToTicketsList(User user , Ticket futureTravel) async{
    //request to server and add futureTravel to ticketsList of user
    bool result = ConfirmPage.result;

    Map<String, dynamic> requestDataMap = {
      'username': user.username,
      'companyName': futureTravel.companyName,
      'origin' : futureTravel.origin,
      'destination': futureTravel.destination,
      'departureTime': futureTravel.departureTime.toString(),
      'arrivalTime' : futureTravel.arrivalTime.toString(),
      'travelTime' : futureTravel.travelTime,
      'cost': futureTravel.cost,
      'travelClass': futureTravel.travelClass,
      'id' : futureTravel.id,
    };
    Map<String, dynamic> jsonRequest = {
      'requestType': "addFutureTravelToTicketsList",
      'requestData': json.encode(requestDataMap),
    };

    String jsonString = json.encode(jsonRequest);
    List<int> bytes = utf8.encode(jsonString);

    await Socket.connect(Global.ip,Global.port).then((serverSocket) async{
      serverSocket.encoding = utf8;
      serverSocket.add(bytes);
      await serverSocket.flush();

      String receivedData = "";
      await serverSocket.listen(
            (List<int> data) {
          receivedData += utf8.decode(data);
        },
        onDone: () {
          Map<String, dynamic> jsonData = json.decode(receivedData);
          setState(() {
            ConfirmPage.result = jsonData["result"];
          });

        },
        onError: (error) {
          ConfirmPage.result = false;
        },
      );

      serverSocket.close();
    });

    return result;
  }

}

String formatDate() {
  DateTime currentDate = DateTime.now();
  DateFormat formatter = DateFormat('yy.MM.dd');
  String formattedDate = formatter.format(currentDate);
  return formattedDate;
}

String generateRandomNumber() {
  Random random = Random();
  int randomNumber = random.nextInt(900000000) + 100000000;
  return randomNumber.toString();
}

changeRemainPassengersOfTravel(Ticket futureTravel ,int passengersCount){
  /** request to server and change remain passenger of travel's
  that equals futureTravel ticket in Database **/
}

addFutureTravelToTicketsList(User user , Ticket futureTravel){
  //request to server and add futureTravel to ticketsList of user
}
