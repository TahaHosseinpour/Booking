import 'package:booking/Information/colors.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class PassengerInformation extends StatelessWidget{
  final ValueChanged<String> onTextChanged;

  PassengerInformation({required this.onTextChanged});

  Widget build(context){
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;


    return Padding(
      padding: EdgeInsets.only(bottom: screenHeight * 0.017),
      child: Container(
        width: screenWidth * 0.83,
        height: screenHeight * 0.35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: grey3,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              //height: screenHeight * 0.06,
              padding: EdgeInsets.only(right: screenWidth * 0.13, left:screenWidth * 0.13, top: screenHeight * 0.006),
              child: TextField(
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
                onChanged: onTextChanged,
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
                    items: const ["2019", "2020", "2021", "2022", "2023",],
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
                    items: const ["01", "02", "03", "04", "05",],
                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        labelText: "Month",
                        labelStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            color: grey2
                        ),
                        //contentPadding: EdgeInsets.only(bottom: 5),
                      ),
                      textAlign: TextAlign.center,
                    ),
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
                    items: const ["1", "2", "3", "4", "5",],
                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        labelText: "Day",
                        labelStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            color: grey2
                        ),
                        //contentPadding: EdgeInsets.only(bottom: 5),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
