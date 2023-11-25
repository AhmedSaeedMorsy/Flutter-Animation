import 'package:flutter/material.dart';

class RotationTranstion extends PageRouteBuilder {
  final Widget page;
  RotationTranstion({required this.page})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            Animation<double> animationTween =
                Tween<double>(begin: 0, end: 4).animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.linear,
              ),
            );
            return RotationTransition(
              turns: animationTween,
              child: child,
            );
          },
          transitionDuration: const Duration(seconds: 5),
        );
}
