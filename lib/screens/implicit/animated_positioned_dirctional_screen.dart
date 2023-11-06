import 'package:animation_app/controller/bloc/main_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/bloc/main_bloc.dart';
import '../../controller/bloc/main_state.dart';

class AnimatedPositionedDirectionalScreen extends StatelessWidget {
  const AnimatedPositionedDirectionalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(),
      child: Scaffold(
        appBar: AppBar(title: const Text("Animated Positioned Dirctional")),
        body: BlocBuilder<MainBloc, MainState>(
          builder: (context, state) {
            return Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      AnimatedPositionedDirectional(
                        start: state.start,
                        top: state.top,
                        curve: Curves.bounceIn,
                        duration: const Duration(
                          milliseconds: 800,
                        ),
                        child: Container(
                          color: Colors.grey,
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            MainBloc.get(context).add(
                              ChangeAnimatePositionedDirctionalTopEvent(),
                            );
                          },
                          child: const Icon(
                            Icons.arrow_circle_up,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            MainBloc.get(context).add(
                              ChangeAnimatePositionedDirctionalDownEvent(
                                context: context,
                              ),
                            );
                          },
                          child: const Icon(
                            Icons.arrow_circle_down,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            MainBloc.get(context).add(
                              ChangeAnimatePositionedDirctionalStartEvent(),
                            );
                          },
                          child: const Icon(
                            Icons.arrow_circle_left_outlined,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            MainBloc.get(context).add(
                              ChangeAnimatePositionedDirctionalEndEvent(
                                context: context,
                              ),
                            );
                          },
                          child: const Icon(
                            Icons.arrow_circle_right_outlined,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
