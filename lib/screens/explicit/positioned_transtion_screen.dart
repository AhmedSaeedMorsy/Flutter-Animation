import 'package:flutter/material.dart';

class PositionedTranstionScreen extends StatefulWidget {
  const PositionedTranstionScreen({super.key});

  @override
  State<PositionedTranstionScreen> createState() =>
      _PositionedTranstionScreenState();
}

class _PositionedTranstionScreenState extends State<PositionedTranstionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<RelativeRect> animation1;
  late Animation<RelativeRect> animation2;
  late Animation<RelativeRect> animation3;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800));

    animation1 = RelativeRectTween(
            begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
            end: const RelativeRect.fromLTRB(300, 300, 0, 0))
        .animate(
      controller,
    );
    animation2 = RelativeRectTween(
            begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
            end: const RelativeRect.fromLTRB(150, 150, 0, 0))
        .animate(
      controller,
    );
    animation3 = RelativeRectTween(
            begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
            end: const RelativeRect.fromLTRB(50, 50, 0, 0))
        .animate(
      controller,
    );
    CurvedAnimation(
      parent: controller,
      curve: Curves.bounceInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Positioned Transtion"),
      ),
      body: Stack(
        children: [
          PositionedTransition(
            rect: animation3,
            child: Container(
              color: Colors.green,
            ),
          ),
          PositionedTransition(
            rect: animation2,
            child: Container(
              color: Colors.black,
            ),
          ),
          PositionedTransition(
            rect: animation1,
            child: Container(
              color: Colors.red,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      controller.reset();

                      controller.forward();
                    });
                  },
                  icon: const Icon(
                    Icons.start_outlined,
                  ),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      controller.reverse();
                    });
                  },
                  icon: const Icon(
                    Icons.close,
                  ),
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
