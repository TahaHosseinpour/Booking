import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:io';
import 'dart:convert';


import 'package:booking/Information/colors.dart';
import 'package:booking/Information/widgets.dart';
import 'package:booking/Database/user.dart';
import 'package:booking/Main Page/main_page.dart';

import '../ServerMethods/parseUserFromJson.dart';

class LogInTab extends StatefulWidget{
  static User result = usersList.first;
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
                              border: const UnderlineInputBorder(
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
                                color: const Color.fromARGB(255, 135, 135, 135),
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
                onTap: () async{
                  checkPasswordAndUsername(_usernameController.text, _passwordController.text).then((currentUser) {
                    if(currentUser != usersList.first){
                      // ignore: use_build_context_synchronously
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainPage(currentUser: currentUser)),
                      );
                    }else{
                      setState(() {
                        isUsernameValid = false;
                        isPasswordValid = false;
                      });
                    }
                  });

                }
              ),
            )
          ],
        ),
      ),
    );
  }
  Future<User> checkPasswordAndUsername(String username,String password) async{

    print("checkPasswordAnd Username");
    //request to server and chceck is username exist? or is password correct?
    User result = LogInTab.result;
    Map<String, dynamic> requestDataMap = {
      'username': username,
      'password': password,
    };
    Map<String, dynamic> jsonRequest = {
      'requestType': "checkPasswordAndUsername",
      'requestData': json.encode(requestDataMap),
    };

    String jsonString = json.encode(jsonRequest);
    List<int> bytes = utf8.encode(jsonString);


    // تاخیر زمانی 3 ثانیه
    await Future.delayed(Duration(seconds: 5));

    await Socket.connect('192.168.1.9',8000).then((serverSocket) async {
      print("conected to server");
      serverSocket.encoding = utf8;
      serverSocket.add(bytes);
      await serverSocket.flush();

      String receivedData = "";
      await serverSocket.listen(
            (List<int> data) {
          receivedData += utf8.decode(data);
        },
        onDone: () {
          setState(() {
            LogInTab.result = parseUserFromJson(receivedData);
          });
          print(result.username);
          print(result.transactionsList[0].id);
          print(result.ticketsList[0].origin);
          print(result.ticketsList[1].departureTime);

        },
        onError: (error) {
          result = usersList.first;
        },
      );

      serverSocket.close();
    });

    print("user name result : " + result.username);
    return result;

  }
}


