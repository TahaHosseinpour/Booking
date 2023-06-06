import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:booking/Information/colors.dart';

class Wallet extends StatefulWidget{

  int balance;
  Wallet({super.key, required this.balance});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {


  Widget build(context){

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return  Stack(
      alignment: Alignment.center,
      children: [
        Container(
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
                    width: screenWidth * 0.325,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: screenHeight * 0.042,
                          child: FittedBox(
                            child: SvgPicture.asset(
                                'assets/images/wallet.svg'
                            ),
                          ),
                        ),

                        Container(
                          height: screenHeight * 0.037,
                          child: FittedBox(
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
                  Container(
                    height: screenHeight * 0.072,
                    child: FittedBox(
                      child: Text(widget.balance.toString() + "\$",
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
        ),

        InkWell(
            onTap: (){
              print("salam");
            },
            child: Container(
                width: screenWidth * 0.3,
                height: screenHeight * 0.046,
                margin: EdgeInsets.only(top: screenHeight * 0.11),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  color: yellow1,
                ),
                child:  Container(
                  height: screenHeight * 0.04,
                  child: FittedBox(
                    child: Text(
                      "Add +",
                      style: TextStyle(
                        backgroundColor: yellow1,
                        fontSize: 25,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                )
            )
        ),

      ],
    );
  }
}