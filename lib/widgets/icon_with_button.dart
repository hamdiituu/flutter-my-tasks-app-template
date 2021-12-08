// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class IconWithButton extends StatelessWidget {
  VoidCallback? onPressed;
  String labelText;
  Color labelColor;
  IconData icon;
  Color? bgColor;

  IconWithButton(
      {Key? key,
      required this.labelText,
      required this.labelColor,
      required this.icon,
      this.onPressed,
      this.bgColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: labelColor,
      ),
      label: Text(
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
