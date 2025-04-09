import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final String textButton;
  final void Function()? onPressed;
  const CustomButtonWidget(
      {super.key, required this.textButton, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffE96E6E),
            minimumSize: Size(double.infinity, 70),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        onPressed: onPressed,
        child: Text(
          textButton,
          style: TextStyle(fontSize: 24, color: Colors.white),
        ));
  }
}
