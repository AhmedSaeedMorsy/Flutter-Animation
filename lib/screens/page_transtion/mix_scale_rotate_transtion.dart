import 'package:flutter/material.dart';

class MixScaleRotateTranstion extends PageRouteBuilder {
  final Widget page;
  MixScaleRotateTranstion({required this.page})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionDuration: const Duration(
            seconds: 2,
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return ScaleTransition(
              scale: animation,
              child: RotationTransition(
                turns: animation,
                child: child,
              ),
            );
          },
        );
}
