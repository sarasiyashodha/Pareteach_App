import 'package:flutter/material.dart';

class MyDropdownField extends StatelessWidget {
  final String hintText;
  final List<String> items;
  final String? selectedValue;
  final void Function(String?)? onChanged; // Change type declaration here

  MyDropdownField({
    required this.selectedValue,
    required this.hintText,
    required this.items,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          hint: Text(hintText),
          value: selectedValue,
          items: items.map((item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
