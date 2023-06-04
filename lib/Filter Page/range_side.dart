 import 'package:flutter/material.dart';

import 'package:booking/Information/colors.dart';

 import 'package:flutter/material.dart';

 class MyRange extends StatefulWidget {
   @override
   _MyRangeState createState() => _MyRangeState();
 }

 class _MyRangeState extends State<MyRange> {
   RangeValues _values = RangeValues(0, 50);

   @override
   Widget build(BuildContext context) {
     return RangeSlider(
       values: _values,
       min: 0,
       max: 100,
       onChanged: (newValues) {
         setState(() {
           _values = newValues;
         });
       },
       inactiveColor: Colors.white,
       activeColor: green2,
     );
   }
 }
