import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Components/continue_button.dart';
import 'package:mini_project_mobile_app/Components/my_text-field.dart';

class ForgotPassword2 extends StatefulWidget {
  @override
  _ForgotPassword2State createState() => _ForgotPassword2State();
}

class _ForgotPassword2State extends State<ForgotPassword2> {
  final TextEditingController emailController = TextEditingController();
  String email = '';

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
                  'Images/forgotpassword.webp',
                  width: 126.24,
                  height: 126.24,
                  fit: BoxFit.fill,
                ),
                const SizedBox(height: 30),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Enter your Email for the verification process. We will send 4 digits code to your Email.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                MyTextField(
                  validator: (val) =>
                      val?.isEmpty == true ? "Enter a valid Email" : null,
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                  onChanged: (val) {
                    setState(() {
                      email = val;
                    });
                  },
                ),
                const SizedBox(height: 40),
                ContinueButton(
                  onTap: () {
                    Navigator.pushNamed(context, '/twenty_two');
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
