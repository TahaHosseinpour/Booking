import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:booking/Information/colors.dart';
import 'package:booking/Database/user.dart';

class Wallet extends StatefulWidget{

  User currentUser;
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
          onTap: (){

            if(editingMode) {
              changeWalletBalanceAndCreateTransaction(widget.currentUser, int.parse(_controller.text));

              setState(() {
                balance = (balance + int.parse(_controller.text));
                _controller.text = "";
                widget.currentUser.walletBalance = balance.toString();
                print("balance is : $balance , walletBalance is : ${widget.currentUser.walletBalance} --|");
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
}

changeWalletBalanceAndCreateTransaction(User user , int amount){
  /** request to server and change wallet balance in Database and
      create a transaction and add it to transactionsList of user **/
}