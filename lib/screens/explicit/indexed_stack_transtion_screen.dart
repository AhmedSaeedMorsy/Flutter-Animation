import 'package:flutter/material.dart';

class IndexedStackTranstionScreen extends StatefulWidget {
  const IndexedStackTranstionScreen({super.key});

  @override
  State<IndexedStackTranstionScreen> createState() =>
      _IndexedStackTranstionScreenState();
}

class _IndexedStackTranstionScreenState
    extends State<IndexedStackTranstionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;
  late Animation<double> fadeAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 800,
      ),
    );
    fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(controller);
    scaleAnimation = Tween<double>(begin: 0.1, end: 1.0).animate(controller);
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Indexed Stack Transtion"),
      ),
      body: IndexedStack(
        index: currentIndex,
        alignment: Alignment.center,
        children: [
          ScaleTransition(
            scale: scaleAnimation,
            child: RotationTransition(
              turns: fadeAnimation,
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
          ScaleTransition(
            scale: scaleAnimation,
            child: FadeTransition(
              opacity: fadeAnimation,
              child: Container(
                color: Colors.green,
              ),
            ),
          ),
          ScaleTransition(
            scale: scaleAnimation,
            child: FadeTransition(
              opacity: fadeAnimation,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              currentIndex += 1;
              if (currentIndex == 3) {
                currentIndex = 0;
              }
              controller.reset();
              controller.forward();
            },
          );
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
