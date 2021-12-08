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
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text('Welcome',
                    style:
                        TextStyle(fontSize: 37, fontWeight: FontWeight.w400)),
                Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text('🎉', style: TextStyle(fontSize: 35)))
              ],
            ),
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
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
