import 'package:flutter/material.dart';

class FadeTranstionScreen extends StatefulWidget {
  const FadeTranstionScreen({super.key});

  @override
  State<FadeTranstionScreen> createState() => _FadeTranstionScreenState();
}

class _FadeTranstionScreenState extends State<FadeTranstionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    animation = Tween<double>(begin: 1, end: .2).animate(controller);
    CurvedAnimation(parent: controller, curve: Curves.bounceOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fade Transtion"),
      ),
      body: Center(
        child: FadeTransition(
          opacity: animation,
          child: Container(
            width: 200,
            color: Colors.blue,
            height: 200,
            child: const Center(
              child: Text(
                "Free Free Palestine",
                style: TextStyle(color: Colors.white, fontSize: 26),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.animation),
        onPressed: () {
          setState(() {
            controller.reset();
            controller.forward();
          });
        },
      ),
    );
  }
}
