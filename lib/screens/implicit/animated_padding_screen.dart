import 'package:animation_app/controller/bloc/main_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/bloc/main_bloc.dart';
import '../../controller/bloc/main_state.dart';

class AnimatedPaddingScreen extends StatelessWidget {
  const AnimatedPaddingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(),
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Animated Padding"),
            ),
            body: Center(
              child: Container(
                color: Colors.black,
                height: 300,
                width: 300,
                child: AnimatedPadding(
                  padding: state.padding,
                  duration: const Duration(
                    milliseconds: 800,
                  ),
                  curve: Curves.bounceIn,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      color: Colors.orange,
                    ),
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                MainBloc.get(context).add(
                  ChangeAnimatePaddingEvent(),
                );
              },
              child: const Icon(
                Icons.animation,
              ),
            ),
          );
        },
      ),
    );
  }
}
