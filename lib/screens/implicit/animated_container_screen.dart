import 'package:animation_app/controller/bloc/main_bloc.dart';
import 'package:animation_app/controller/bloc/main_event.dart';
import 'package:animation_app/controller/bloc/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimatedContainerScreen extends StatelessWidget {
  const AnimatedContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(),
      child: Scaffold(
        appBar: AppBar(title: const Text("Animated Container")),
        body: BlocBuilder<MainBloc, MainState>(
          builder: (context, state) {
            return Center(
              child: GestureDetector(
                onTap: () {
                  MainBloc.get(context).add(ChangeColorContainerEvent(
                      isInitial: MainBloc.get(context).isInitiol));
                },
                child: AnimatedContainer(
                  duration: const Duration(
                    milliseconds: 800,
                  ),
                  curve: Curves.slowMiddle,
                  decoration: BoxDecoration(
                      color: MainBloc.get(context).containerColor,
                      borderRadius:
                          BorderRadius.circular(MainBloc.get(context).raidius)),
                  width: MainBloc.get(context).width,
                  height: MainBloc.get(context).hight,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
