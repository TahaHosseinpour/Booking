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
            toolbarHeight: 92,
            title: Container(
              padding: EdgeInsets.all(0),
            margin: EdgeInsets.all(0),
            // padding: EdgeInsets.only(top: 41,left:30,right: 30 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  widget.currentUser.avatarPath,
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
            Container(
              padding: EdgeInsets.only(left: 45,right: 45),
              child: Column(
                children: [
                   Text("Hi Taha",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 35,
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                    ),
                  ),
                  Text("Let's Go Travel",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 35,
                        fontWeight: FontWeight.w400,
                        color: Colors.black
                    ),
                  ),
                ],
              ),
            ),
            //Add Search Box
            Container(
              padding: EdgeInsets.only(left: 45,right: 45),
              child: TextField(decoration: new InputDecoration(
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    size: 35,
                  ),
                  hintText: "Explore",
                  hintStyle: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      color: grey1
                  )
              ),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 87,
                  width: 82,
                  padding: const EdgeInsets.only(top: 3,bottom: 4),
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
                          height: 60,
                          width: 50,
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
                        height: 18,
                        child: const Text("Bus",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 87,
                  width: 82,
                  padding: const EdgeInsets.only(top: 8,bottom: 3.97),
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
                          height: 50,
                          width: 50,
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
                        height: 17,
                        child: const Text("International",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: Colors.black
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 87,
                  width: 82,
                  padding: const EdgeInsets.only(top: 8,bottom: 4),
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
                          height: 50,
                          width: 50,
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
                        height: 19,
                        child: const Text("Local",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 87,
                  width: 82,
                  padding: EdgeInsets.only(top: 3,bottom: 5),
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
                          height: 60,
                          width: 50,
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
                        height: 15,
                        child: const Text("Train",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
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
              padding: EdgeInsets.only(left:28,right: 168),
              child: Text(
                "Recommended",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 60,bottom:30,left: 27),
              height: 350,
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
        bottomNavigationBar: BuildBottomNavigationBar(activeIcon: "home",currentUser: widget.currentUser,),
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
