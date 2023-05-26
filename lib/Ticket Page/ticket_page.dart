import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
Container ticket(){
  return Container(
    margin: EdgeInsets.only(right: 33.5, left: 33.5),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text("Fly Emirates",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
              ),
              ),
            ),
            SizedBox(width: 5,),
            Container(
              child: SvgPicture.asset('assets/images/ticket_icon.svg',
              height: 30,
              width: 30,
              ),
            ),
          ],
        )
      ],
    ),
  );
}