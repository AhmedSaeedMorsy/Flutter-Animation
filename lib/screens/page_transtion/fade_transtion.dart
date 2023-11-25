import 'package:flutter/material.dart';

class FadeTranstion extends PageRouteBuilder {
  final Widget page;
  FadeTranstion({required this.page})
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              Animation<double> animation1 = Tween<double>(begin: .5, end: 1.0)
                  .animate(CurvedAnimation(
                      parent: animation, curve: Curves.bounceInOut));
              return FadeTransition(
                opacity: animation1,
                child: child,
              );
            },
            transitionDuration: const Duration(seconds: 2));
}
