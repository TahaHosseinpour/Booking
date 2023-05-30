import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:booking/Information/colors.dart';
Container ticket(){
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
    ),
    width: 358,
    height: 212,
    child: Column(
      children: [
        Container(
          height: 30,
          margin: EdgeInsets.only(top: 12),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: const Text("Fly Emirates",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Colors.black,
                      decoration: TextDecoration.none

                  ),
                ),
              ),
              SizedBox(width: 6,),
              Container(
                child: SvgPicture.asset('assets/images/ticket_icon.svg',
                  height: 30,
                  width: 30,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 24,),
        Container(
          height: 61,
          width: 334,
          padding: EdgeInsets.only(bottom: 10),
          child: Column(
            children: [
              Container(
                height: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // height: 20,
                      margin: EdgeInsets.only(left: 14),
                      alignment: Alignment.centerLeft,
                      child: Text('SYD',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            color: grey2,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none
                        ),
                      ),
                    ),
                    Container(
                      // height: 20,
                      margin: EdgeInsets.only(right: 14),
                      alignment: Alignment.centerRight,
                      child: Text('LCY',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            color:grey2,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none

                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 31,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // height: 21,
                      margin: const EdgeInsets.only(left: 14),
                      alignment: Alignment.centerLeft,
                      child: const Text('18:50',
                        style: TextStyle(
                            fontSize: 28,
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none

                        ),
                      ),
                    ),
                    Container(
                      // height: 21,
                      child: Text("3h 20min",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            color: grey2,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none

                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 14),
                      // height: 21,
                      alignment: Alignment.centerRight,
                      child: const Text('22:10',
                        style: TextStyle(
                            fontSize: 28,
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none

                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
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
              padding: EdgeInsets.only(top: 2),
              width: 75,
              height: 17,
              decoration: BoxDecoration(
                color: yellow1,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text('Business Class',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 9,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.none

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
                    color: Colors.black,
                    decoration: TextDecoration.none

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
                      decoration: TextDecoration.none

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