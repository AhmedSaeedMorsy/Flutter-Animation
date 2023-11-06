import 'package:animation_app/controller/bloc/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/bloc/main_event.dart';
import '../../controller/bloc/main_state.dart';

class AnimatedAlignScreen extends StatelessWidget {
  const AnimatedAlignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(),
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Animated Align"),
            ),
            body: Stack(
              children: [
                AnimatedAlign(
                  alignment: MainBloc.get(context).getAlignment(
                    MainBloc.get(context).counter,
                  ),
                  duration: const Duration(
                    milliseconds: 800,
                  ),
                  child: Container(
                    color: Colors.amber,
                    width: 100,
                    height: 100,
                  ),
                ),
                AnimatedAlign(
                  alignment: MainBloc.get(context).getAlignment(
                    MainBloc.get(context).counter + 1,
                  ),
                  duration: const Duration(
                    milliseconds: 800,
                  ),
                  child: Container(
                    color: Colors.green,
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                MainBloc.get(context).add(ChangeCounterEvent());
              },
              child: const Icon(
                Icons.animation_outlined,
              ),
            ),
          );
        },
      ),
    );
  }
}
