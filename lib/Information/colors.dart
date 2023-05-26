import 'package:flutter/material.dart';

final Color yellow1 = Color.fromARGB(255, 255, 216, 0);
final Color yellow2 = Color.fromARGB(255, 255, 240, 142);

final Color green1 = Color.fromARGB(255, 208, 239, 218);
final Color green2 = Color.fromARGB(255, 111, 185, 143);
final Color green3 = Color.fromARGB(255, 44, 120, 115);

final Color grey1 = Color.fromARGB(255, 198, 198, 198);
final Color grey2 = Color.fromARGB(255, 135, 135, 135);
final Color grey3 = Color.fromARGB(255, 242, 242, 242);


final Color myColor = Color.fromARGB(255, 255, 216, 0); // رنگ HEX شما
final MaterialColor mySwatch = MaterialColor(myColor.value, {
  50: myColor.withOpacity(0.1),
  100: myColor.withOpacity(0.2),
  200: myColor.withOpacity(0.3),
  300: myColor.withOpacity(0.4),
  400: myColor.withOpacity(0.5),
  500: myColor.withOpacity(0.6),
  600: myColor.withOpacity(0.7),
  700: myColor.withOpacity(0.8),
  800: myColor.withOpacity(0.9),
  900: myColor.withOpacity(1.0),
});