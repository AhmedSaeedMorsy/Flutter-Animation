import 'package:flutter/material.dart';

class PositionedDirectionalTranstionScreen extends StatefulWidget {
  const PositionedDirectionalTranstionScreen({super.key});

  @override
  State<PositionedDirectionalTranstionScreen> createState() =>
      _PositionedDirectionalTranstionScreenState();
}

class _PositionedDirectionalTranstionScreenState
    extends State<PositionedDirectionalTranstionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<RelativeRect> animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 800,
      ),
    );
    animation = RelativeRectTween(
            begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
            end: const RelativeRect.fromLTRB(150, 150, 0, 0))
        .animate(controller);
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
        title: const Text("Positioned dirctional Transtion"),
      ),
      body: Stack(
        children: [
          AnimatedBuilder(
            builder: (context, child) {
              return PositionedDirectional(
                start: animation.value.left,
                end: animation.value.right,
                top: animation.value.top,
                bottom: animation.value.bottom,
                child: Container(
                  color: Colors.amber,
                  width: 100,
                  height: 100,
                ),
              );
            },
            animation: animation,
          ),
        ],
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
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
