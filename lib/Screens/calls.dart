import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Calls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Calls'),
          backgroundColor: Color(0xFF305D62),
        ),
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF305D62), // Change the background color here
              fixedSize: Size(200, 100),
            ),
            onPressed: () {
              _makePhoneCall('1234567890'); // Replace with the desired phone number
            },
            child: Row(
              children: [
                Icon(Icons.call, size: 30.0),
                SizedBox(width: 20.0,),
                Text('Take a call',
                  style: TextStyle(
                    fontSize: 20.0, // Set the font size as per your requirement
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }

  void _makePhoneCall(String phoneNumber) async {
    String url = 'tel:$phoneNumber';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
