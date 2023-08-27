import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Components/my_button.dart';
import 'package:mini_project_mobile_app/Components/my_text-field.dart';
import 'package:mini_project_mobile_app/Components/square_tile.dart';

import 'create_account.dart';
import 'forgot_password.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => LoginPage(),
      '/forgot_password': (context) => ForgotPassword(),
      // Add more routes if needed
    },
  ));
}

class LoginPage extends StatelessWidget {
  // Text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // Sign user in method
  void signUserIn() {}

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
                  'LOGIN',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 20),

                Image.asset(
                  'Images/Login_Icon.png',
                  width: 126.24,
                  height: 126.24,
                  fit: BoxFit.fill,
                ),

                const SizedBox(height: 30),

                MyTextField(
                  controller: usernameController,
                  hintText: 'User ID',
                  obscureText: false,
                ),

                const SizedBox(height: 30),

                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ForgotPassword()),
                        );
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),

                MyButton(
                  onTap: () {
                    Navigator.pushNamed(context, '/three');
                  },
                ),

                const SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 2,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 2,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imagepath: 'Images/Google.webp'),

                    const SizedBox(width: 20),

                    SquareTile(imagepath: 'Images/Facebook.jpeg'),
                  ],
                ),

                const SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CreateAccount()),
                        );
                      },
                      child: Text(
                        'Register now',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

