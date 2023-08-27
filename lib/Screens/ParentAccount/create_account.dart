import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Components/create_account_button.dart';
import 'package:mini_project_mobile_app/Components/my_text-field.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  // Text editing controllers
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final userIDController = TextEditingController();
  final passwordController = TextEditingController();

  bool isCheckedRememberMe = false;
  bool invisible = true;

  // Sign user in method
  void accountcreate() {}

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
                  'Create An Account',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 20),

                Image.asset(
                  'Images/CreateAccount.png',
                  width: 126.24,
                  height: 126.24,
                  fit: BoxFit.fill,
                ),

                const SizedBox(height: 30),

                // User name
                Container(
                  height: 45,
                  child: MyTextField(
                    controller: usernameController,
                    hintText: 'User name',
                    obscureText: false,
                  ),
                ),

                const SizedBox(height: 20),

                // Email
                Container(
                  height: 45,
                  child: MyTextField(
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: false,
                  ),
                ),

                const SizedBox(height: 20),

                // User ID
                Container(
                  height: 45,
                  child: MyTextField(
                    controller: userIDController,
                    hintText: 'User ID',
                    obscureText: false,
                  ),
                ),

                const SizedBox(height: 20),

                // Password
                Container(
                  height: 45,
                  child: MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),
                ),

                const SizedBox(height: 10),

                // Checkbox for agreeing to terms
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: isCheckedRememberMe,
                      onChanged: (value) {
                        setState(() {
                          isCheckedRememberMe = value!;
                        });
                      },
                    ),
                    Text("I agree to the Terms of Service and Privacy Policy"),
                  ],
                ),

                const SizedBox(height: 10),

                // create account button
                CreateAccountButton(
                  onTap: accountcreate,
                  
                ),

                const SizedBox(height: 5),

                Text(
                  "Already have an account?",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                const SizedBox(height: 3),

                Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 15,
                    color:
                        Colors.red, // Use 'Colors.red' instead of 'colors.red'
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
