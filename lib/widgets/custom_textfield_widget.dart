import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String? hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  const CustomTextFieldWidget(
      {super.key, this.hintText, this.prefixIcon, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          prefixIcon: prefixIcon != null ? Icon(
            prefixIcon,
            color: Color(0xffCECECE),
          ): null,
          suffixIcon: suffixIcon != null ? Icon(
            suffixIcon,
            color: Color(0xffCECECE),
          ): null,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffCECECE)),
              borderRadius: BorderRadius.circular(15)),
          hintText: hintText,
          hintStyle: TextStyle(color: Color(0xffCECECE))),
    );
  }
}
