import 'package:flutter/material.dart';

class TextStyleTranstionScreen extends StatefulWidget {
  const TextStyleTranstionScreen({super.key});

  @override
  State<TextStyleTranstionScreen> createState() =>
      _TextStyleTranstionScreenState();
}

class _TextStyleTranstionScreenState extends State<TextStyleTranstionScreen>
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
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Style Transtion"),
      ),
      body: Center(
        child: DefaultTextStyleTransition(
          style: animation.drive(
            TextStyleTween(
              begin: const TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              end: const TextStyle(
                fontSize: 36,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w900,
                color: Colors.blue,
              ),
            ),
          ),
          child: const Text("Free Free Palestine !!"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (controller.status == AnimationStatus.completed) {
            controller.reverse();
          } else {
            controller.forward();
          }
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
