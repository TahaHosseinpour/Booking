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
                      InkWell(child: SvgPicture.asset('assets/images/bus.svg',
                        height: 60,
                        width: 50,
                      ),),
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
                      InkWell(child: SvgPicture.asset('assets/images/international.svg',
                      height: 50,
                          width: 50,
                          ),),
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
                      InkWell(child: SvgPicture.asset('assets/images/local.svg',
                        height: 50,
                        width: 50,
                      ),),
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
                      InkWell(child: SvgPicture.asset('assets/images/train.svg',
                        height: 60,
                        width: 50,
                      ),),
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
              child: ListView(
                scrollDirection: Axis.horizontal,
                
                children: [




                  Padding(padding: EdgeInsets.only(right: 18),
                    child:
                    Container(
                      height: 260,
                      width: 170,

                      child: Column(
                        children: [
                          Container(
                            height: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25)
                                )
                            ),
                            child: Text("Yazd is the Best"),
                          ),
                          Container(
                            height: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(25),
                                    bottomRight: Radius.circular(25)
                                )
                            ),
                            child: Image.asset(
                              "assets/images/landscape.png"
                            ),
                          )
                        ],
                      ),
                    ),),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: buildNavigationBar(),
      ),
    );
  }

  Container buildNavigationBar() {
    return Container(
        color: green2,
        padding: const EdgeInsets.only(top: 23.98,bottom: 23.98),
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
