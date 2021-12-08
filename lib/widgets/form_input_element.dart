import 'package:flutter/material.dart';
import 'package:my_tasks_template/utils/custom_colors.dart';

class FormInputElement extends StatelessWidget {
  final String hintText;
  final String labelText;
  const FormInputElement(
      {Key? key, required this.hintText, required this.labelText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 8),
          child: Text(
            labelText,
            style: TextStyle(
                color: CustomColors.darkBlue, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 5),
            margin: const EdgeInsets.only(top: 12),
            height: 55,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 4), // changes position of shadow
                ),
              ],
            ),
            child: TextFormField(
                style: TextStyle(
                  color: CustomColors.darkBlue,
                  fontWeight: FontWeight.w600,
                ),
                decoration: InputDecoration(
                    prefixStyle: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 14),
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 14))))
      ],
    );
  }
}
