import 'package:booking/Information/buildBottomNavigationBar.dart';
import 'package:booking/Information/colors.dart';
import 'package:booking/Information/widgets.dart';
import 'package:booking/Travels%20Page/search_box.dart';
import 'package:booking/Travels%20Page/travel_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TravelsPage extends StatefulWidget{
  const TravelsPage({super.key});
  @override
  State<TravelsPage> createState() => _TravelsPageState();
}

class _TravelsPageState extends State<TravelsPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    final screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: green1,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Container(
            alignment: Alignment.center,
            height: screenHeight * 0.07,
            width: screenWidth * 0.62,
          decoration:  BoxDecoration(
          color: yellow2,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100),
              bottomRight: Radius.circular(100),
            ),
          ),
            child: Container(
              height: screenHeight * 0.06,
              child: FittedBox(
                child: Text("Travels",
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'
                  ),
                ),
              ),
            )
          ),
              SearchBox(context),
             Container(
               margin: EdgeInsets.only(top: screenHeight * 0.01),
               height: screenHeight * 0.58,
               width: screenWidth * 0.83,
               child: ListView(
                 scrollDirection: Axis.vertical,
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(bottom: 12),
                     child: TravelInfo(context),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(bottom: 12),
                     child: TravelInfo(context),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(bottom: 12),
                     child: TravelInfo(context),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(bottom: 12),
                     child: TravelInfo(context),
                   ),
                 ],
               ),
             )

            ],
          ),
        ),
        bottomNavigationBar: BuildBottomNavigationBar(activeIcon: "ticket"),
      ),
    );
  }
}