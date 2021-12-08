import 'package:flutter/material.dart';
import 'package:my_tasks_template/utils/custom_colors.dart';

class AuthAppBar extends StatelessWidget {
  const AuthAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0.0,
      backgroundColor: Colors.white,
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/landing');
              },
              icon: Icon(
                Icons.close,
                size: 30,
                color: CustomColors.darkBlue,
              )),
        )
      ],
    );
  }
}
