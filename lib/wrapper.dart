import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/authenticate.dart';
import 'package:mini_project_mobile_app/models/UserModel.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/notification2.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel?>(context);

    if (user == null) {
      return Authenticate();
    } else {
      return Notifications2();
    }
  }
}
