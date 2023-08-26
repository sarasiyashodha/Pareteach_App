import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/constants.dart';

class ClassworkTile extends StatelessWidget {
  const ClassworkTile({
    super.key, required this.title, required this.image,
  });

  final String title;
  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.0,
      width: 356.0,
      decoration: const BoxDecoration(
        color: Color(0XFFA7C4BC),
        borderRadius: BorderRadius.all(Radius.circular(10.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(title,
                style: ksubTitleTextStyle,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Image(image: image, height: 120.0, width: 120.0,),
          ],
        ),
      ),
    );
  }
}

