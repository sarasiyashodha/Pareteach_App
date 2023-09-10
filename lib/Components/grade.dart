import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/constants.dart';

class Grade extends StatelessWidget {
  const Grade({
    super.key, required this.grade,
  });

  final String grade;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text(
        grade,
        style: ksubTitleTextStyle,
      ),
      alignment: Alignment.topLeft,
    );
  }
}