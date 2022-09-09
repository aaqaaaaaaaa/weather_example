import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 50,
        height: 50,
        decoration:  BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.circular(50),
             boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(154, 96, 229, 0.16),
          )
        ]),
        child: child);
  }
}
