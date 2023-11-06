import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/bloc/main_bloc.dart';
import '../../controller/bloc/main_event.dart';
import '../../controller/bloc/main_state.dart';

class AnimatedPhisicalScreen extends StatelessWidget {
  const AnimatedPhisicalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(),
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Animated Physical"),
            ),
            body: Center(
              child: AnimatedPhysicalModel(
                shape: BoxShape.rectangle,
                shadowColor: Colors.blue.shade50,
                duration: const Duration(
                  milliseconds: 800,
                ),
                elevation: state.elevation,
                color: Colors.blue,
                curve: Curves.easeIn,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                MainBloc.get(context).add(ChangeAnimatePhysicalEvent());
              },
              child: const Icon(Icons.animation_rounded),
            ),
          );
        },
      ),
    );
  }
}
