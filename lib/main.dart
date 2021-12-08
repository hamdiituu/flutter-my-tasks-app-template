import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_tasks_template/pages/forgat_password_page.dart';
import 'package:my_tasks_template/pages/landing_page.dart';
import 'package:my_tasks_template/pages/login_page.dart';
import 'package:my_tasks_template/pages/sign_up_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.white, // this one for android
      statusBarBrightness: Brightness.light // this one for iOS
      ));
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Tasks Template',
      initialRoute: '/landing',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        '/landing': (context) => const LandingPage(),
        '/login': (context) => const LoginPage(),
        '/sign_up': (context) => const SignUpPage(),
        '/forgat_password': (context) => const ForgatPasswordPage()
      },
    );
  }
}
