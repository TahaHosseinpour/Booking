import 'package:flutter/material.dart';
import 'package:booking/Information/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Container Height Example',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          // centerTitle: true,
            toolbarHeight: 92,
            title: Container(
              padding: EdgeInsets.all(0),
            margin: EdgeInsets.all(0),
            // padding: EdgeInsets.only(top: 41,left:30,right: 30 ),
            child: Row(
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
                      )),
                ),
                SvgPicture.asset(
                  'assets/images/menu.svg',
                  height: 50,
                  width: 50,
                )
              ],
            ),
          )
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Add Search Box
            TextField(decoration: new InputDecoration(
                icon: Icon(Icons.search),
              // SvgPicture.asset(
              //   'assets/images/search.svg',
              //   height: 35.16,
              //   width: 35.23,
              //   color: grey1,
              // ),
              labelText: "Explore",
              labelStyle: TextStyle(
                fontSize: 25,
                fontFamily: 'Poppins',
                color: grey1
              )
            ),)
          ],
        ),
        bottomNavigationBar: buildNavigationBar(),
      ),
    );
  }

  Container buildNavigationBar() {
    return Container(
        color: green2,
        padding: EdgeInsets.only(top: 23.98,bottom: 23.98),
        child : Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(
              'assets/images/ticket.svg',
              height: 34.03,
              width: 33.23,
              color: Colors.white,
            ),
            SvgPicture.asset(
              'assets/images/home.svg',
              height: 38.93,
              width: 38.41,
              color: green3,
            ),
            SvgPicture.asset(
              'assets/images/setting.svg',
              height: 34.0,
              width: 29.75,
              color: Colors.white,
            ),
          ],
        ),
      );
  }
}
