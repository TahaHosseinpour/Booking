import 'package:booking/Information/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class AccountEditingBox extends StatefulWidget{

  @override
  State<AccountEditingBox> createState() => _AccountEditingBoxState();
}

class _AccountEditingBoxState extends State<AccountEditingBox> {
  Widget build(context){
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
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
              Container(
                height: screenHeight * 0.040,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: screenWidth * 0.348,
                      height: screenHeight * 0.020,
                      child: TextField(
                        // controller: _phoneController,
                        style: TextStyle(
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
                    Container(
                      height: screenHeight * 0.020,
                      child: FittedBox(
                        child: Text(
                          ".",
                          style: const TextStyle(
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
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
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
              Container(
                height: screenHeight * 0.040,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: screenWidth * 0.348,
                      height: screenHeight * 0.020,
                      child: TextField(
                        // controller: _phoneController,
                        style: TextStyle(
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
                    Container(
                      height: screenHeight * 0.020,
                      child: FittedBox(
                        child: Text(
                          ".",
                          style: const TextStyle(
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
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
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
              Container(
                height: screenHeight * 0.040,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: screenWidth * 0.348,
                      height: screenHeight * 0.020,
                      child: TextField(
                        // controller: _phoneController,
                        style: TextStyle(
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
                    Container(
                      height: screenHeight * 0.020,
                      child: FittedBox(
                        child: Text(
                          ".",
                          style: const TextStyle(
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
        ),
      ],
    );
  }
}