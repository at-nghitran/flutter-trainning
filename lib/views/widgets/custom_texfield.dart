import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final bool obscureText;
  final IconData icon;
  final Function onChange;
  const CustomTextField({
    Key key,
    this.text,
    this.icon,
    this.obscureText = false,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        isDense: true,
        hintText: text,
        labelText: text,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        prefixIcon: Icon(
          icon,
          color: Colors.black,
        ),
        labelStyle: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
      ),
      onChanged: onChange,
    );
  }
}
