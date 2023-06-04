import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class checkBox extends StatefulWidget {
  final String lable;
  bool isChecked;

  checkBox({required this.lable , this.isChecked = false});

  @override
  _checkBoxState createState() => _checkBoxState();
}

class _checkBoxState extends State<checkBox> {
  ClipRRect box = unCheckedContainer;


  @override
  Widget build(context) {
    return Container(
      height: 20,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: InkWell(
              onTap: (){
                setState(() {
                  if(widget.isChecked){
                    box = unCheckedContainer;
                    widget.isChecked = false;
                    print(widget.isChecked);
                  }else{
                    box = checkedContainer;
                    widget.isChecked = true;
                  }
                });
                },
              child: box ,
            ),
          ),
          SizedBox(
            width: 17.5,
          ),
          Text(
            widget.lable ,
            style: const TextStyle(
              fontFamily: "Poppins",
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.black
            ),
          ),
        ],
      )
    );
  }
}



ClipRRect checkedContainer = ClipRRect(
  child: SvgPicture.asset(
    'assets/images/checked.svg'
  )
);


ClipRRect unCheckedContainer = ClipRRect(
    child: SvgPicture.asset(
        'assets/images/unChecked.svg'
    )
);
