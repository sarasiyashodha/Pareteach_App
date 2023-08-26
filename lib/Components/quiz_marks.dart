import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/constants.dart';

class QuizMarks extends StatelessWidget {
  const QuizMarks({super.key, required this.name, required this.marks});

  final String name;
  final String marks;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      height: 80.0,
      width: 400.0,
      decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 3.0),
        borderRadius: const BorderRadius.all(Radius.circular(15.0),),
        color: const Color(0XFFDFEEEA),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name, style: knormalTextStyle,),
          Text(marks, style: knormalTextStyle,),
        ],
      ),
    );
  }
}