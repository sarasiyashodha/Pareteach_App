import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Components/create_account_button.dart';
import 'package:mini_project_mobile_app/Components/my_text-field.dart';


import '../services/auth.dart';

class CreateAccount2 extends StatefulWidget {
  final Function toggle;

  const CreateAccount2({super.key, required this.toggle});
  

  @override
  _CreateAccount2State createState() => _CreateAccount2State();
}

class _CreateAccount2State extends State<CreateAccount2> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();

  String userName = "";
  String email = "";
  String userId = "";
  String password = "";
  String error = "";

  // Text editing controllers
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final userIDController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> signInAnonymously(BuildContext context) async {
    try {
      UserCredential userCredential = await _auth.signInAnonymously();
      String uid = userCredential.user!.uid;
      print('Signed in with UID: $uid');
      Navigator.pushNamed(context, '/twenty_five');
    } catch (e) {
      print('Error signing in: $e');
    }
  }

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

                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      
                      MyTextField(
                        validator: (val) => val?.isEmpty == true
                            ? "Enter a valid User Name"
                            : null,
                        controller: usernameController,
                        hintText: 'User name',
                        obscureText: false,
                        onChanged: (val) {
                          setState(() {
                            userName = val;
                          });
                        },
                      ),

                      const SizedBox(height: 20),

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

                      const SizedBox(height: 20),

                      MyTextField(
                        validator: (val) => val?.isEmpty == true
                            ? "Enter a valid User ID"
                            : null,
                        controller: userIDController,
                        hintText: 'User ID',
                        obscureText: false,
                        onChanged: (val) {
                          setState(() {
                            userId = val;
                          });
                        },
                      ),

                      const SizedBox(height: 20),

                      MyTextField(
                        validator: (val) =>
                            val!.length < 6 ? "Enter a valid password" : null,
                        controller: passwordController,
                        hintText: 'Password',
                        obscureText: true,
                        onChanged: (val) {
                          setState(() {
                            password = val;
                          });
                        },
                      ),

                    ],
                  ),
                ),
                
                const SizedBox(height: 10),

                //error text
                Text(
                  error,
                  style: TextStyle(color: Colors.red),
                ),

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
                CreateAccountButton(onTap: () async {
                  dynamic result = await AuthServices().registerWithEmailAndPassword(context: context,
                      email: email, 
                      password: password);

                  if (result == null) {
                    //error
                    setState(() {
                      error = "Please enter a valid email!";
                    });
                  }
                }),

                const SizedBox(height: 5),

                Text(
                  "Already have an account?",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                const SizedBox(height: 3),

                GestureDetector(
                  onTap: () {
                    widget.toggle();
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.red,
                      fontWeight: FontWeight.w400,
                    ),
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
