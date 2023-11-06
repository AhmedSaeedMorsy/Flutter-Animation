import 'package:flutter/material.dart';

class SizeTranstionScreen extends StatefulWidget {
  const SizeTranstionScreen({super.key});

  @override
  State<SizeTranstionScreen> createState() => _SizeTranstionScreenState();
}

class _SizeTranstionScreenState extends State<SizeTranstionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 800,
      ),
    );
    animation = Tween<double>(begin: 1, end: 0).animate(controller);
    CurvedAnimation(parent: controller, curve: Curves.elasticInOut);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Size Transtion"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              controller.reset();
              controller.forward();
            });
          },
          child: Container(
            color: Colors.pinkAccent,
            width: 400,
            height: 400,
            child: Center(
              child: SizeTransition(
                sizeFactor: animation,
                child: Container(
                  color: Colors.lime,
                  width: 400,
                  height: 400,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
