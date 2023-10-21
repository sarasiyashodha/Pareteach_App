import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Components/edit_button.dart';
import 'package:mini_project_mobile_app/Components/nav_bar.dart';


import '../../Components/save_button.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _isEditing = false;
  late TextEditingController _userNameController;
  late TextEditingController _userIdController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _userNameController = TextEditingController(text: 'Jameson Smith');
    _userIdController = TextEditingController(text: 'T001');
    _emailController = TextEditingController(text: 'jamesonsmith@gmail.com');
    _passwordController = TextEditingController(text: 'jameson#123');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Color(0XFF305D62),
        title: Text("My Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('Images/TeachersProfile.jpeg'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        // Handle profile image editing
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 4,
                            color:
                                Theme.of(context).scaffoldBackgroundColor,
                          ),
                          color: Colors.black,
                        ),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),



            TextFormField(
              decoration: InputDecoration(labelText: 'User Name'),
              controller: _userNameController,
              enabled: _isEditing,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'User ID'),
              controller: _userIdController,
              enabled: _isEditing,

            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
              controller: _emailController,
              enabled: _isEditing,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
              controller: _passwordController,
              obscureText: true,
              enabled: _isEditing,
            ),

            SizedBox(height: 20),

            Row(
              children: [
                EditButton(onTap: (){
                  setState(() {
                    _isEditing = !_isEditing;
                  });
                },
                  isEditing: _isEditing,
                  child: Text(_isEditing ? 'Cancel' : 'Edit', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),),
                ),
                if (_isEditing)
                  SaveButton(
                    onTap: () {
                      // Handle saving logic here
                      String userName = _userNameController.text;
                      String userId = _userIdController.text;
                      String email = _emailController.text;
                      String password = _passwordController.text;

                      // Perform save operation with the updated user details
                      // ...

                      // Exit edit mode after saving
                      setState(() {
                        _isEditing = false;
                      });
                    },
                  ),
              ],
            ),

            SizedBox(height: 20),


          ],
        ),
      ),
    );
  }
}

