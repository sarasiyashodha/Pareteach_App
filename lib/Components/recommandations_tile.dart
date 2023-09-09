import 'package:flutter/material.dart';

class RecommendationsTile extends StatelessWidget {
  const RecommendationsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(

      decoration: InputDecoration(
        label: Text("Type recommendation here..."),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0),
        ),

        ),
      ),
    );
  }
}