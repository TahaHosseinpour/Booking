import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:booking/Information/widgets.dart';
import 'package:booking/Information/colors.dart';
import 'package:booking/Sign in Page/log_in_tab.dart';
import 'package:booking/Sign in Page/tab_button.dart';




class SignIn extends StatefulWidget{
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Widget? tab;
  @override
  void initState(){
    super.initState();
    tab = LogInTab();
  }
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    TabButton SignInSignUp = TabButton(leftText: "Log In", rightText: "Sign Up", height: screenHeight * 0.076);
    SignInSignUp.fontSize = 30;
    SignInSignUp.fontWeight = FontWeight.w400;




    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sign In Page",
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/sign_in.png',
              width: screenWidth,
               height: screenHeight * 0.436,
              fit: BoxFit.fill,
            ),
            Container(
              //height: screenHeight * 0.043,
              width: screenWidth * 0.546,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: SvgPicture.asset(
                        'assets/images/google_logo.svg',
                      width: screenWidth * 0.093,
                      height: screenHeight * 0.042,
                    ),
                  ),
                  InkWell(
                    child: SvgPicture.asset(
                        'assets/images/facebook_logo.svg',
                      width: screenWidth * 0.093,
                      height: screenHeight * 0.042,
                    ),
                  ),
                  InkWell(
                    child: SvgPicture.asset(
                        'assets/images/twitter_logo.svg',
                      width: screenWidth * 0.093,
                      height: screenHeight * 0.042,
                    ),
                  ),
                  InkWell(
                    child: SvgPicture.asset(
                        'assets/images/driblle_logo.svg',
                      width: screenWidth * 0.093,
                      height: screenHeight * 0.042,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: screenHeight * 0.04,),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  width: screenWidth * 0.832,
                  height: screenHeight * 0.461,
                  color: grey3,
                  child: Column(
                    children: [
                      SignInSignUp,
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}