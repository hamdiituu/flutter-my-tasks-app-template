// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class IconNonButton extends StatelessWidget {
  VoidCallback? onPressed;
  String labelText;
  Color labelColor;
  Color? bgColor;

  IconNonButton(
      {Key? key,
      required this.labelText,
      required this.labelColor,
      this.onPressed,
      this.bgColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        labelText,
        style: TextStyle(color: labelColor, fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16), // <-- Radius
          ),
          primary: bgColor,
          minimumSize: const Size(double.infinity, 55)),
    );
  }
}
