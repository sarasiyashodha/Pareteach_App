import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Components/continue_button.dart';


class ForgotPassword extends StatelessWidget{
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
                  'Forgot Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 30),

                Image.asset(
                  'Images/forgotpassword.webp', // Make sure the path is correct
                  width: 126.24,
                  height: 126.24,
                  fit: BoxFit.fill,
                ),

                const SizedBox(height: 30),

                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20), // Add some horizontal padding for better readability
                    child: Text(
                      "Enter your Email for the verification process. We will send 4 digits code to your Email.",
                      textAlign: TextAlign.justify, // Apply text justification
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 40),
        
                ContinueButton(
                  onTap: () {
                    Navigator.pushNamed(context, '/sixteen');
                  },
                ),
                
            

         
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}


  
