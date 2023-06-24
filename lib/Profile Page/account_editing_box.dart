import 'package:booking/Information/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:booking/Database/user.dart';


class AccountEditingBox extends StatefulWidget{

  final Function(String,String,String) onAccountBox;
  User currettUser;

  AccountEditingBox({required this.currettUser, required this.onAccountBox});

  @override
  State<AccountEditingBox> createState() => _AccountEditingBoxState();
}

class _AccountEditingBoxState extends State<AccountEditingBox> {




  late String username = widget.currettUser.username;
  late String password = widget.currettUser.password;
  late String email = widget.currettUser.email;

  @override
  Widget build(context){
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: screenHeight * 0.03,
              child: FittedBox(
                child:  Text("Username",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color:green3,
                  ),
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
                      onChanged: (value){
                        setState(() {
                          username = value;
                        });
                      },
                      style: const TextStyle(
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color:Colors.black,
                      ),
                      decoration: const InputDecoration(
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
                          fontSize: 13,
                          color: Color.fromARGB(255, 135, 135, 135),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.020,
                    child: const FittedBox(
                      child: Text(
                        ".",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(202, 44, 44, 1)
                        ),
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
              child: FittedBox(
                child:  Text("Password",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color:green3,
                  ),
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
                      onChanged: (value){
                        setState(() {
                          password = value;
                        });
                      },
                      style: const TextStyle(
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color:Colors.black,
                      ),
                      decoration: const InputDecoration(
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
                          fontSize: 13,
                          color: Color.fromARGB(255, 135, 135, 135),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.020,
                    child: const FittedBox(
                      child: Text(
                        ".",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(202, 44, 44, 1)
                        ),
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
              child: FittedBox(
                child:  Text("Email",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color:green3,
                  ),
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
                      onChanged: (value){
                        setState(() {
                          email = value;
                        });
                      },
                      style: const TextStyle(
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color:Colors.black,
                      ),
                      decoration: const InputDecoration(
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
                          fontSize: 13,
                          color: Color.fromARGB(255, 135, 135, 135),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.020,
                    child: const FittedBox(
                      child: Text(
                        ".",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(202, 44, 44, 1)
                        ),
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
  }
}