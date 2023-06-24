import 'package:booking/Information/buildBottomNavigationBar.dart';
import 'package:booking/Information/wallet.dart';
import 'package:booking/Information/widgets.dart';
import 'package:booking/Profile%20Page/account_static_box.dart';
import 'package:booking/Profile%20Page/personal_static_box.dart';
import 'package:booking/Profile%20Page/shapes_painter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:booking/Profile Page/personal_editing_box.dart';
import 'package:booking/Profile Page/account_editing_box.dart';
import 'package:booking/Database/user.dart';

import '../Information/colors.dart';

class ProfilePage extends StatefulWidget{

  User currentUser;
  ProfilePage({super.key , required this.currentUser});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isPersonalEditing = false;
  bool isAccountEditing = false;

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
    Widget personalEditing = PersonalEditingBox();
    Widget personalColumn = isPersonalEditing ? personalEditing : PersonalStaticBox(phone: widget.currentUser.phone,id: widget.currentUser.id,birthday: widget.currentUser.birthday,);
    Widget accountColumn = isAccountEditing ? AccountEditingBox() : AccountStaticBox(username: widget.currentUser.username,password: widget.currentUser.password,email: widget.currentUser.email,);

    String personalIcon = isPersonalEditing ? "assets/images/tick.svg" : "assets/images/edit.svg";
    String accountIcon = isAccountEditing ? "assets/images/tick.svg" : "assets/images/edit.svg";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomPaint(
              painter: ShapesPainter(),
              child: Container(
                padding: EdgeInsets.only(bottom: screenHeight * 0.032),
                width: screenWidth,
                height: screenHeight * 0.37,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: screenWidth * 0.08, left: screenWidth * 0.08,top: screenHeight * 0.012 ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: Container(
                              child: Image.asset('assets/images/profile_edit.png',
                              height: screenWidth * 0.302,
                                width: screenWidth * 0.302,
                              ),
                            ),
                          ),
                          Container(
                            height: screenHeight * 0.048,
                            child: FittedBox(
                              child:  Text(widget.currentUser.username,
                                style: TextStyle(
                                  fontSize: screenHeight * 0.032,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          )
                        ],
                      ),
                    ),
                    Wallet(currentUser: widget.currentUser,),
                  ],
                )
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: screenWidth * 0.1),
                alignment: Alignment.topLeft,
                height: screenHeight * 0.045,
                child: FittedBox(
                  child:  Text("Account",
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
            ),
            Container(
              padding: EdgeInsets.only(top: screenHeight * 0.011, bottom: screenHeight * 0.011, right: screenWidth * 0.06, left: screenWidth * 0.03 ),
              width: screenWidth * 0.83 ,
              height: screenHeight * 0.187,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: grey3,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  accountColumn,
                  InkWell(
                    child:  Container(
                      alignment: Alignment.centerRight,
                      child: SvgPicture.asset(personalIcon,
                        width: screenHeight * 0.042,
                        height: screenHeight * 0.042,
                      ),
                    ),
                    onTap: (){
                      setState(() {
                        isAccountEditing = !isAccountEditing;
                      });
                    },
                  )
                ],
              ),
            ),



            Container(
              margin: EdgeInsets.only(left: screenWidth * 0.1),
              alignment: Alignment.topLeft,
              height: screenHeight * 0.045,
              child: FittedBox(
                child:  Text("Personal",
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: screenHeight * 0.011, bottom: screenHeight * 0.011, right: screenWidth * 0.06, left: screenWidth * 0.03 ),
              width: screenWidth * 0.83 ,
              height: screenHeight * 0.187,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: grey3,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  personalColumn,
                  InkWell(
                    child:  Container(
                      alignment: Alignment.centerRight,
                      child: SvgPicture.asset(personalIcon,
                        width: screenHeight * 0.042,
                        height: screenHeight * 0.042,
                      ),
                    ),
                    onTap: (){
                      setState(() {
                        isPersonalEditing = !isPersonalEditing;
                      });
                    },
                  )
                ],
              ),
            ),
           Container(
             margin: EdgeInsets.only(bottom: screenHeight * 0.02),
             padding: EdgeInsets.only(right: screenWidth * 0.14),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                   margin: EdgeInsets.only(left: screenWidth * 0.1),
                   alignment: Alignment.topLeft,
                   height: screenHeight * 0.04,
                   child:FittedBox(
                     child:  Text("Cantact Us",
                       style: TextStyle(
                         fontSize: 25,
                         fontFamily: 'Poppins',
                         fontWeight: FontWeight.w400,
                       ),
                     ),
                   ),
                 ),
                 Image.asset(
                     'assets/images/call.png',
                   height: screenWidth * 0.081,
                   width: screenWidth * 0.081,
                 ),
                 Image.asset(
                   'assets/images/internet.png',
                   height: screenWidth * 0.081,
                   width: screenWidth * 0.081,
                 ),
                 Image.asset(
                   'assets/images/mail.png',
                   height: screenWidth * 0.081,
                   width: screenWidth * 0.081,
                 ),
               ],
             ),
           ),
          ],
        ),
        bottomNavigationBar: BuildBottomNavigationBar(activeIcon: "profile",currentUser: widget.currentUser,)
      ),
    );
  }
}


