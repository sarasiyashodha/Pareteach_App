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
      margin: EdgeInsets.only(left: 25.0, right: 25.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          color: Color(0XFFA7C4BC),
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            isExpanded: true,
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
      ),
    );
  }
}
