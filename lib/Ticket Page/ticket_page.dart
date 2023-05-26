import 'package:booking/Start%20Page/start.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:booking/Information/colors.dart';
Container ticket(){
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
    ),
    margin: EdgeInsets.only(right: 33.5, left: 33.5),
    width: 363,
    height: 215,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 3),
              child: Text("Fly Emirates",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
              ),
              ),
            ),
            SizedBox(width: 5,),
            Container(
              margin: EdgeInsets.only(top: 3),
              child: SvgPicture.asset('assets/images/ticket_icon.svg',
              height: 30,
              width: 30,
              ),
            ),
          ],
        ),
        //SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 15.5),
              alignment: Alignment.centerLeft,
              child: Text('SYD',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Poppins',
                color: Color.fromARGB(255, 135, 135, 135)

              ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 15.5),
              alignment: Alignment.centerRight,
              child: Text('LCY',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    color: Color.fromARGB(255, 135, 135, 135)
                ),
              ),
            ),
          ],
        ),
        //SizedBox(height: 2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 15.5, ),
              alignment: Alignment.centerLeft,
              child: Text('18:50',
                style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'Poppins'
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 15.5, ),
              alignment: Alignment.centerRight,
              child: Text('22:10',
                style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'Poppins'
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text("3h 20min",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins'
                ),
              ),
            )
          ],
        ),


         Divider(
             color: yellow1,
             thickness: 1,
             height: 0,
             indent: 15.5,
           endIndent: 15.5,
           ),

        SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 15.5),
              width: 75,
              height: 17,
              decoration: BoxDecoration(
                color: yellow1,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text('Business Class',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontFamily: 'Poppins',
              ),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 3, left: 15.5),
              alignment: Alignment.centerLeft,
              child: Text("380\$",
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'Poppins',
              ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 3, right: 15.5),
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: (){

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: yellow1,
                  fixedSize: Size(152, 52),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70),
                  ),
                ),
                child: Text("Buy",
                style: TextStyle(
                  fontSize: 34,
                  fontFamily: 'Poppins',
                  color: Colors.black,
                ),
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
}