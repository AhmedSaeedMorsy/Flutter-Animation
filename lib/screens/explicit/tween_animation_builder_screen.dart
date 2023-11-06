import 'package:animation_app/controller/ex_bloc/event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/ex_bloc/bloc.dart';
import '../../controller/ex_bloc/states.dart';

class TweenAnimationBuilderScreen extends StatelessWidget {
  const TweenAnimationBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExplicitBloc(),
      child: BlocBuilder<ExplicitBloc, ExplicitStates>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Tween Animation Builder"),
            ),
            body: SizedBox(
              child: Column(
                children: [
                  Center(
                    child: TweenAnimationBuilder(
                      tween: Tween<double>(
                        begin: 0.0,
                        end: state.opacity,
                      ),
                      duration: const Duration(seconds: 2),
                      builder: (context, value, child) {
                        return Opacity(
                          opacity: value,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(
                                ExplicitBloc.get(context).getRadiusvalue(
                                  value: value,
                                ),
                              ),
                            ),
                            width: 200,
                            height: 200,
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                ExplicitBloc.get(context)
                    .add(ChangeOpacityTweenAnimationBuilderEvent());
              },
              child: const Icon(
                Icons.play_arrow,
              ),
            ),
          );
        },
      ),
    );
  }
}
