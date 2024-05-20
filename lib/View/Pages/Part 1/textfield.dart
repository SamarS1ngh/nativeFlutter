import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({super.key, required this.ctrlr, required this.label});
  TextEditingController ctrlr;
  String label;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.ctrlr,
      decoration: InputDecoration(label: Text(widget.label)),
    );
  }
}
