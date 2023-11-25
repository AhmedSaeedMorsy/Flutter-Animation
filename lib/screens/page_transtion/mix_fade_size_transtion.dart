import 'package:flutter/material.dart';

class MixFadeSizeTranstion extends PageRouteBuilder {
  final Widget page;
  MixFadeSizeTranstion({required this.page})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionDuration: const Duration(seconds: 2),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: Align(
                alignment: Alignment.center,
                child: SizeTransition(
                  sizeFactor: animation,
                  child: child,
                ),
              ),
            );
          },
        );
}
