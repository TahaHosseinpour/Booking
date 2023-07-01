import 'package:flutter/material.dart';
import 'dart:async';


import 'package:booking/Information/colors.dart';

class TransactionItem extends StatefulWidget{
  String date;
  String type;
  String amount;
  String id;
  Color color;


  TransactionItem({
    super.key,
    required this.date,
    required this.type ,
    required this.amount ,
    required this.id ,
    required this.color,

  });


  @override
  State<TransactionItem> createState() => _TransactionItemState();
}

class _TransactionItemState extends State<TransactionItem> {

  bool isFront = true;
  Widget card = Container();
  Widget build(context){
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    Widget frontCard = Container(
      height: screenHeight * 0.040,
      width: screenWidth * 0.823,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(screenHeight * 0.011), bottomLeft: Radius.circular(screenHeight * 0.011)),
            child: Container(
              color: widget.color,
              width: screenWidth * 0.272,
              child: Center(
                child: Text(widget.type,
                  style: TextStyle(
                    fontSize: screenHeight * 0.016,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                    color: (widget.type == "Buy") ? Color.fromRGBO(220, 67, 52, 1) : Color.fromRGBO(9, 187, 102, 1),
                  ),
                ),
              ),
            ),
          ),
          VerticalDivider(
            width: screenWidth * 0.002,

          ),
          Container(
            color: widget.color,
            width: screenWidth * 0.272,
            child: Center(
              child: Text(widget.amount,
                style: TextStyle(
                    fontSize: screenHeight * 0.016,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                    color: Colors.black
                ),
              ),
            ),
          ),
          VerticalDivider(
            width: screenWidth * 0.002,
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(topRight: Radius.circular(screenHeight * 0.011) , bottomRight: Radius.circular(screenHeight * 0.011)),
            child: Container(
              color: widget.color,
              width: screenWidth * 0.272,
              child: Center(
                child: Text(widget.date,
                  style: TextStyle(
                      fontSize: screenHeight * 0.016,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins',
                      color: Colors.black
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );

    Widget backCard = ClipRRect(
      borderRadius: BorderRadius.circular(screenHeight * 0.011),
      child: Container(
        height: screenHeight * 0.040,
        color: widget.color,
        child: Center(
          child: Text(
            widget.id,
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: screenHeight * 0.022,
                color: Colors.black,
                fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
    );
    setState(() {
      isFront ? card = frontCard : card = backCard;
    });
    return GestureDetector(
      child: card,
      onTap: (){
        print("click");
        setState(() {
          if(isFront){
            isFront = false;
          }else{
            isFront = true;
          }
        });

        Timer(Duration(seconds: 2), () {
          setState(() {
            isFront = !isFront;
          });
        });
      },

    );
  }
}