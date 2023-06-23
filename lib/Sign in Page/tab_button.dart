import 'package:flutter/material.dart';

import 'package:booking/Information/colors.dart';
import 'package:booking/Sign in Page/sign_up_tab.dart';
import 'package:booking/Sign in Page/log_in_tab.dart';



class TabButton extends StatefulWidget {
  String leftText;
  String rightText;
  double height;
  FontWeight fontWeight = FontWeight.w700;
  double fontSize = 20;
  bool leftButtonIsActive = true;
  bool rightButtonIsActive = false;

  Widget tab = LogInTab();


  TabButton({required this.leftText ,required this.rightText ,required this.height });

  @override
  _TabButtonState createState() => _TabButtonState();
}

class _TabButtonState extends State<TabButton> {


  void setActiveButton(String button) {
    setState(() {
      if (button == 'left') {
        widget.leftButtonIsActive = true;
        widget.rightButtonIsActive = false;
        widget.tab = LogInTab();
      } else if (button == 'right') {
        widget.leftButtonIsActive = false;
        widget.rightButtonIsActive = true;
        widget.tab = SignUpTab();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Container(
          width: screenWidth * 0.83,
          height: widget.height,
          color: yellow2,
          child: Row(
            children: [
              SizedBox(
              width: screenWidth * 0.415,
              height: widget.height,
              child: ElevatedButton(
                onPressed: () {
                  if(!widget.leftButtonIsActive){
                  setActiveButton("left");
                }
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: widget.leftButtonIsActive ? yellow1 : yellow2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),

                ),
                side: BorderSide.none
                ),
                child: Text(
                  widget.leftText,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: widget.fontWeight,
                    fontSize: screenHeight * 0.03,
                    color: widget.leftButtonIsActive ? Colors.black : grey2
                  ),
                ),
              ),
              ),
              SizedBox(
                width: screenWidth * 0.415,
                height: widget.height,
                child: ElevatedButton(
                  onPressed: () {
                    if(!widget.rightButtonIsActive){
                    setActiveButton("right");

                  }
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: widget.rightButtonIsActive ? yellow1 : yellow2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                      side: BorderSide.none,
                      ),
                    ),
                    child: Text(
                      widget.rightText,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: widget.fontWeight,
                        fontSize: screenHeight * 0.03,
                        color: widget.rightButtonIsActive ? Colors.black : grey2
                      ),
                    ),
                ),
                )
            ],
            ),
          ),
        ),
        widget.tab
      ],
    );
  }

}
ElevatedButtonThemeData customButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom().copyWith(
    elevation: MaterialStateProperty.all<double>(0),
  ),
);
