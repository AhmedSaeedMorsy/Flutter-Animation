import 'package:flutter/material.dart';

class ScaleTranstion extends PageRouteBuilder {
  final Widget page;

  ScaleTranstion({required this.page})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            Animation<double> animation1 =
                Tween<double>(begin: .5, end: 0.8).animate(CurvedAnimation(
              parent: animation,
              curve: Curves.bounceInOut,
            ));

            return ScaleTransition(
              scale: animation1,
              child: child,
            );
          },
          transitionDuration: const Duration(
            seconds: 2,
          ),
        );
}
