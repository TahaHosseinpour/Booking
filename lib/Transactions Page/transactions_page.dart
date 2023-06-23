import 'package:flutter/material.dart';

import 'package:booking/Information/colors.dart';
import 'package:booking/Information/buildBottomNavigationBar.dart';
import 'package:booking/Information/wallet.dart';
import 'package:booking/Transactions Page/transaction_item.dart';
import 'package:booking/Database/user.dart';

class TransactionsPage extends StatefulWidget{

  User currentUser;

  TransactionsPage({required this.currentUser});
  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
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
              Wallet(balance: int.parse(widget.currentUser.walletBalance)),
              SizedBox(
                height: screenHeight * 0.625,
                width: screenWidth * 0.823,
                child: Column(
                  children: [
                    Container(
                      height: screenHeight * 0.042,
                      padding: EdgeInsets.only(bottom: screenHeight * 0.003),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(40)),
                            child: Container(
                              color: green3,
                              width: screenWidth * 0.272,
                              child: Center(
                                child: Text("Type",
                                  style: TextStyle(
                                      fontSize: screenHeight * 0.016,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Poppins',
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            ),
                          ),
                          VerticalDivider(
                            width: screenWidth * 0.002,

                          ),
                          Container(
                            color: green3,
                            width: screenWidth * 0.272,
                            child: Center(
                              child: Text("Amount",
                                style: TextStyle(
                                    fontSize: screenHeight * 0.016,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Poppins',
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ),
                          VerticalDivider(
                            width: screenWidth * 0.002,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(40)),
                            child: Container(
                              color: green3,
                              width: screenWidth * 0.272,
                              child: Center(
                                child: Text("Date",
                                  style: TextStyle(
                                      fontSize: screenHeight * 0.016,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Poppins',
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.825,
                      height: screenHeight * 0.582,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: screenHeight * 0.002),
                            child: TransactionItem(id: "0200043", date: "22.14.07",color: green1,amount: "340\$",type: "Income",),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: screenHeight * 0.002),
                            child: TransactionItem(id: "784676", date: "22.14.07",color: yellow2,amount: "40\$",type: "Buy",),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: screenHeight * 0.002),
                            child: TransactionItem(id: "764643", date: "22.14.07",color: green1,amount: "340\$",type: "Buy",),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: screenHeight * 0.002),
                            child: TransactionItem(id: "02865443", date: "22.14.07",color: yellow2,amount: "98\$",type: "Income",),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: screenHeight * 0.002),
                            child: TransactionItem(id: "0342343", date: "22.13.07",color: green1,amount: "340\$",type: "Buy",),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: screenHeight * 0.002),
                            child: TransactionItem(id: "0200043", date: "22.14.02",color: yellow2,amount: "26\$",type: "Income",),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: screenHeight * 0.002),
                            child: TransactionItem(id: "0200043", date: "22.14.06",color: green1,amount: "76\$",type: "Income",),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: screenHeight * 0.002),
                            child: TransactionItem(id: "0200043", date: "22.14.08",color: yellow2,amount: "240\$",type: "Buy",),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: screenHeight * 0.002),
                            child: TransactionItem(id: "0200043", date: "22.14.07",color: green1,amount: "340\$",type: "Income",),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: screenHeight * 0.002),
                            child: TransactionItem(id: "0200043", date: "22.15.07",color: yellow2,amount: "20\$",type: "Buy",),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: screenHeight * 0.002),
                            child: TransactionItem(id: "0200043", date: "22.13.09",color: green1,amount: "340\$",type: "Income",),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: screenHeight * 0.002),
                            child: TransactionItem(id: "0200043", date: "22.14.07",color: yellow2,amount: "340\$",type: "Income",),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: screenHeight * 0.002),
                            child: TransactionItem(id: "0200043", date: "22.13.09",color: green1,amount: "340\$",type: "Income",),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: screenHeight * 0.002),
                            child: TransactionItem(id: "0200043", date: "22.14.07",color: yellow2,amount: "340\$",type: "Income",),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: screenHeight * 0.002),
                            child: TransactionItem(id: "0200043", date: "22.13.09",color: green1,amount: "340\$",type: "Income",),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: screenHeight * 0.002),
                            child: TransactionItem(id: "0200043", date: "22.14.07",color: yellow2,amount: "340\$",type: "Income",),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: screenHeight * 0.002),
                            child: TransactionItem(id: "0200043", date: "22.13.09",color: green1,amount: "340\$",type: "Income",),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: screenHeight * 0.002),
                            child: TransactionItem(id: "0200043", date: "22.14.07",color: yellow2,amount: "340\$",type: "Income",),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: screenHeight * 0.002),
                            child: TransactionItem(id: "0200043", date: "22.13.09",color: green1,amount: "340\$",type: "Income",),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: screenHeight * 0.002),
                            child: TransactionItem(id: "0200043", date: "22.14.07",color: yellow2,amount: "340\$",type: "Income",),
                          ),

                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BuildBottomNavigationBar(activeIcon: "transaction",currentUser: widget.currentUser,),
      ),
    );
  }
}
