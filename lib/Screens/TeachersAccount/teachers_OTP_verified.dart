import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Components/Reset_Password_Button.dart';
import 'package:mini_project_mobile_app/Components/my_text-field.dart';


class VerifiedOTP2 extends StatelessWidget {

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                Text(
                  'OTP Verified',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                
                const SizedBox(height: 30),

                Image.asset(
                  'Images/OTP__verified.png', // Make sure the path is correct
                  width: 126.24,
                  height: 126.24,
                  fit: BoxFit.fill,
                ),

                const SizedBox(height: 20),

                Divider(  // Horizontal line
                  color: Colors.black,
                  thickness: 1,
                  indent: 50,
                  endIndent: 50,
                ),

                const SizedBox(height: 20),

                Text(
                  'Reset Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 20),

                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Set the new password for your account so you can login and access all the features.",
                      style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                
                const SizedBox(height: 40),

                MyTextField(
                  controller: passwordController,
                  hintText: 'New Password',
                  obscureText: true,
                ),

                const SizedBox(height: 30),

                 MyTextField(
                  controller: passwordController,
                  hintText: 'Confirm New Password',
                  obscureText: true,
                ),

                const SizedBox(height: 30),

                ResetPasswordButton(
                  onTap: () {
                    Navigator.pushNamed(context, '/twenty_four');
                  }
                  
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: VerifiedOTP2(),
  ));
}
