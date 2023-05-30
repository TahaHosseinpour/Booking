import 'package:flutter/material.dart';
import 'package:booking/Information/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

