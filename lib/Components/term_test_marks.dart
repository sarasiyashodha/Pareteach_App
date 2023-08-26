import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/constants.dart';

class TermTestMarks extends StatelessWidget {
  const TermTestMarks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      height: 155.0,
      width: 320.0,
      decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 3.0,),
        borderRadius: const BorderRadius.all(Radius.circular(15.0),),
        color: const Color(0XFFDFEEEA),
      ),
      child: Column(
        children: [
          Align(child: Text("First term", style: knormalTextStyle,),
            alignment: Alignment.topLeft,
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("English", style: knormalTextStyle,),
              Text("70%", style: knormalTextStyle,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("English", style: knormalTextStyle,),
              Text("70%", style: knormalTextStyle,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("English", style: knormalTextStyle,),
              Text("70%", style: knormalTextStyle,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("English", style: knormalTextStyle,),
              Text("70%", style: knormalTextStyle,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("English", style: knormalTextStyle,),
              Text("70%", style: knormalTextStyle,),
            ],
          ),
        ],
      ),

    );
  }
}