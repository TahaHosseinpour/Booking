import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:booking/Information/colors.dart';
import 'package:booking/Information/widgets.dart';
import 'package:booking/Database/user.dart';
import 'package:booking/Search Page/search_page.dart';
import 'package:booking/Database/place.dart';
import 'package:booking/Information/buildBottomNavigationBar.dart';


class MainPage extends StatefulWidget {

  User currentUser;

  MainPage({required this.currentUser});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    String selectVehicle;


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Container Height Example',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          // centerTitle: true,
            toolbarHeight: screenHeight * 0.098,
            title: Container(
              padding: EdgeInsets.all(0),
            margin: EdgeInsets.all(0),
            // padding: EdgeInsets.only(top: 41,left:30,right: 30 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  widget.currentUser.avatarPath,
                  height: screenHeight * 0.053,
                  width: screenWidth * 0.11,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: screenHeight * 0.016),

                  child: Text(
                      'Logo',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: screenHeight * 0.037,
                          color: Colors.black
                      )),
                ),
                SvgPicture.asset(
                  'assets/images/menu.svg',
                  height: screenHeight * 0.053,
                  width: screenWidth * 0.11,
                )
              ],
            ),
          )
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: screenWidth * 0.1,right: screenWidth * 0.1),
              child: Column(
                children: [
                   Text("Hi Taha",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: screenHeight * 0.037,
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                    ),
                  ),
                  Text("Let's Go Travel",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: screenHeight * 0.037,
                        fontWeight: FontWeight.w400,
                        color: Colors.black
                    ),
                  ),
                ],
              ),
            ),
            //Add Search Box
            Container(
              padding: EdgeInsets.only(left: screenWidth * 0.1,right: screenWidth * 0.1),
              child: TextField(decoration: new InputDecoration(
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    size: screenHeight * 0.037,
                  ),
                  hintText: "Explore",
                  hintStyle: TextStyle(
                      fontSize: screenHeight * 0.026,
                      fontFamily: 'Poppins',
                      color: grey1
                  )
              ),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: screenHeight * 0.093,
                  width: screenWidth * 0.19,
                  padding:  EdgeInsets.only(top: screenHeight * 0.002,bottom: screenHeight * 0.004),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          width: 1,
                          color: green2
                      )
                  ),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        child: SvgPicture.asset(
                          'assets/images/bus.svg',
                          height: screenHeight * 0.064,
                          width: screenWidth * 0.11,
                        ),
                        onTap: (){
                          selectVehicle = "bus";
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SearchPage(currentUser: widget.currentUser, vehicle: selectVehicle,)),
                          );
                        },
                      ),
                      Container(
                        height: screenHeight * 0.019,
                        child:  Text("Bus",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: screenHeight * 0.016,
                              fontWeight: FontWeight.w600,
                              color: Colors.black
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: screenHeight * 0.093,
                  width: screenWidth * 0.19,
                  padding:  EdgeInsets.only(top: screenHeight * 0.008,bottom: screenHeight * 0.004),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1,
                      color: green2
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      InkWell(
                        child: SvgPicture.asset(
                          'assets/images/international.svg',
                          height: screenHeight * 0.053,
                          width: screenWidth * 0.11,
                          ),
                        onTap: (){
                          selectVehicle = "international";
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SearchPage(currentUser: widget.currentUser, vehicle: selectVehicle,)),
                          );
                        },
                      ),
                      Container(
                        height: screenHeight * 0.018,
                        child: Text("International",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: screenHeight * 0.011,
                              fontWeight: FontWeight.w600,
                              color: Colors.black
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: screenHeight * 0.093,
                  width: screenWidth * 0.19,
                  padding: EdgeInsets.only(top:screenHeight * 0.008 ,bottom: screenHeight * 0.004),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          width: 1,
                          color: green2
                      )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: SvgPicture.asset(
                          'assets/images/local.svg',
                          height: screenHeight * 0.053,
                          width: screenWidth * 0.11,
                        ),
                        onTap: (){
                          selectVehicle = "local";
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SearchPage(currentUser: widget.currentUser, vehicle: selectVehicle,)),
                          );
                        },
                      ),
                      Container(
                        height: screenHeight * 0.02,
                        child: Text("Local",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: screenHeight * 0.016,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: screenHeight * 0.093,
                  width: screenWidth * 0.19,
                  padding: EdgeInsets.only(top: screenHeight * 0.003,bottom: screenHeight * 0.005),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          width: 1,
                          color: green2
                      )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: SvgPicture.asset(
                          'assets/images/train.svg',
                          height: screenHeight * 0.06,
                          width: screenWidth * 0.11,
                        ),
                        onTap: (){
                          selectVehicle = "train";
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SearchPage(currentUser: widget.currentUser, vehicle: selectVehicle,)),
                          );
                        },
                      ),
                      Container(
                        height: screenHeight * 0.016,
                        child: Text("Train",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: screenHeight * 0.016,
                              fontWeight: FontWeight.w600,
                              color: Colors.black
                          ),
                        ),
                      )
                    ],
                  ),
                ),

              ],
            ),
            Container(
              padding: EdgeInsets.only(left:screenWidth * 0.06,right: screenWidth * 0.39),
              child: Text(
                "Recommended",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: screenHeight * 0.032,
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: screenHeight * 0.064,bottom:screenHeight * 0.032,left: screenWidth * 0.062),
              height: screenHeight * 0.39,
              color: green1,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: placesList.length,
                itemBuilder: (context, index) {
                  final item = placesList[index];
                  return buildPlaceItem(
                    screenWidth,
                    screenHeight,
                    item.title,
                    item.text,
                    item.imagePath,
                  );
                },

              ),
            )
          ],
        ),
        bottomNavigationBar: BuildBottomNavigationBar(activeIcon: "home"),
      ),
    );
  }


  Padding buildPlaceItem(double screenWidth, double screenHeight , String title, String text , String imagePath) {
    return Padding(
                  padding: EdgeInsets.only(right: screenWidth * 0.041),
                  child:
                    ClipRRect(
                      borderRadius: BorderRadius.circular(screenHeight * 0.026),
                      child: Container(
                        height: screenHeight * 0.276,
                        width: screenHeight * 0.182,
                        child: Column(
                          children: [
                            Container(
                              color: yellow1,
                              height: screenHeight * 0.094,
                              width: screenHeight * 0.182,
                              padding: EdgeInsets.only(left: screenHeight * 0.023, right: screenHeight * 0.023),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    title,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        fontSize: screenHeight * 0.016
                                    ),
                                  ),
                                  Text(
                                    text,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        fontSize: screenHeight * 0.010
                                    ),
                                  ),
                                ],
                              )
                            ),
                            Container(
                              height: screenHeight * 0.182,
                              width: screenHeight * 0.182,
                              child: Image.asset(
                                  imagePath
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                );
  }
}
