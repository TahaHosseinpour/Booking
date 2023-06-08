import 'package:booking/Information/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:booking/Information/colors.dart';

class MyDatePickerTextField extends StatefulWidget {
  @override
  _MyDatePickerTextFieldState createState() => _MyDatePickerTextFieldState();
}

class _MyDatePickerTextFieldState extends State<MyDatePickerTextField> {
  TextEditingController _textEditingController = TextEditingController();
  String _selectedDate = '';

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future<void> _selectDate(BuildContext context) async {
      final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100),
      );

      if (pickedDate != null) {
        setState(() {
          _selectedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
          _textEditingController.text = _selectedDate;
        });
      }
    }
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 0.27,
      height:screenHeight * 0.04,

      child:TextField(
        controller: _textEditingController,
        readOnly: true,
        onTap: () {
          _selectDate(context);
        },
        decoration: InputDecoration(
            hintText: 'Seclect',
            hintStyle: TextStyle(
                fontFamily: 'Poppins',
                fontSize: screenHeight * 0.015,
                color: grey1,
            ),
            contentPadding: EdgeInsets.only(top: 10 , bottom: 9,right: 15,left: 15),
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none
        ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}