import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/teachers_create_account.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/teachers_login_page.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool loginPage2 = true;

  //toggle pages
  void switchPages() {
    setState(() {
      loginPage2 = !loginPage2;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (loginPage2 == true) {
      return LoginPage2(toggle: switchPages);
    } else {
      return CreateAccount2(toggle: switchPages);
    }
  }
}
