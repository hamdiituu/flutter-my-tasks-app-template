import 'package:flutter/material.dart';

class GradientBox extends StatelessWidget {
  final Widget child;
  const GradientBox({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
        gradient: LinearGradient(colors: [
          Color.fromRGBO(252, 91, 114, 1),
          Color.fromRGBO(138, 127, 182, 0.9)
        ]),
      ),
      child: child,
    );
  }
}
