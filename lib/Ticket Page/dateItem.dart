import 'package:flutter/material.dart';

import 'package:booking/Information/colors.dart';
import 'package:booking/Ticket Page/ticket_page.dart';

class DateItem extends StatefulWidget{
  DateTime date;
  bool isActive;
  final Function(DateTime) onDateChanged;


  DateItem({
    required this.date,
    required this.isActive,
    required this.onDateChanged
  });

  @override
  State<DateItem> createState() => _DateItemState();
}

class _DateItemState extends State<DateItem> {
  String threeCharDayInWeek(int dayInWeek){
    switch(dayInWeek){
      case 6 :
        return "Sat";
      case 7 :
        return "Sun";
      case 1 :
        return "Mon";
      case 2 :
        return "Tue";
      case 3 :
        return "Wed";
      case 4 :
        return "Thu";
      case 5 :
        return "Fri";
      default:
        return "";
    }
  }
  Widget build(context){
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding:  EdgeInsets.only(right:screenWidth * 0.006 ,left: screenWidth * 0.006),
      child: InkWell(
        onTap: (){

          widget.onDateChanged(widget.date);
          // print("click on ");
          // print(widget.date);
          // print("\n");
          },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(screenHeight * 0.010),
          child: Container(
            // margin:  EdgeInsets.only(top: screenHeight * 0.002),
            height: screenHeight * 0.080,
            width: screenWidth * 0.146,
            color: widget.isActive ? green3 : green2,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  threeCharDayInWeek(widget.date.weekday),
                  style:  TextStyle(
                    color: Colors.white,
                    fontSize: screenHeight * 0.024,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                  ),
                ),
                Text(
                  widget.date.day.toString(),
                  style:  TextStyle(
                    color: Colors.white,
                    fontSize: screenHeight * 0.024,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


