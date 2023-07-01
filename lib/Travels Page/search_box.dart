import 'package:booking/Information/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Search Page/date_picker.dart';

class SearchBox extends StatefulWidget{

  // DateTime? departureDate;
  // DateTime? backDate;
  // String? ticketNumber;
  final Function(DateTime, DateTime, String) onSearch;

  SearchBox({required this.onSearch});


  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  late MyDatePickerTextField backDateButton ;
  late MyDatePickerTextField departureDateButton;

  DateTime? backDate = DateTime(1000,10,10);
  DateTime? departureDate = DateTime(1000,10,10);
  String ticketNumber = "0";

  @override
  void initState() {
    super.initState();
    backDateButton = MyDatePickerTextField();
    departureDateButton = MyDatePickerTextField();
  }
  TextEditingController _ticketNumberController = TextEditingController();

  Widget build(context){

    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    final screenHeight = MediaQuery
        .of(context)
        .size
        .height;

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          padding: EdgeInsets.only(top: screenHeight * 0.01),
          alignment: Alignment.center,
          width: screenWidth * 0.83,
          height: screenHeight * 0.19,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(screenHeight * 0.037),
            color: grey3,
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin :EdgeInsets.only(left: screenWidth * 0.04),
                              child: SvgPicture.asset('assets/images/Departure.svg',
                                width: screenWidth * 0.037,
                                height: screenHeight * 0.018,
                              ),
                            ),
                            SizedBox(width: screenWidth * 0.01,),
                            SizedBox(
                                height: screenHeight * 0.017,
                                  child:  Text("Departure",
                                    style: TextStyle(
                                      fontSize: screenHeight * 0.013,
                                      fontFamily: 'Poppins',
                                    ),
                                )
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.0096,),
                        Container(
                          child: departureDateButton,
                          margin: EdgeInsets.only(left: screenWidth * 0.11),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              child: SvgPicture.asset('assets/images/Departure.svg',
                                width: screenWidth * 0.037,
                                height: screenHeight * 0.018,
                              ),
                            ),
                            SizedBox(width: screenWidth * 0.01,),
                            Container(
                                margin: EdgeInsets.only(right: screenWidth * 0.27),
                                height: screenHeight * 0.017,
                                  child: Text("Back",
                                    style: TextStyle(
                                      fontSize: screenHeight * 0.013,
                                      fontFamily: 'Poppins',
                                    ),
                                )
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.0096,),
                        Container(
                          child: backDateButton,
                          margin: EdgeInsets.only(right: screenWidth * 0.13),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                // height: screenHeight * 0.06,
                padding: EdgeInsets.only(right: screenWidth * 0.17, left:screenWidth * 0.17 ),
                child: TextField(
                  controller: _ticketNumberController,
                  decoration: InputDecoration(
                    labelText: 'Travel Number',
                    hintStyle: TextStyle(
                      fontSize: screenHeight * 0.0268,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      //height: screenHeight * 0.04,
                    ),
                  ),

                ),
              ),
            ],
          ),
        ),
        InkWell(
            onTap: (){
              print("click on Search InkWell");
              setState(() {
                backDate = backDateButton.pickDate;
                departureDate = departureDateButton.pickDate;
                ticketNumber = _ticketNumberController.text;
              });
              setState(() {
                widget.onSearch(departureDate!,backDate!,ticketNumber);
              });
            },
            child: Container(
                width: screenWidth * 0.3,
                height: screenHeight * 0.046,
                margin: EdgeInsets.only(top: screenHeight * 0.19),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenHeight * 0.048),
                  color: yellow1,
                ),
                child:  Container(
                  height: screenHeight * 0.04,
                  child: FittedBox(
                    child: Text(
                      "Search",
                      style: TextStyle(
                        backgroundColor: yellow1,
                        fontSize: screenHeight * 0.027,
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