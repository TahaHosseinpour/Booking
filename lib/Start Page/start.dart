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
            ),
            const Text(
              "LOGO",
              style: TextStyle(
                fontSize: 34,
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Booking Any Where",
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Flight , Train , Bus",
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
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
            const Text(
              "version 1.0",
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
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
        style: const TextStyle(
          fontSize: 28,
          fontFamily: 'Poppins',
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
