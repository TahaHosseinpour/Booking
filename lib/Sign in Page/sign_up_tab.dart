import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';

import 'package:booking/Information/colors.dart';
import 'package:booking/Information/widgets.dart';
import 'package:booking/Main Page/main_page.dart';
import 'package:booking/Database/user.dart';
import 'package:booking/Database/transaction.dart';
import 'package:booking/Database/ticket.dart';
import 'package:booking/ServerMethods/userToJson.dart';

class SignUpTab extends StatefulWidget{
  const SignUpTab({super.key});

  @override
  State<SignUpTab> createState() => _SignUpTabState();
}
final RegExp passwordRegex = RegExp(
  r'^(?=.*[aA].*[aA]|.*[01]{1})[A-Za-z\d]{8,}$',
);
final RegExp emailRegex = RegExp(
  r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,}$'
  ,
);


class _SignUpTabState extends State<SignUpTab> {

  String usernameError = "";
  String passwordError = "";
  String emailError = "";

  bool isUsernameValid = false;
  bool isPasswordValid = false;
  bool isEmailValid = false;
  //Controllers
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();


  @override
  Widget build(context){
    final contextWidth = MediaQuery.of(context).size.width;
    final contextHeight = MediaQuery.of(context).size.height;

    User currentUser;



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
              //height: contextHeight * 0.237,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              border: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(198, 198, 198, 1),
                                  width: 0.5,
                                ),
                              ),
                              hintText: "must hava two character",
                              hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: contextHeight * 0.0139,
                                color: const Color.fromARGB(255, 135, 135, 135),
                              ),
                              labelText: "Username",
                              labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: contextHeight * 0.016,
                                color: const Color.fromARGB(255, 135, 135, 135),
                              )
                          ),
                        ),
                        //SizedBox(height: contextHeight * 0.007,),
                        Text(
                          usernameError,
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
                          controller: _passwordController,
                          decoration:  InputDecoration(
                              border: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(198, 198, 198, 1),  // رنگ بوردر پایینی
                                  width: 0.5,  // عرض بوردر پایینی
                                ),
                              ),
                              hintText: "must hava two character",
                              hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: contextHeight * 0.0139,
                                color: const Color.fromARGB(255, 135, 135, 135),
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
                       //SizedBox(height: contextHeight * 0.007,),
                        Text(
                          passwordError,
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
                   // height: contextHeight * 0.079,
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
                          controller: _emailController,
                          decoration:  InputDecoration(
                              border: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(198, 198, 198, 1),  // رنگ بوردر پایینی
                                  width: 0.5,  // عرض بوردر پایینی
                                ),
                              ),
                              hintText: "must hava two character",
                              hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: contextHeight * 0.013,
                                color: const Color.fromARGB(255, 135, 135, 135),
                              ),
                              labelText: "Email",
                              labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: contextHeight * 0.016,
                                color: const Color.fromARGB(255, 135, 135, 135),
                              )
                          ),
                        ),
                        //SizedBox(height: contextHeight * 0.007,),
                        Text(
                          emailError,
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
                ],
              ),
            ),
            SizedBox(
              height: contextHeight * 0.107,
              width: contextWidth *  0.832,
              child: InkWell(
                child: buttonContainer("Submit",contextHeight , contextWidth),
                onTap: () {
                  setState((){
                    isUsernameValid = !(_usernameController.text == "");
                    isPasswordValid = passwordRegex.hasMatch(_passwordController.text);
                    isEmailValid = emailRegex.hasMatch(_emailController.text);
                  });
                  setState(()  {
                    if(!isUsernameValid){
                      usernameError = "Username not Valid";
                    }
                    if(!isPasswordValid){
                      passwordError = "Password not Valid";
                    }
                    if(!isEmailValid){
                      emailError = "Email not Valid";
                    }
                    if(isUsernameValid && isPasswordValid && isEmailValid){

                      currentUser = User(
                          username: _usernameController.text,
                          password: _passwordController.text,
                          email: _emailController.text,
                          avatarPath: "assets/images/avatars/default_avatar.png",
                          phone: "Null",
                          id: "Null",
                          birthday: "Null",
                          walletBalance: "0",
                        transactionsList: [],
                        ticketsList: []
                      );

                      // createUser(context,currentUser);


                    }
                  });
                  setState(() {
                    if(isUsernameValid){
                      usernameError = "";
                    }
                    if(isPasswordValid){
                      passwordError = "";
                    }
                    if(isEmailValid){
                      emailError = "";
                    }
                  });
                  // print(isUsernameValid);
                  // print(isPasswordValid);
                  // print(isEmailValid);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}


Future<bool> createUser(User user) async {
  //request to server and add user to usersList in Database
  bool result = false;
  Map<String, dynamic> jsonRequest = {
    'requestType': "createUser",
    'requestData': userToJson(user),
  };

  String jsonString = json.encode(jsonRequest);
  List<int> bytes = utf8.encode(jsonString);

  await Socket.connect('192.168.1.9',8000).then((serverSocket) async{
    serverSocket.encoding = utf8;
    serverSocket.add(bytes);
    await serverSocket.flush();


    // serverSocket.listen((socket) {
    //   print(String.fromCharCodes(socket));
    //   print("data gotten");
    // });
    String receivedData = "";
    await serverSocket.listen(
          (List<int> data) {
        receivedData += utf8.decode(data);
      },
      onDone: () {
        Map<String, dynamic> jsonData = json.decode(receivedData);
        result = jsonData["result"];
        print(result);
      },
      onError: (error) {
        result = false;
      },
    );

    serverSocket.close();
  });

  return result;
}