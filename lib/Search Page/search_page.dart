import 'package:dropdown_search/dropdown_search.dart';
import'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:booking/Information/colors.dart';
import 'package:booking/Information/widgets.dart';
import 'package:booking/Search Page/two_button.dart';


class SearchPage extends StatelessWidget{
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                child: Image.asset('assets/images/train.png'),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  height: 450,
                  width: 358,
                  color: grey3,
                  margin: EdgeInsets.only(top: 16,left: 36,right: 36),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TwoButton(),

                      Container(
                        width: 297,
                        margin: EdgeInsets.only(left: 30,right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width:45,
                              padding: EdgeInsets.only(top: 20),
                              child: SvgPicture.asset(
                                'assets/images/From.svg'
                              ),
                            ),
                            Container(
                              width: 238,
                              padding: EdgeInsets.only(top: 3.5),
                              child: DropdownSearch<String> (
                                popupProps: const PopupProps.menu(
                                  showSelectedItems: true,
                                  showSearchBox: true,
                                ),
                                items: const ["Brazil,Brasilia", "China,Beijing", "France,Paris", "Italia,Rome", "Canada,Vancouver",],
                                dropdownDecoratorProps: DropDownDecoratorProps(
                                  dropdownSearchDecoration: InputDecoration(
                                    labelText: "From",
                                    labelStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        color: grey2
                                    ),
                                    contentPadding: EdgeInsets.only(bottom: 5),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 297,
                        margin: EdgeInsets.only(left: 30,right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width:45,
                              padding: EdgeInsets.only(top: 20),
                              child: SvgPicture.asset(
                                  'assets/images/To.svg'
                              ),
                            ),
                            Container(
                              width: 238,
                              padding: EdgeInsets.only(top: 3.5),
                              child: DropdownSearch<String> (
                                popupProps: const PopupProps.menu(
                                  showSelectedItems: true,
                                  showSearchBox: true,
                                ),
                                items: const ["Brazil,Brasilia", "China,Beijing", "France,Paris", "Italia,Rome", "Canada,Vancouver",],
                                dropdownDecoratorProps: DropDownDecoratorProps(
                                  dropdownSearchDecoration: InputDecoration(
                                    labelText: "To",
                                    labelStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        color: grey2
                                    ),
                                    contentPadding: EdgeInsets.only(bottom: 5),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),



                    ],
                  ),
                ),
              )

            ],
          ),
        ),
        bottomNavigationBar: buildNavigationBar(),
      ),
    );
  }
}


// Column(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Container(
// child: Image.asset('assets/images/train.png'),
// ),
// Container(
// margin: EdgeInsets.only(right: 36,left: 36),
// color: Color.fromRGBO(242, 242, 242, 1),
// child: Column(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Container(
// // To Do
// ),
//
// Container(
// padding: EdgeInsets.only(right: 30.5, left: 30.5),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// SvgPicture.asset('assets/images/international.svg',
// height: 23, width: 43,
// ),
// DropdownSearch<String> (
// popupProps: const PopupProps.menu(
// showSelectedItems: true,
// showSearchBox: true,
// ),
// items: const ["Brazil,Brasilia", "China,Beijing", "France,Paris", "Italia,Rome", "Canada,Vancouver",],
// dropdownDecoratorProps: const DropDownDecoratorProps(
// dropdownSearchDecoration: InputDecoration(
// labelText: "From",
// ),
// ),
// onChanged: print,
//
// ),
// ],
// ),
// )
// ],
// ),
// )
//
// ],
// ),