import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mini_project_mobile_app/Components/my_button.dart';
import 'package:mini_project_mobile_app/Components/my_text-field.dart';
import 'package:mini_project_mobile_app/Components/square_tile.dart';
import 'package:mini_project_mobile_app/Screens/services/auth.dart';
import 'package:provider/provider.dart';
import '../../providers/user_provider.dart';
import 'teachers_forgot_password.dart';

class LoginPage2 extends StatefulWidget {
  //function
  final Function toggle;

  const LoginPage2({super.key, required this.toggle});

  @override
  _LoginPage2State createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String error = "";

  final emailController = TextEditingController();
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
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
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
                      const SizedBox(height: 30),
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
                Text(
                  error,
                  style: TextStyle(color: Colors.red),
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
                            MaterialPageRoute(
                                builder: (context) => ForgotPassword2()),
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
                  onTap: () async {
                    if (_formKey.currentState?.validate() ?? false) {
                      dynamic result = await AuthServices()
                          .signInUsingEmailAndPassword(context, email, password);
                      if (result == null) {
                        setState(() {
                          error = "Invalid credentials. Please try again.";
                        });
                      }else {
                        // Check the user's role and navigate accordingly
                        String? role = Provider.of<UserProvider>(context, listen: false).userRole;
                        print('User role: $role');
                        if (role == 'Teacher') {
                          Navigator.pushNamed(context, '/twenty_five'); // Navigate to teacher home screen
                        } else if (role == 'Parent') {
                          Navigator.pushNamed(context, '/nineteen'); // Navigate to parent home screen
                        } else {
                          // Handle other roles or scenarios as needed
                        }
                      }
                    }
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
                    GestureDetector(
                      onTap: () {},
                      child: SquareTile(imagepath: 'Images/Google.webp'),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {},
                      child: SquareTile(imagepath: 'Images/Facebook.jpeg'),
                    ),
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
                        widget.toggle();
                        Navigator.pushNamed(context, '/fifty');
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
