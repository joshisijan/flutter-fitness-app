import 'package:flutter/material.dart';

class CustomTextFieldPrimary extends StatelessWidget {
  final String hint;
  final FocusNode focusNode;
  final TextEditingController controller;

  CustomTextFieldPrimary({
    this.hint,
    this.focusNode,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        color: Colors.white70,
      ),
      focusNode: this.focusNode,
      controller: this.controller,
      decoration: InputDecoration(
        filled: true,
        hintText: this.hint,
        hintStyle: TextStyle(
          color: Colors.white70,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0.0),
          borderSide: BorderSide(
            color: Colors.white70,
            width: 3.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0.0),
          borderSide: BorderSide(
            color: Colors.white70,
            width: 3.0,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: 0.0,
          horizontal: 20.0,
        ),
      ),
    );
  }
}
