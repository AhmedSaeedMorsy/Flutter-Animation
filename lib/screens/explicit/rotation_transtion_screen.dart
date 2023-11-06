import 'package:flutter/material.dart';

class RotationTranstionScreen extends StatefulWidget {
  const RotationTranstionScreen({super.key});

  @override
  State<RotationTranstionScreen> createState() =>
      _RotationTranstionScreenState();
}

class _RotationTranstionScreenState extends State<RotationTranstionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 10,
      ),
    );
    animation = Tween<double>(begin: 0, end: 5.15).animate(controller);
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
        title: const Text("Rotation Transtion"),
      ),
      body: Center(
        child: RotationTransition(
          turns: animation,
          child: Container(
            height: 150,
            width: 150,
            color: Colors.tealAccent,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              controller.reset();
              controller.forward();
            },
          );
        },
        child: const Icon(Icons.rotate_90_degrees_cw_outlined),
      ),
    );
  }
}
