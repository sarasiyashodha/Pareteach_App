import 'package:flutter/material.dart';

class NotificationBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        color: Color(0xFFDFEEEB),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10),
        child: Text(
          "Notification",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}