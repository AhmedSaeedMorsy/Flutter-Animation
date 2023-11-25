import 'package:flutter/material.dart';

class SizeTranstion extends PageRouteBuilder {
  final Widget page;
  SizeTranstion({required this.page})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionDuration: const Duration(
            seconds: 2,
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return Align(
              alignment: Alignment.center,
              child: SizeTransition(
                sizeFactor: animation,
                child: child,
              ),
            );
          },
        );
}
