import 'package:animation_app/controller/bloc/main_bloc.dart';
import 'package:animation_app/controller/bloc/main_event.dart';
import 'package:animation_app/controller/bloc/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimatedTextScreen extends StatelessWidget {
  const AnimatedTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(),
      child: Scaffold(
        appBar: AppBar(title: const Text("Animated Text")),
        body: BlocBuilder<MainBloc, MainState>(
          builder: (context, state) {
            return Center(
              child: GestureDetector(
                onTap: () {
                  MainBloc.get(context).add(ChangeTextStyleEvent(
                      isInitial: MainBloc.get(context).isInitiol));
                },
                child: AnimatedDefaultTextStyle(
                  duration: const Duration(
                    milliseconds: 400,
                  ),
                  curve: Curves.slowMiddle,
                  style: TextStyle(
                    fontSize: MainBloc.get(context).fontSize,
                    color: MainBloc.get(context).textColor,
                  ),
                  child: const Text("Hellow World"),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
