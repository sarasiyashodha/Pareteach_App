import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/constants.dart';

class RecommandationsTile extends StatelessWidget {
  const RecommandationsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175.0,
      width: 356.0,
      decoration: const BoxDecoration(
        color: Color(0XFFDFEEEA),
        borderRadius: BorderRadius.all(Radius.circular(10.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Align(child: Text('Mathematics', style: knormalTextStyle),
              alignment: Alignment.topLeft,
            ),
            SizedBox(
              height: 20.0,
            ),
            Align(child: Text('Master the basics.', style: knormalTextStyle),
              alignment: Alignment.topLeft,
            ),
            Align(child: Text('Do extra exercises.', style: knormalTextStyle),
              alignment: Alignment.topLeft,
            ),
            Align(child: Text('Practice regularly', style: knormalTextStyle),
              alignment: Alignment.topLeft,
            ),
            Align(child: Text('Improve critical thinking', style: knormalTextStyle),
              alignment: Alignment.topLeft,
            ),

          ],

        ),
      ),
    );
  }
}