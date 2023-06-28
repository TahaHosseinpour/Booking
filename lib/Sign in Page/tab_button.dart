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





  TabButton({required this.leftText ,required this.rightText ,required this.height });

  @override
  _TabButtonState createState() => _TabButtonState();
}

class _TabButtonState extends State<TabButton> {
  Widget tab = LogInTab();
  bool leftButtonIsActive = true;
  bool rightButtonIsActive = false;


  void setActiveButton(String button) {
    setState(() {
      if (button == 'left') {
        leftButtonIsActive = true;
        rightButtonIsActive = false;
        tab = LogInTab();
      } else if (button == 'right') {
        leftButtonIsActive = false;
        rightButtonIsActive = true;
        tab = SignUpTab();
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
                  if(!leftButtonIsActive){
                  setActiveButton("left");
                }
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: leftButtonIsActive ? yellow1 : yellow2,
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
                    color: leftButtonIsActive ? Colors.black : grey2
                  ),
                ),
              ),
              ),
              SizedBox(
                width: screenWidth * 0.415,
                height: widget.height,
                child: ElevatedButton(
                  onPressed: () {
                    if(!rightButtonIsActive){
                    setActiveButton("right");

                  }
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: rightButtonIsActive ? yellow1 : yellow2,
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
                        color: rightButtonIsActive ? Colors.black : grey2
                      ),
                    ),
                ),
                )
            ],
            ),
          ),
        ),
        tab
      ],
    );
  }

}

