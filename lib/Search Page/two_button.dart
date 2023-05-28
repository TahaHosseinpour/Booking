import 'package:flutter/material.dart';
import 'package:booking/Information/colors.dart';


class TwoButton extends StatefulWidget {
  @override
  _TwoButtonState createState() => _TwoButtonState();
}

class _TwoButtonState extends State<TwoButton> {
  bool leftButtonIsActive = true;
  bool rightButtonIsActive = false;

  void setActiveButton(String button) {
    setState(() {
      if (button == 'left') {
        leftButtonIsActive = true;
        rightButtonIsActive = false;
      } else if (button == 'right') {
        leftButtonIsActive = false;
        rightButtonIsActive = true;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(

      // decoration: BoxDecoration(
      //   // borderRadius: BorderRadius.circular(40)
      // ),
      child: ClipRRect(

        borderRadius: BorderRadius.circular(40),
        child: Container(
          width: screenWidth * 0.83,
          height: screenHeight * 0.053,
            color: yellow2,
          child: Row(
            children: [
              Container(
                width: screenWidth * 0.415,
                height: screenHeight * 0.053,
                child: ElevatedButton(
                  onPressed: () {
                    if(!leftButtonIsActive){
                      setActiveButton("left");
                    }
                  },
                  child: Text(
                    "Round Trip",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: leftButtonIsActive ? Colors.black : grey2
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: leftButtonIsActive ? yellow1 : yellow2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),

                      ),
                      side: BorderSide.none
                  ),
                ),
              ),
              Container(
                width: screenWidth * 0.415,
                height: screenHeight * 0.053,
                child: ElevatedButton(
                  onPressed: () {
                    if(!rightButtonIsActive){
                      setActiveButton("right");
                    }
                  },
                  child: Text(
                    "One Way",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: rightButtonIsActive ? Colors.black : grey2
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: rightButtonIsActive ? yellow1 : yellow2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                      side: BorderSide.none,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
  
}
ElevatedButtonThemeData customButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom().copyWith(
    elevation: MaterialStateProperty.all<double>(0),
  ),
);
