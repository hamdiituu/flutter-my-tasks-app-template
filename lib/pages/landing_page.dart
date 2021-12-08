import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_tasks_template/utils/custom_colors.dart';
import 'package:my_tasks_template/widgets/gradient_box.dart';
import 'package:my_tasks_template/widgets/icon_with_button.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size _size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Welcome 🎉',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 40,
            ),
            IconWithButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                icon: Icons.mail,
                labelText: 'Login With Email',
                labelColor: CustomColors.darkBlue,
                bgColor: Colors.white),
            const SizedBox(
              height: 15,
            ),
            GradientBox(
              child: IconWithButton(
                onPressed: () {},
                icon: Icons.phone,
                labelText: 'Login With Phone',
                labelColor: Colors.white,
                bgColor: Colors.transparent,
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign_up');
                  },
                  child: Text(
                    'Not a member? Sign Up',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: CustomColors.darkBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
