import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Screens/HomePage/teachers_login_page.dart';
import 'package:mini_project_mobile_app/Screens/HomePage/user_selection_page.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';// Import your user_selection_page.dart

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay and navigate to the UserSelectionPage
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/twenty_four');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('Images/logo.png'),
            SpinKitCircle(
              color: Colors.grey,
              size: 60.0,
            ),
          ],
        ),
      ),
    );
  }


}