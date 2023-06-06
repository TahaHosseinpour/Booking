import 'package:flutter/material.dart';

import 'package:booking/Information/colors.dart';
import 'package:booking/Information/buildBottomNavigationBar.dart';
import 'package:booking/Information/wallet.dart';

class Transactions extends StatelessWidget{

  Widget build(context){
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Transactions Page",
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  alignment: Alignment.center,
                  height: screenHeight * 0.07,
                  width: screenWidth * 0.62,
                  decoration:  BoxDecoration(
                    color: yellow2,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                  ),
                  child: Container(
                    height: screenHeight * 0.055,
                    child: FittedBox(
                      child: Text("Transactions",
                        style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins'
                        ),
                      ),
                    ),
                  )
              ),
              Wallet(balance: 234,),
            ],
          ),
        ),
        bottomNavigationBar: BuildBottomNavigationBar(activeIcon: "transaction"),
      ),
    );
  }
}
