import 'package:booking/Information/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class PersonalEditingBox extends StatefulWidget{
  @override
  State<PersonalEditingBox> createState() => _PersonalEditingBoxState();
}

final RegExp phoneRegex = RegExp(
  r'^(?=.*[aA].*[aA]|.*[01]{1})[A-Za-z\d]{8,}$',
);
final RegExp idRegex = RegExp(
  r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,}$'
  ,
);
final RegExp birthdayRegex = RegExp(
  r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,}$'
  ,
);
class _PersonalEditingBoxState extends State<PersonalEditingBox> {
  String phoneError = "";
  String idError = "";
  String birthdayError = "";

  bool isPhoneValid = false;
  bool isIdValid = false;
  bool isBirthdayValid = false;
  //Controllers
  final _phoneController = TextEditingController();
  final _idController = TextEditingController();
  final _birthdayController = TextEditingController();

  bool Ok(){
      setState(() {
        isPhoneValid = phoneRegex.hasMatch(_phoneController.text);
        isIdValid = idRegex.hasMatch(_idController.text);
        isBirthdayValid = birthdayRegex.hasMatch(_birthdayController.text);
      });
      if(isPhoneValid && isIdValid && isBirthdayValid){
        return true;
      }else{
        setState(() {
          if(!isPhoneValid){
            phoneError = "Phone not Valid";
          }
          if(!isIdValid){
            idError = "ID not Valid";
          }
          if(!isBirthdayValid){
            birthdayError = "Birthday not Valid";
          }
        });
        return false;
      }
  }
  Widget build(context){
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
          height: screenHeight * 0.040,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: screenHeight * 0.03,
                child: FittedBox(
                  child:  Text("Phone",
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
                            hintText: "11 Digit Starts wiht 0",
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

            ]
          ),

        ),
        Container(
          height: screenHeight * 0.040,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: screenHeight * 0.03,
                  child: FittedBox(
                    child:  Text("ID",
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
                          controller: _idController,
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
                            hintText: "Only Numbers",
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
                            "Error",
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

              ]
          ),

        ),
        Container(
          height: screenHeight * 0.040,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: screenHeight * 0.03,
                  child: FittedBox(
                    child:  Text("Birthday",
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
                            hintText: "Like 95.11.08",
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
                            "Error",
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

              ]
          ),

        ),
      ]
    );
  }
}

