import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.controller,
    this.hintText,
    this.hintStyle,
    this.contentPadding,
    this.filled,
    this.fillColor,
    this.border,
    this.cursorColor,
  });

  TextEditingController? controller;
  String? hintText;
  TextStyle? hintStyle;
  EdgeInsetsGeometry? contentPadding;
  bool? filled;
  Color? fillColor;
  InputBorder? border;
  Color? cursorColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding: contentPadding,
        hintText: hintText,
        hintStyle: hintStyle,
        //  suffixIcon: IconButton(
        //  onPressed: () {},
        //  icon: Icon(Icons.messenger_outline_outlined),
        // ),
        filled: filled,
        fillColor: fillColor,
        border: border,
      ),
      cursorColor: cursorColor,
    );
  }
}
