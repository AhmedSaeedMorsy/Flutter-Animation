import 'package:animation_app/controller/bloc/main_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/bloc/main_bloc.dart';
import '../../controller/bloc/main_state.dart';

class AnimatedPositionedScreen extends StatelessWidget {
  const AnimatedPositionedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(),
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Animated Positioned"),
            ),
            body: Stack(
              children: [
                AnimatedPositioned(
                  top: 0,
                  left: 0,
                  duration: const Duration(milliseconds: 600),
                  child: Container(
                    color: Colors.amber,
                    width: 80,
                    height: 80,
                  ),
                ),
                AnimatedPositioned(
                  top: 0,
                  left: state.isPositioned
                      ? 0
                      : MediaQuery.of(context).size.width - 80,
                  duration: const Duration(milliseconds: 600),
                  child: Container(
                    color: Colors.green,
                    width: 80,
                    height: 80,
                  ),
                ),
                AnimatedPositioned(
                  top: state.isPositioned
                      ? 0
                      : MediaQuery.of(context).size.height - 160,
                  left: 0,
                  duration: const Duration(milliseconds: 1400),
                  child: Container(
                    color: Colors.green,
                    width: 80,
                    height: 80,
                  ),
                ),
                AnimatedPositioned(
                  top: state.isPositioned
                      ? 0
                      : MediaQuery.of(context).size.height / 2 - 80,
                  left: state.isPositioned
                      ? 0
                      : MediaQuery.of(context).size.width / 2 - 40,
                  duration: const Duration(milliseconds: 2200),
                  child: Container(
                    color: Colors.green,
                    width: 80,
                    height: 80,
                  ),
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                MainBloc.get(context).add(ChangeAnimatePositionedEvent());
              },
              child: const Icon(Icons.animation),
            ),
          );
        },
      ),
    );
  }
}
