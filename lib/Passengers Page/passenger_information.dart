import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:booking/Information/colors.dart';
import 'package:booking/Confirm Page/confirm_page.dart';
import 'package:booking/Information/buildBottomNavigationBar.dart';
import 'package:booking/Database/passenger.dart';

class PassengerInformation extends StatefulWidget{

  final Function(Passenger passenger) onTextChanged;

  PassengerInformation({required this.onTextChanged});

  @override
  State<PassengerInformation> createState() => _PassengerInformationState();
}

class _PassengerInformationState extends State<PassengerInformation> {
  Passenger? person;

  TextEditingController _firstnameController = TextEditingController();
  TextEditingController _lastnameController = TextEditingController();
  TextEditingController _passportNumberController = TextEditingController();
  String year = "";
  String month = "";
  String day = "";


  Widget build(context){
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(bottom: screenHeight * 0.017),
      child: Container(
        width: screenWidth * 0.83,
        height: screenHeight * 0.35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(screenHeight * 0.042),
          color: grey3,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              //height: screenHeight * 0.06,
              padding: EdgeInsets.only(right: screenWidth * 0.13, left:screenWidth * 0.13, top: screenHeight * 0.006),
              child: TextField(
                controller: _firstnameController,
                decoration: InputDecoration(
                  labelText: 'First Name',
                  hintStyle: TextStyle(
                    fontSize: screenHeight * 0.026,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),

              ),
            ),
            // SizedBox(height: screenHeight * 0.008,),
            Container(
              //height: screenHeight * 0.06,
              padding: EdgeInsets.only(right: screenWidth * 0.13, left:screenWidth * 0.13 ),
              child: TextField(
                controller: _lastnameController,
                style: TextStyle(
                ),
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  hintStyle: TextStyle(
                    fontSize: screenHeight * 0.026,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),

              ),
            ),
            // SizedBox(height: screenHeight * 0.005,),
            Container(
              //height: screenHeight * 0.06,
              padding: EdgeInsets.only(right: screenWidth * 0.13, left:screenWidth * 0.13 ),
              child: TextField(
                controller: _passportNumberController,
                decoration: InputDecoration(
                  labelText: 'Passport Number',
                  hintStyle: TextStyle(
                    fontSize: screenHeight * 0.026,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),

              ),
            ),
            //SizedBox(height: screenHeight * 0.005,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: screenWidth * 0.14, bottom: screenHeight * 0.018),
                  width: screenWidth * 0.19,
                  child: DropdownSearch<String> (
                    popupProps: const PopupProps.menu(
                      showSelectedItems: true,
                      showSearchBox: true,
                    ),
                    items : listBuilder(),
                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        labelText: "Year",
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: grey2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        //contentPadding: EdgeInsets.only(bottom: 5),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onChanged: (String? selectItem){
                      setState((){
                        year = selectItem!;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: screenHeight * 0.018),
                  width: screenWidth * 0.18,
                  child: DropdownSearch<String> (
                    popupProps: const PopupProps.menu(
                      showSelectedItems: true,
                      showSearchBox: true,
                    ),
                    items: const ["01", "02", "03", "04", "05","06", "07", "08", "09", "10","11","12"],
                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        labelText: "Month",
                        labelStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: screenHeight * 0.013,
                            color: grey2
                        ),
                        //contentPadding: EdgeInsets.only(bottom: 5),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onChanged: (String? selectItem){
                      setState((){
                        month = selectItem!;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: screenWidth * 0.14,bottom: screenHeight * 0.018  ),
                  width: screenWidth * 0.18,
                  child: DropdownSearch<String> (
                    popupProps: const PopupProps.menu(
                      showSelectedItems: true,
                      showSearchBox: true,
                    ),
                    items: const ["1", "2", "3", "4", "5","6","7","8","9","10","11", "12", "13", "14", "15","16","17","18","19","20","21", "22", "23", "24", "25","26","27","28","29","30",],
                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        labelText: "Day",
                        labelStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: screenHeight * 0.013,
                            color: grey2
                        ),
                        //contentPadding: EdgeInsets.only(bottom: 5),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onChanged: (String? selectItem){
                      setState((){
                        day = selectItem!;
                        setState(() {
                          person = Passenger(firstname: _firstnameController.text,lastname: _lastnameController.text,passportNumber: _passportNumberController.text,birthday: DateTime(int.parse(year),int.parse(month),int.parse(day)));
                          widget.onTextChanged(person!);
                        });
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    // setState(() {
    //   person = Passenger(firstname: _firstnameController.text,lastname: _lastnameController.text,passportNumber: _passportNumberController.text,birthday: DateTime(int.parse(year),int.parse(month),int.parse(day)));
    //   widget.onTextChanged(person!);
    // });
  }
}

List<String> listBuilder(){
  List<String> dateList = [];
  int currentYear = DateTime.now().year;
  for (int i = 0 ; i >= -100 ; i--){
    int date = (currentYear + i);
    dateList.add(date.toString());
  }
  return dateList;
}