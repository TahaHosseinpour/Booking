import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:io';
import 'dart:convert';
import 'package:intl/intl.dart';
import 'dart:math';

import 'package:booking/Information/colors.dart';
import 'package:booking/Database/user.dart';
import 'package:booking/Database/transaction.dart';

class Wallet extends StatefulWidget{

  User currentUser;
  static bool result = false;
  Wallet({super.key, required this.currentUser});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {

  late bool editingMode = false;
  late int balance = int.parse(widget.currentUser.walletBalance);
  final TextEditingController _controller = TextEditingController();


  @override
  Widget build(context){
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    Widget editBox = Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
        width: screenWidth * 0.65,
        height: screenHeight * 0.1,
        child:  TextField(
          controller: _controller,
          style: const TextStyle(
            fontSize: 18,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            color:Colors.black,
          ),
          decoration: const InputDecoration(
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(198, 198, 198, 1),
                width: 1,
              ),
            ),
            hintText: "Enter Number",
            hintStyle: TextStyle(
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              color:Colors.black,
            ),
          ),

        ),
      ),
    );

    Widget mainBox = Container(
        alignment: Alignment.center,
        width: screenWidth * 0.790,
        height: screenHeight * 0.110,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromRGBO(135, 135, 135, 1),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
        child: Container(
          margin: EdgeInsets.only(right : screenWidth * 0.037 , left: screenWidth * 0.037),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: screenWidth * 0.33,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: screenHeight * 0.042,
                        child: FittedBox(
                          child: SvgPicture.asset(
                              'assets/images/wallet.svg'
                          ),
                        ),
                      ),

                      SizedBox(
                        height: screenHeight * 0.037,
                        child: const FittedBox(
                          child: Text("Wallet",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins',
                                color : Colors.black
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.072,
                  child: FittedBox(
                    child: Text( balance.toString() + "\$" ,
                      style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color : green3
                      ),
                    ),
                  ),
                )
              ]
          ),
        )
    );

    Widget box = editingMode ? editBox : mainBox;


    return  Stack(
      alignment: Alignment.center,
      children: [
        box,

        InkWell(
            child: Container(
                width: screenWidth * 0.3,
                height: screenHeight * 0.046,
                margin: EdgeInsets.only(top: screenHeight * 0.11),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  color: yellow1,
                ),
                child:  SizedBox(
                  height: screenHeight * 0.04,
                  child: FittedBox(
                    child: Text(
                      (editingMode)? "Pay" : "Add +",
                      style: TextStyle(
                        backgroundColor: yellow1,
                        fontSize: 25,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                )
            ),
          onTap: () async{

            String id = generateRandomNumber();
            String date = formatDate();
            if(editingMode) {
              changeWalletBalanceAndCreateTransaction(widget.currentUser.username, int.parse(_controller.text),id).then((isBalanceChanged){
                if(isBalanceChanged){

                  widget.currentUser.transactionsList.add(Transaction(date:date,type:"Income",amount:int.parse(_controller.text),id:id));
                  int walletBalance = (int.parse(widget.currentUser.walletBalance) + int.parse(_controller.text));
                  widget.currentUser.walletBalance = walletBalance.toString();

                  setState(() {
                    balance = (balance + int.parse(_controller.text));
                    _controller.text = "";
                    widget.currentUser.walletBalance = balance.toString();
                    print("balance is : $balance , walletBalance is : ${widget.currentUser.walletBalance} --|");
                  });
                }
              });
            }
            setState(() {
              editingMode = !editingMode;
            });


          },
        ),

      ],
    );
  }

  changeWalletBalanceAndCreateTransaction(String username , int amount , String id) async{
    bool result = Wallet.result;

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

    await Socket.connect('192.168.1.9',8000).then((serverSocket) async{
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
            Wallet.result = jsonData["result"];
          });

        },
        onError: (error) {
          Wallet.result = false;
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