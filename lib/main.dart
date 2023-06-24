import 'package:booking/Database/user.dart';
import 'package:booking/ServerMethods/userToJson.dart';
import 'package:flutter/material.dart';

import 'package:booking/Start Page/start.dart';
import 'package:booking/Information/colors.dart';
import 'package:booking/Search Page/search_page.dart';
import 'package:booking/Main Page/main_page.dart';
import 'package:booking/Transactions Page/transactions_page.dart';
import 'package:booking/Transactions Page/transaction_item.dart';
import 'package:booking/Profile Page/profile_page.dart';
import 'package:booking/ServerMethods/userToJson.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
       debugShowCheckedModeBanner: false,
       title: 'Flutter Demo',
       theme: ThemeData(

         primarySwatch: Colors.yellow,

       ),
       home: Start(),
    );
  }
}


