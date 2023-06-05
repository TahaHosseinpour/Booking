import 'package:flutter/material.dart';
import 'package:booking/Information/colors.dart';


class TwoButton extends StatefulWidget {
  String leftText;
  String rightText;
  double height;
  FontWeight fontWeight = FontWeight.w700;
  double fontSize = 20;
  bool leftButtonIsActive = true;
  bool rightButtonIsActive = false;


  TwoButton({required this.leftText ,required this.rightText ,required this.height });

  @override
  _TwoButtonState createState() => _TwoButtonState();
}

class _TwoButtonState extends State<TwoButton> {


  void setActiveButton(String button) {
    setState(() {
      if (button == 'left') {
        widget.leftButtonIsActive = true;
        widget.rightButtonIsActive = false;
      } else if (button == 'right') {
        widget.leftButtonIsActive = false;
        widget.rightButtonIsActive = true;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return ClipRRect(

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
                      fontSize: widget.fontSize,
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
                      fontSize: widget.fontSize,
                      color: widget.rightButtonIsActive ? Colors.black : grey2
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  
}
ElevatedButtonThemeData customButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom().copyWith(
    elevation: MaterialStateProperty.all<double>(0),
  ),
);
