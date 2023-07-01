import 'package:booking/Information/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


  class AccountStaticBox extends StatefulWidget{

    String username;
    String password;
    String email;

    AccountStaticBox({
      required this.username,
      required this.password,
      required this.email
     });
  @override
  State<AccountStaticBox> createState() => _AccountStaticBoxState();
}

class _AccountStaticBoxState extends State<AccountStaticBox> {
    Widget build(context){
      final screenHeight = MediaQuery.of(context).size.height;
      final screenWidth = MediaQuery.of(context).size.width;

      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
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
                Container(
                  height: screenHeight * 0.025,
                    child:  Text(widget.username,
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
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
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
                Container(
                  // width: screenWidth * 0.16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: screenHeight * 0.025,
                          child:  Text(widget.password,
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
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
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
                Container(
                  height: screenHeight * 0.025,
                    child:  Text(widget.email,
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
        ],
      );
    }
}