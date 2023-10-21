import 'package:flutter/material.dart';

class EditButton extends StatelessWidget {
  final Function()? onTap;
  final bool isEditing;
  final Text child;

  const EditButton({Key? key, required this.onTap, required this.child, required this.isEditing}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 15.0, bottom: 15.0),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Color(0xff305d62),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
