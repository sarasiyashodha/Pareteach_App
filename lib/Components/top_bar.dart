import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            size: 45.0,
          ),
          CircleAvatar(
            radius: 26.0,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              backgroundImage: AssetImage('Images/parentProfile.jpg',),
              radius: 25.0,
            ),
          ),
        ],
      );

  }
}
