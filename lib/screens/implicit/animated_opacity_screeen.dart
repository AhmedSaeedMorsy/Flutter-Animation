import 'package:animation_app/controller/bloc/main_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/bloc/main_bloc.dart';
import '../../controller/bloc/main_state.dart';

class AnimatedOpacityScreen extends StatelessWidget {
  const AnimatedOpacityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(),
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Animated Opacity"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedOpacity(
                    opacity: state.opacity,
                    duration: const Duration(
                      milliseconds: 800,
                    ),
                    curve: Curves.decelerate,
                    child: Container(
                      color: Colors.amber,
                      width: 100,
                      height: 100,
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: state.opacity,
                    duration: const Duration(
                      milliseconds: 1600,
                    ),
                    curve: Curves.decelerate,
                    child: Container(
                      color: Colors.black,
                      width: 100,
                      height: 100,
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: state.opacity,
                    duration: const Duration(
                      milliseconds: 2400,
                    ),
                    curve: Curves.decelerate,
                    child: Container(
                      color: Colors.green,
                      width: 100,
                      height: 100,
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                MainBloc.get(context).add(ChangeAnimatedOpacityEvent());
              },
              child: const Icon(Icons.animation),
            ),
          );
        },
      ),
    );
  }
}
