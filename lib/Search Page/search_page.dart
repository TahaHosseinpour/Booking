import 'package:booking/Start%20Page/start.dart';
import 'package:dropdown_search/dropdown_search.dart';
import'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:booking/Information/colors.dart';
import 'package:booking/Information/widgets.dart';
import 'package:booking/Search Page/two_button.dart';
import 'package:booking/Search Page/date_picker.dart';


class SearchPage extends StatelessWidget{
  const SearchPage({super.key});
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                child: Image.asset('assets/images/train.png'),
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(70),
                    //   ),

                    color: grey3,
                    height: screenHeight * 0.5,
                    width: screenWidth * 0.83,
                    margin: EdgeInsets.only(top: screenHeight * 0.017 ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TwoButton(),

                        Container(
                          width: screenWidth * 0.69,
                          margin: EdgeInsets.only(left: 30,right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width:45,
                                padding: EdgeInsets.only(top: 20),
                                child: SvgPicture.asset(
                                    'assets/images/From.svg'
                                ),
                              ),
                              Container(
                                width: screenWidth * 0.553,
                                padding: EdgeInsets.only(top: 3.5),
                                child: DropdownSearch<String> (
                                  popupProps: const PopupProps.menu(
                                    showSelectedItems: true,
                                    showSearchBox: true,
                                  ),
                                  items: const ["Brazil,Brasilia", "China,Beijing", "France,Paris", "Italia,Rome", "Canada,Vancouver",],
                                  dropdownDecoratorProps: DropDownDecoratorProps(
                                    dropdownSearchDecoration: InputDecoration(
                                      labelText: "From",
                                      labelStyle: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          color: grey2
                                      ),
                                      contentPadding: EdgeInsets.only(bottom: 5),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: screenWidth * 0.69,
                          margin: EdgeInsets.only(left: 30,right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width:45,
                                padding: EdgeInsets.only(top: 20),
                                child: SvgPicture.asset(
                                    'assets/images/To.svg'
                                ),
                              ),
                              Container(
                                width: screenWidth * 0.553,
                                padding: EdgeInsets.only(top: 3.5),
                                child: DropdownSearch<String> (
                                  popupProps: const PopupProps.menu(
                                    showSelectedItems: true,
                                    showSearchBox: true,
                                  ),
                                  items: const ["Brazil,Brasilia", "China,Beijing", "France,Paris", "Italia,Rome", "Canada,Vancouver",],
                                  dropdownDecoratorProps: DropDownDecoratorProps(
                                    dropdownSearchDecoration: InputDecoration(
                                      labelText: "To",
                                      labelStyle: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          color: grey2
                                      ),
                                      contentPadding: EdgeInsets.only(bottom: 5),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text("Adult",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          color: grey2,
                                        ),
                                      ),
                                      // margin: EdgeInsets.only(left: 107.5),
                                    ),
                                    SizedBox(width: 93,),
                                    Container(
                                      child: Text("child",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          color: grey2,
                                        ),
                                      ),
                                      margin: EdgeInsets.only(right: 96.5),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 3.6,),
                              Container(
                                margin: EdgeInsets.only(right: 62),
                                child: Row(
                                  children: [
                                    Container(
                                      child: SvgPicture.asset('assets/images/Passengers.svg',
                                        height: 30,
                                        width: 30,
                                      ),
                                      margin: EdgeInsets.only(left: 32.5),
                                    ),
                                    SizedBox(width: 10.5,),
                                    Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.white,
                                        ),
                                        height: 30,
                                        width: 90,
                                        child:Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: IconButton(
                                                onPressed: (){

                                                },
                                                icon:  SvgPicture.asset('assets/images/plus.svg',
                                                  height: 20,
                                                  width: 20,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Text('2',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: IconButton(
                                                onPressed: (){

                                                },
                                                icon:  SvgPicture.asset('assets/images/minus.svg',
                                                  height: 20,
                                                  width: 20,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                    ),
                                    SizedBox(width: 35,),
                                    Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.white,
                                        ),
                                        height: 30,
                                        width: 90,
                                        child:Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: IconButton(
                                                onPressed: (){

                                                },
                                                icon:  SvgPicture.asset('assets/images/plus.svg',
                                                  height: 20,
                                                  width: 20,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Text('2',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: IconButton(
                                                onPressed: (){

                                                },
                                                icon:  SvgPicture.asset('assets/images/minus.svg',
                                                  height: 20,
                                                  width: 20,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),


                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 70),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: SvgPicture.asset('assets/images/Departure.svg',
                                          width: 16,
                                          height: 17,
                                        ),
                                      ),
                                      SizedBox(width: 5,),
                                      Container(
                                        child: Text("Departure",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                              ),
                              Container(
                                  margin: EdgeInsets.only(right: 110),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: SvgPicture.asset('assets/images/Departure.svg',
                                          width: 16,
                                          height: 17,
                                        ),
                                      ),
                                      SizedBox(width: 5,),
                                      Container(
                                        child: Text("Back",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 239,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MyDatePickerTextField(),
                              MyDatePickerTextField()
                            ],
                          ),
                        ),
                        MyButton().buildElevatedButton("Search Trains"),



                      ],
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
        bottomNavigationBar: buildNavigationBar(),
      ),
    );
  }
}


