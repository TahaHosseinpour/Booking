import 'package:flutter/material.dart';

import 'package:booking/Information/colors.dart';
import 'package:booking/Information/widgets.dart';
import 'package:booking/Sign in Page/sign_in.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/images/earth.png",
              width: screenWidth,
              height: screenHeight * 0.51,
              fit: BoxFit.fill,
            ),
             Text(
              "LOGO",
              style: TextStyle(
                fontSize: screenHeight * 0.036,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
             Container(
               child: Column(
                 children: [
                   Text(
                     "Booking Any Where",
                     style: TextStyle(
                       fontSize: screenHeight * 0.025,
                       fontFamily: 'Poppins',
                       fontWeight: FontWeight.w400,
                     ),
                   ),
                   SizedBox(height: screenHeight * 0.013,),
                   Text(
                     "Flight , Train , Bus",
                     style: TextStyle(
                       fontSize: screenHeight * 0.025,
                       fontFamily: 'Poppins',
                       fontWeight: FontWeight.w400,
                     ),
                   ),
                 ],
               ),
             ),
            InkWell(
              child: buttonContainer("Let's Start", screenHeight, screenWidth),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (SignIn())),
                );
              },
            ),
             Text(
              "version 1.0",
              style: TextStyle(
                fontSize: screenHeight * 0.016,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}










class MyButton {
  ElevatedButton buildElevatedButton(String text, BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: () {
        // اجرای عملیات مناسب
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: yellow1,
        fixedSize: Size(MediaQuery.of(context).size.width * 0.832,MediaQuery.of(context).size.height * 0.107 ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(70),
        ),
      ),
      child: Text(
        text,
        style:  TextStyle(
          fontSize: screenHeight * 0.03,
          fontFamily: 'Poppins',
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
