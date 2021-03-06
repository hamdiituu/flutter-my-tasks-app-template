import 'package:flutter/material.dart';
import 'package:my_tasks_template/utils/custom_colors.dart';
import 'package:my_tasks_template/widgets/auth_app_bar.dart';
import 'package:my_tasks_template/widgets/form_input_element.dart';
import 'package:my_tasks_template/widgets/gradient_box.dart';
import 'package:my_tasks_template/widgets/icon_non_button.dart';

class ForgatPasswordPage extends StatelessWidget {
  const ForgatPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 55),
        child: AuthAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FormInputElement(
              labelText: 'Name',
              hintText: 'Enter your name',
            ),
            const SizedBox(
              height: 20,
            ),
            const FormInputElement(
              labelText: 'Email',
              hintText: 'Enter your email',
            ),
            const SizedBox(
              height: 25,
            ),
            GradientBox(
                child: IconNonButton(
              labelColor: Colors.white,
              bgColor: Colors.transparent,
              onPressed: () {},
              labelText: 'Continune',
            )),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sign_up');
                },
                child: Text(
                  'Not a member? Sign Up',
                  style: TextStyle(
                      color: CustomColors.darkBlue,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                )),
          ],
        ),
      ),
    );
  }
}
