import 'package:flutter/material.dart';

import 'package:booking/Information/colors.dart';
import 'package:booking/Information/widgets.dart';


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
              height: contextHeight * 0.237,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: contextHeight * 0.079,
                    padding: EdgeInsets.only(left: contextWidth * 0.090 , right: contextWidth * 0.090),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          controller: _usernameController,
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(198, 198, 198, 1),
                                  width: 0.5,
                                ),
                              ),
                              hintText: "must hava two character",
                              hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Color.fromARGB(255, 135, 135, 135),
                              ),
                              labelText: "Username",
                              labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Color.fromARGB(255, 135, 135, 135),
                              )
                          ),
                        ),
                        Text(
                          usernameError,
                          style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(202, 44, 44, 1)
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: contextHeight * 0.079,

                    padding: EdgeInsets.only(left: contextWidth * 0.090 , right: contextWidth * 0.090),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          controller: _passwordController,
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(198, 198, 198, 1),  // رنگ بوردر پایینی
                                  width: 0.5,  // عرض بوردر پایینی
                                ),
                              ),
                              hintText: "must hava two character",
                              hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Color.fromARGB(255, 135, 135, 135),
                              ),
                              labelText: "Password",
                              labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Color.fromARGB(255, 135, 135, 135),
                              )
                          ),
                        ),
                        Text(
                          passwordError,
                          style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(202, 44, 44, 1)
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: contextHeight * 0.079,
                    padding: EdgeInsets.only(left: contextWidth * 0.090 , right: contextWidth * 0.090),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          controller: _emailController,
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(198, 198, 198, 1),  // رنگ بوردر پایینی
                                  width: 0.5,  // عرض بوردر پایینی
                                ),
                              ),
                              hintText: "must hava two character",
                              hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Color.fromARGB(255, 135, 135, 135),
                              ),
                              labelText: "Email",
                              labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Color.fromARGB(255, 135, 135, 135),
                              )
                          ),
                        ),
                        Text(
                          emailError,
                          style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(202, 44, 44, 1)
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
                child: buttonContainer("Submit",contextHeight * 0.107 , contextWidth),
                onTap: (){
                  setState(() {
                    isUsernameValid = !(_usernameController.text == "");
                    isPasswordValid = passwordRegex.hasMatch(_passwordController.text);
                    isEmailValid = emailRegex.hasMatch(_emailController.text);
                  });
                  setState(() {
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
                      print("next page");
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
                  print(isUsernameValid);
                  print(isPasswordValid);
                  print(isEmailValid);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
