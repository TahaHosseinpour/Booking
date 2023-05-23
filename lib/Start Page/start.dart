import 'package:flutter/material.dart';
import 'package:booking/Information/colors.dart';

class start extends StatelessWidget {
  const start({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              child: Image.asset(
                "assets/images/earth.png",
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              "LOGO",
              style: TextStyle(
                fontSize: 34,
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "Booking Any Where",
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Flight , Train , Bus",
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: yellow1,
                  fixedSize: const Size(358, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70),
                  )),
              child: const Text(
                "Let's Start",
                style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 100,
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