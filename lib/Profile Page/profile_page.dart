import 'package:booking/Information/buildBottomNavigationBar.dart';
import 'package:booking/Information/wallet.dart';
import 'package:booking/Information/widgets.dart';
import 'package:booking/Profile%20Page/personal_static_box.dart';
import 'package:booking/Profile%20Page/shapes_painter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:booking/Profile Page/personal_editing_box.dart';
import 'package:booking/Database/user.dart';
import 'dart:io';
import 'dart:convert';

import '../Information/colors.dart';
import 'package:booking/global.dart';


class ProfilePage extends StatefulWidget{

  User currentUser;
  static bool accountResult = false;
  static bool personalResult = false;
  ProfilePage({super.key , required this.currentUser});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _idController = TextEditingController();
  TextEditingController _birthdayController = TextEditingController();

  bool isPersonalEditing = false;
  bool isAccountEditing = false;
  bool isPasswordVisible = false;


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


    Widget accountEditingBox = Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: screenHeight * 0.03,
                child:  Text("Username",
                  style: TextStyle(
                    fontSize: screenHeight * 0.021,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color:green3,
                  ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.040,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: screenWidth * 0.348,
                    height: screenHeight * 0.020,
                    child:  TextField(
                      controller: _usernameController,
                      // onChanged: (value){
                      //   if(changeUsername(widget.currentUser, value)){
                      //     setState(() {
                      //       widget.currentUser.username = value;
                      //     });
                      //   }
                      // },
                      style: TextStyle(
                        fontSize: screenHeight * 0.019,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color:Colors.black,
                      ),
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(198, 198, 198, 1),
                            width: 0.5,
                          ),
                        ),
                        hintText: "every thing",
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: screenHeight * 0.014,
                          color: Color.fromARGB(255, 135, 135, 135),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.020,
                      child: Text(
                        ".",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: screenHeight * 0.012,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(202, 44, 44, 1)
                        ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: screenHeight * 0.03,
                child:  Text("Password",
                  style: TextStyle(
                    fontSize: screenHeight * 0.021,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color:green3,
                  ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.040,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: screenWidth * 0.348,
                    height: screenHeight * 0.020,
                    child: TextField(
                      controller: _passwordController,
                      style: TextStyle(
                        fontSize: screenHeight * 0.019,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color:Colors.black,
                      ),
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(198, 198, 198, 1),
                            width: 0.5,
                          ),
                        ),
                        hintText: "at least 8 character",
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: screenHeight * 0.014,
                          color: Color.fromARGB(255, 135, 135, 135),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.020,
                      child: Text(
                        ".",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: screenHeight * 0.012,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(202, 44, 44, 1)
                        ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: screenHeight * 0.03,
                child:  Text("Email",
                  style: TextStyle(
                    fontSize: screenHeight * 0.021,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color:green3,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.040,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: screenWidth * 0.348,
                    height: screenHeight * 0.020,
                    child:  TextField(
                      controller: _emailController,
                      // onChanged: (value){
                      //   setState(() {
                      //     widget.currentUser.email = value;
                      //
                      //   });
                      //
                      // },
                      style: TextStyle(
                        fontSize: screenHeight * 0.012,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color:Colors.black,
                      ),
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(198, 198, 198, 1),
                            width: 0.5,
                          ),
                        ),
                        hintText: "contain @ and . after @",
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: screenHeight * 0.014,
                          color: Color.fromARGB(255, 135, 135, 135),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.020,
                      child: Text(
                        ".",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: screenHeight * 0.012,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(202, 44, 44, 1)
                        ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );

    Widget accountStaticBox = Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding:  EdgeInsets.only(bottom: screenHeight * 0.010),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: screenHeight * 0.03,
                  child:  Text("Username",
                    style: TextStyle(
                      fontSize: screenHeight * 0.021,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color:green3,
                    ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.025,
                child:  Text(widget.currentUser.username,
                    style: TextStyle(
                      fontSize: screenHeight * 0.021,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(bottom: screenHeight * 0.010),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: screenHeight * 0.03,
                  child:  Text("Password",
                    style: TextStyle(
                      fontSize: screenHeight * 0.021,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color:green3,
                    ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: screenHeight * 0.025,
                      child: Text( isPasswordVisible? widget.currentUser.password : "*********",
                        style: TextStyle(
                          fontSize: screenHeight * 0.021,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.03,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });

                    },
                    child: Container(
                      //height: screenHeight * 0.025,
                      alignment: Alignment.topCenter,
                      child: SvgPicture.asset('assets/images/visible.svg',
                        width: screenWidth * 0.07,
                        height: screenHeight * 0.016,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: screenHeight * 0.03,
                child:  Text("Email",
                  style: TextStyle(
                    fontSize: screenHeight * 0.021,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color:green3,
                  ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.025,
                child:  Text(widget.currentUser.email,
                  style: TextStyle(
                    fontSize: screenHeight * 0.021,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
              ),
            ),
          ],
        ),
      ],
    );

    Widget personalEditingBox = Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: screenHeight * 0.03,
                child:  Text("Phone",
                  style: TextStyle(
                    fontSize: screenHeight * 0.021,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color:green3,
                  ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.040,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: screenWidth * 0.348,
                    height: screenHeight * 0.020,
                    child:  TextField(
                      controller: _phoneController,
                      // onChanged: (value){
                      //   if(changeUsername(widget.currentUser, value)){
                      //     setState(() {
                      //       widget.currentUser.username = value;
                      //     });
                      //   }
                      // },
                      style: TextStyle(
                        fontSize: screenHeight * 0.019,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color:Colors.black,
                      ),
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(198, 198, 198, 1),
                            width: 0.5,
                          ),
                        ),
                        hintText: "11 Digit Start With 0",
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: screenHeight * 0.014,
                          color: Color.fromARGB(255, 135, 135, 135),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.020,
                      child: Text(
                        ".",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: screenHeight * 0.012,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(202, 44, 44, 1)
                        ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: screenHeight * 0.03,
                child:  Text("Password",
                  style: TextStyle(
                    fontSize: screenHeight * 0.021,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color:green3,
                  ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.040,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: screenWidth * 0.348,
                    height: screenHeight * 0.020,
                    child: TextField(
                      controller: _idController,
                      style: TextStyle(
                        fontSize: screenHeight * 0.019,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color:Colors.black,
                      ),
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(198, 198, 198, 1),
                            width: 0.5,
                          ),
                        ),
                        hintText: "Only Numbers",
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: screenHeight * 0.014,
                          color: Color.fromARGB(255, 135, 135, 135),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.020,
                      child: Text(
                        ".",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: screenHeight * 0.012,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(202, 44, 44, 1)
                        ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: screenHeight * 0.03,
                child:  Text("Birthday",
                  style: TextStyle(
                    fontSize: screenHeight * 0.021,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color:green3,
                  ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.040,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: screenWidth * 0.348,
                    height: screenHeight * 0.020,
                    child:  TextField(
                      controller: _birthdayController,

                      style: TextStyle(
                        fontSize: screenHeight * 0.019,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color:Colors.black,
                      ),
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(198, 198, 198, 1),
                            width: 0.5,
                          ),
                        ),
                        hintText: "Like 09.11.08",
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: screenHeight * 0.014,
                          color: Color.fromARGB(255, 135, 135, 135),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.020,
                    child: Text(
                        ".",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: screenHeight * 0.012,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(202, 44, 44, 1)
                        ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );

    Widget personalStaticBox = Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding:  EdgeInsets.only(bottom: screenHeight * 0.010),
          child: Row(
            children: [
              SizedBox(
                height: screenHeight * 0.03,
                  child:  Text("Phone",
                    style: TextStyle(
                      fontSize: screenHeight * 0.021,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color:green3,
                    ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.025,
                  child:  Text(widget.currentUser.phone,
                    style: TextStyle(
                      fontSize: screenHeight * 0.021,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(bottom: screenHeight * 0.010),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: screenHeight * 0.03,
                  child:  Text("ID",
                    style: TextStyle(
                      fontSize: screenHeight * 0.021,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color:green3,
                    ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: screenHeight * 0.025,
                      child:  Text(widget.currentUser.id,
                        style: TextStyle(
                          fontSize: screenHeight * 0.021,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: screenHeight * 0.03,
                child:  Text("Birthday",
                  style: TextStyle(
                    fontSize: screenHeight * 0.021,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color:green3,
                  ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.025,
                child:  Text(widget.currentUser.birthday,
                  style: TextStyle(
                    fontSize: screenHeight * 0.021,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
              ),
            ),
          ],
        ),
      ],
    );


    Widget personalColumn = isPersonalEditing ? personalEditingBox : personalStaticBox;
    Widget accountColumn = isAccountEditing ? accountEditingBox : accountStaticBox;

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
                      padding: EdgeInsets.only(right: screenWidth * 0.14, left: screenWidth * 0.08,top: screenHeight * 0.012 ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: Image.asset('assets/images/profile_edit.png',
                            height: screenWidth * 0.302,
                              width: screenWidth * 0.302,
                            ),
                          ),
                          SizedBox(
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
                  child:  Text("Account",
                    style: TextStyle(
                      fontSize: screenHeight * 0.031,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                ),
            ),
            Container(
              padding: EdgeInsets.only(top: screenHeight * 0.011, bottom: screenHeight * 0.011, right: screenWidth * 0.06, left: screenWidth * 0.03 ),
              width: screenWidth * 0.83 ,
              height: screenHeight * 0.187,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenHeight * 0.027),
                color: grey3,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  accountColumn,
                  InkWell(
                    child:  Container(
                      alignment: Alignment.centerRight,
                      child: SvgPicture.asset(accountIcon,
                        width: screenHeight * 0.042,
                        height: screenHeight * 0.042,
                      ),
                    ),
                    onTap: () async{
                      if(isAccountEditing){
                        String usr = (_usernameController.text != "") ? _usernameController.text : widget.currentUser.username;
                        String pas = (_passwordController.text != "") ? _passwordController.text : widget.currentUser.password;
                        String eml = (_emailController.text != "") ? _emailController.text : widget.currentUser.email;

                        changeAccountInformation(widget.currentUser, usr , pas, eml).then((isAccountInformationChanged) {
                          if(isAccountInformationChanged){
                            setState(() {
                              widget.currentUser.username = usr;
                              widget.currentUser.password = pas;
                              widget.currentUser.email = eml;
                            });
                            print("username : ${widget.currentUser.username} , password : ${widget.currentUser.password}, email : ${widget.currentUser.email}");
                          }
                        });
                      }
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
              child: const FittedBox(
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
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: SvgPicture.asset(personalIcon,
                        width: screenHeight * 0.042,
                        height: screenHeight * 0.042,
                      ),
                    ),
                    onTap: () async{
                      if(isPersonalEditing){
                        String phn = (_phoneController.text != "") ? _phoneController.text : widget.currentUser.phone;
                        String idd = (_idController.text != "") ? _idController.text : widget.currentUser.id;
                        String brt = (_birthdayController.text != "") ? _birthdayController.text : widget.currentUser.birthday;
                        changePersonalInformation(widget.currentUser, phn, idd, brt).then((isPersonalInformationChanged){
                          if(isPersonalInformationChanged){
                            setState(() {
                              widget.currentUser.phone = phn;
                              widget.currentUser.id = idd;
                              widget.currentUser.birthday = brt;
                            });
                            print("phone : ${widget.currentUser.phone} , id : ${widget.currentUser.id} , birthday : ${widget.currentUser.birthday}");
                          }
                        });


                      }
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
                   child: const FittedBox(
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
  Future<bool> changeAccountInformation(User user,String newUsername , String newPassword , String newEmail) async{
    //request to server and change username of user. if change was successful , returns true else returns false
    bool result = ProfilePage.accountResult;

    Map<String, dynamic> requestDataMap = {
      'username': user.username,
      'newUsername': newUsername,
      'newPassword': newPassword,
      'newEmail': newEmail,
    };
    Map<String, dynamic> jsonRequest = {
      'requestType': "changeAccountInformation",
      'requestData': json.encode(requestDataMap),
    };

    String jsonString = json.encode(jsonRequest);
    List<int> bytes = utf8.encode(jsonString);

    await Socket.connect(Global.ip,Global.port).then((serverSocket) async{
      serverSocket.encoding = utf8;
      serverSocket.add(bytes);
      await serverSocket.flush();

      String receivedData = "";
      await serverSocket.listen(
            (List<int> data) {
          receivedData += utf8.decode(data);
        },
        onDone: () {
          Map<String, dynamic> jsonData = json.decode(receivedData);
          setState(() {
            ProfilePage.accountResult = jsonData["result"];
          });

        },
        onError: (error) {
          ProfilePage.accountResult = false;
        },
      );

      serverSocket.close();
    });

    return result;
  }



  Future<bool> changePersonalInformation(User user,String newPhone, String newId, String newBirthday) async{
    //request to server and change username of user. if change was successful , returns true else returns false
    bool result = ProfilePage.personalResult;

    Map<String, dynamic> requestDataMap = {
      'username': user.username,
      'newPhone': newPhone,
      'newId': newId,
      'newBirthday': newBirthday,
    };
    Map<String, dynamic> jsonRequest = {
      'requestType': "changePersonalInformation",
      'requestData': json.encode(requestDataMap),
    };

    String jsonString = json.encode(jsonRequest);
    List<int> bytes = utf8.encode(jsonString);

    await Socket.connect(Global.ip,Global.port).then((serverSocket) async{
      serverSocket.encoding = utf8;
      serverSocket.add(bytes);
      await serverSocket.flush();

      String receivedData = "";
      await serverSocket.listen(
            (List<int> data) {
          receivedData += utf8.decode(data);
        },
        onDone: () {
          Map<String, dynamic> jsonData = json.decode(receivedData);
          setState(() {
            ProfilePage.personalResult = jsonData["result"];
          });

        },
        onError: (error) {
          ProfilePage.personalResult = false;
        },
      );

      serverSocket.close();
    });

    return result;
  }
}




