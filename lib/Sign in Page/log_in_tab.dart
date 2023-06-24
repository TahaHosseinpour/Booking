import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:io';
import 'dart:convert';

import 'package:booking/Information/colors.dart';
import 'package:booking/Information/widgets.dart';
import 'package:booking/Database/user.dart';
import 'package:booking/Main Page/main_page.dart';

import '../ServerMethods/userToJson.dart';

class LogInTab extends StatefulWidget{
  const LogInTab({super.key});

  @override
  State<LogInTab> createState() => _LogInTabState();
}

class _LogInTabState extends State<LogInTab> {
  String usernameError = "username not found";
  String passwordError = "password incorrect";

  bool isUsernameValid = true;
  bool isPasswordValid = true;

  //Controllers
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(context){
    final contextWidth = MediaQuery.of(context).size.width;
    final contextHeight = MediaQuery.of(context).size.height;

    User currnetUser;


    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        height: contextHeight * 0.385,
        width: contextWidth * 0.828,
        color: grey3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              //height: contextHeight * 0.190,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    //height: contextHeight * 0.079,
                    padding: EdgeInsets.only(left: contextWidth * 0.090 , right: contextWidth * 0.090),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          style:  TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: contextHeight * 0.017,
                            fontWeight: FontWeight.w400,
                          ),
                          controller: _usernameController,
                          decoration:  InputDecoration(
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(198, 198, 198, 1),
                                  width: 0.5,
                                ),
                              ),
                              labelText: "Username",
                              labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: contextHeight * 0.016,
                                color: Color.fromARGB(255, 135, 135, 135),
                              )
                          ),
                        ),
                        SizedBox(height: contextHeight * 0.007,),
                        Text(
                          isUsernameValid ? "" : usernameError,
                          style:  TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: contextHeight * 0.011,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(202, 44, 44, 1)
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    //height: contextHeight * 0.079,

                    padding: EdgeInsets.only(left: contextWidth * 0.090 , right: contextWidth * 0.090),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          obscureText: true,
                          style:  TextStyle(

                           fontFamily: 'Poppins',
                            fontSize: contextHeight * 0.017,
                            fontWeight: FontWeight.w400,
                          ),
                          controller: _passwordController,
                          decoration: InputDecoration(
                              border: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(198, 198, 198, 1),
                                  width: 0.5,
                                ),
                              ),

                              labelText: "Password",
                              labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: contextHeight * 0.016,
                                color: const Color.fromARGB(255, 135, 135, 135),
                              )
                          ),
                        ),
                        SizedBox(height: contextHeight * 0.007,),
                        Text(
                          isPasswordValid ? "" : passwordError,
                          style:  TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: contextHeight * 0.011,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(202, 44, 44, 1)
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: contextWidth * 0.090 , right: contextWidth * 0.090),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Forgot My Password',
                            style:  TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: contextHeight * 0.016,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                              color: const Color.fromRGBO(93, 154, 224, 1),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('forgot password');
                              },
                          ),
                        ],
                      ),
                    ),
                  )

                ],
              ),
            ),
            SizedBox(
              height: contextHeight * 0.107,
              width: contextWidth *  0.832,
              child: InkWell(
                child: buttonContainer("Submit",contextHeight , contextWidth),
                onTap: (){
                  late User currentUser = checkPasswordAndUsername(_usernameController.text,_passwordController.text);
                  if(currentUser != null){
                    socketTest(context, currentUser);
                  }else{
                    setState(() {
                      isUsernameValid = false;
                      isPasswordValid = false;
                    });
                  }
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}

User checkPasswordAndUsername(String username,String password){
  //request to server and chceck is username exist? or is password correct?
  return usersList.first;
}

void socketTest(context,User user) async {
  //request to server and add user to usersList in Database
  print("in create user");
  Map<String, dynamic> jsonRequest = {
    'requestType': "createUser",
    'requestData': userToJson(user),
  };
  print("jsonRequest created");
  await Socket.connect('192.168.1.9',8080).then((serverSocket) {
    print("socket connected");
    serverSocket.write(jsonRequest.toString());
    print("data write");

    serverSocket.flush();
    print("data flush");
  });
  print("next page");
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MainPage(currentUser: user,)),
  );
}