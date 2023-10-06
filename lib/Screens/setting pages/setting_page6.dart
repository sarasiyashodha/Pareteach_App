import 'package:flutter/material.dart';

class SettingPage6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: [
            Image.asset(
              "Images/setting.png",
              width: 450.0,
              height: 450.0,
            ),

            SizedBox(height: 0),

            Text(
              "Account deleted successfully!",
              style: TextStyle(
                fontSize: 20.0,
                color: Color(0xFF305D62),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SettingPage6(),
  ));
}
