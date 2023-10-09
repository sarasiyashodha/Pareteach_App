import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Components/nav_bar.dart';


import '../../Components/save_button.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
           
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'User Name', // Display "User Name" text
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
            ),
            SizedBox(height: 5), 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Jameson Smith', // Display user name
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.edit), // Add edit icon
                  onPressed: () {
                    // Handle editing the user name
                  },
                ),
              ],
            ),
            SizedBox(height: 5), // Add spacing
            Divider(
              color: Colors.black,
              height: 1,
            ),

            SizedBox(height: 10),
           
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'User ID', // Display "User ID" text
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
            ),
            SizedBox(height: 5), // Add spacing
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'T001', // Display user name
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.edit), // Add edit icon
                  onPressed: () {
                    // Handle editing the user name
                  },
                ),
              ],
            ),
            SizedBox(height: 5), 
            Divider(
              color: Colors.black,
              height: 1,
            ),

            SizedBox(height: 10),
           
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Email', // Display "Email" text
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
            ),
            SizedBox(height: 5), 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'jamesonsmith@gmail.com', // Display Email
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.edit), // Add edit icon
                  onPressed: () {
                    // Handle editing the user name
                  },
                ),
              ],
            ),
            SizedBox(height: 5), 
            Divider(
              color: Colors.black,
              height: 1,
            ),

            SizedBox(height: 10),
           
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Password', // Display "Password" text
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
            ),
            SizedBox(height: 5), // Add spacing
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'jameson#123', // Display password
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.edit), // Add edit icon
                  onPressed: () {
                    // Handle editing the user name
                  },
                ),
              ],
            ),
            SizedBox(height: 5), 
            Divider(
              color: Colors.black,
              height: 1,
            ),

            SizedBox(height: 20),

            SaveButton(
                  onTap: () {}       
            ),
           

          ],
        ),
      ),
    );
  }
}
