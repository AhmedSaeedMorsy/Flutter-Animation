import 'package:animation_app/controller/bloc/main_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/bloc/main_bloc.dart';
import '../../controller/bloc/main_state.dart';

class AnimateSwitcherScreen extends StatelessWidget {
  const AnimateSwitcherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(),
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Animated Switcher"),
            ),
            body: Center(
              child: AnimatedSwitcher(
                switchInCurve: Curves.bounceIn,
                switchOutCurve: Curves.bounceOut,
                duration: const Duration(
                  milliseconds: 800,
                ),
                child: state.isSwitch
                    ? const CircularProgressIndicator(
                        color: Colors.blueGrey,
                      )
                    : ElevatedButton(
                        onPressed: () {
                          MainBloc.get(context)
                              .add(ChangeAnimatedSwitchEvent());
                        },
                        child: const Text("Swith")),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                MainBloc.get(context).add(ChangeAnimatedSwitchEvent());
              },
              child: const Icon(
                Icons.switch_access_shortcut_rounded,
              ),
            ),
          );
        },
      ),
    );
  }
}
