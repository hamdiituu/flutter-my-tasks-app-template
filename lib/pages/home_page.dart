import 'package:flutter/material.dart';
import 'package:my_tasks_template/utils/custom_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                'Hello 🚀',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: CustomColors.darkBlue),
              )
            ],
          ),
        ),
      ),
    );
  }
}
