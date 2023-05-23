import 'package:flutter/material.dart';
import 'package:booking/Information/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Container Height Example',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/avatar.png',
              height: 50,
                width: 50,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Text(
                  'Logo',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 35,
                      color: Colors.black
                  ),),
              ),
              SvgPicture.asset(
                  'assets/images/menu.svg',
                height: 50,
                  width: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
