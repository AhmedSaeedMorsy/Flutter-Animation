import 'package:animation_app/controller/bloc/main_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/bloc/main_bloc.dart';
import '../../controller/bloc/main_state.dart';

class AnimateCrossFadeScreen extends StatelessWidget {
  const AnimateCrossFadeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Cross Fade"),
      ),
      body: BlocProvider(
        create: (context) => MainBloc(),
        child: BlocBuilder<MainBloc, MainState>(
          builder: (context, state) {
            return Center(
              child: GestureDetector(
                onTap: () {
                  MainBloc.get(context).add(ChangeAnimatedCrossFadeEvent());
                },
                child: AnimatedCrossFade(
                  secondCurve: Curves.easeInCirc,
                  firstCurve: Curves.easeOutCirc,
                  firstChild: Container(
                    color: Colors.green,
                    width: 200,
                    height: 200,
                  ),
                  secondChild: Container(
                    color: Colors.red,
                    width: 200,
                    height: 200,
                  ),
                  duration: const Duration(
                    seconds: 2,
                  ),
                  crossFadeState: state.isCrossFade
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
