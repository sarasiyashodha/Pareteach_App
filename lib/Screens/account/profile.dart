import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Components/edit_button.dart';
import 'package:mini_project_mobile_app/Components/nav_bar.dart';
import 'package:provider/provider.dart';


import '../../Components/save_button.dart';
import '../../models/profile_model.dart';
import '../../providers/profile_provider.dart';
import '../../providers/user_provider.dart';

import '../../services/firestore_service.dart';
import '../../services/image_picker.dart';


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

  File? _selectedImage;

  @override
  void initState() {
    super.initState();
    var userProfile = Provider.of<UserProvider>(context, listen: false);
    _userNameController = TextEditingController(text: userProfile.userName ?? '');
    _userIdController = TextEditingController(text: userProfile.userId ?? '');
    _emailController = TextEditingController(text: userProfile.userEmail ?? '');
    _passwordController = TextEditingController(text: userProfile.password ?? '');
  }






  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);

    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Color(0XFF305D62),
        title: Text("My Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Consumer<UserProvider>(
          builder: (context, userProvider, child) {
            var userName = userProvider.userName ?? '';
            var userId = userProvider.userId ?? '';
            var email = userProvider.userEmail ?? '';
            var password = userProvider.password ?? '';

            var _userNameController = TextEditingController(text: userName);
            var _userIdController = TextEditingController(text: userId);
            var _emailController = TextEditingController(text: email);
            var _passwordController = TextEditingController(text: password);

            return Column(
              children: [
                Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        radius: 70,
                        backgroundImage: _selectedImage != null
                            ? FileImage(_selectedImage!)  // Convert File to FileImage
                            : userProvider.profileImageUrl != null
                            ? NetworkImage(userProvider.profileImageUrl!)
                            : AssetImage('Images/defaultProfile.jpg') as ImageProvider,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: GestureDetector(
                          onTap: () {
                            // Handle profile image editing
                            FileImagePicker().pickImage().then((image) {
                              setState(() {
                                _selectedImage = image;
                              });
                            });
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
                  decoration: InputDecoration(labelText: 'User Name',
                    labelStyle: TextStyle(color: Color(0xFF305D62),),
                  ),
                  controller: _userNameController,
                  enabled: _isEditing,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: _isEditing ? Colors.black54 : Colors.black,
                  ),

                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(labelText: 'User ID',
                    labelStyle: TextStyle(color: Color(0xFF305D62),),
                  ),
                  controller: _userIdController,
                  enabled: _isEditing,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: _isEditing ? Colors.black54 : Colors.black,
                  ),

                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Email',
                    labelStyle: TextStyle(color: Color(0xFF305D62),),

                  ),
                  controller: _emailController,
                  enabled: _isEditing,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: _isEditing ? Colors.black54 : Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Password',
                    labelStyle: TextStyle(color: Color(0xFF305D62),), // Change label text color
                  ),
                  controller: _passwordController,
                  obscureText: true,
                  enabled: _isEditing,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: _isEditing ? Colors.black54 : Colors.black,
                  ),
                ),

                SizedBox(height: 20),

                // Row(
                //   children: [
                //     EditButton(onTap: (){
                //       setState(() {
                //         _isEditing = !_isEditing;
                //       });
                //     },
                //       isEditing: _isEditing,
                //       child: Text(_isEditing ? 'Cancel' : 'Edit', style: TextStyle(
                //         color: Colors.white,
                //         fontWeight: FontWeight.bold,
                //         fontSize: 16,
                //       ),),
                //     ),
                //     if (_isEditing)
                //
                //       SaveButton(
                //         onTap: () async {
                //           // Get the updated user data from the controllers
                //           String userName = _userNameController.text;
                //           String userId = _userIdController.text;
                //           String email = _emailController.text;
                //           String password = _passwordController.text;
                //
                //           // Upload the new profile image if selected
                //           if (_selectedImage != null) {
                //             String imageUrl = await FileImagePicker().uploadImageToFirebaseStorage(_selectedImage!, userId);
                //             await FileImagePicker().saveImageUrlToFirestore(imageUrl, userId);
                //             Provider.of<UserProvider>(context, listen: false).setProfileImageUrl(imageUrl);
                //           }
                //
                //           UserProfile updatedUserProfile = UserProfile(
                //             userName: userName,
                //             userId: userId,
                //             email: email,
                //
                //           );
                //
                //           // Update local user data
                //           bool success = await Provider.of<UserProvider>(context, listen: false).updateUserProfile(updatedUserProfile);
                //
                //           if (success) {
                //             // Update local user data
                //             Provider.of<UserProvider>(context, listen: false).setUserDetails(userId, userName, email, '', password);
                //
                //             // Exit edit mode after saving if the update was successful
                //             setState(() {
                //               _isEditing = false;
                //             });
                //           } else {
                //             // Handle the case where the update fails, show an error message or retry logic
                //             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                //               content: Text('Failed to update user data.'),
                //             ));
                //           }
                //         },
                //       ),
                //   ],
                // ),

                SizedBox(height: 20),


              ],
            );
          }
        ),
      ),
    );
  }
}

