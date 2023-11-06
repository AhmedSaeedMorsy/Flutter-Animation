import 'package:animation_app/controller/bloc/main_bloc.dart';
import 'package:animation_app/controller/bloc/main_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/bloc/main_state.dart';

class AniamteListStateScreen extends StatelessWidget {
  const AniamteListStateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(),
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Animated List State"),
            ),
            body: AnimatedList(
              key: MainBloc.get(context).key,
              itemBuilder: (context, index, animation) {
                return SizeTransition(
                  sizeFactor: animation,
                  child: ListTile(
                    title: Text(
                      state.list[index],
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        MainBloc.get(context).add(
                            ChangeAnimatedDeleteFromListStateEvent(
                                index: index));
                      },
                    ),
                  ),
                );
              },
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                MainBloc.get(context).add(ChangeAnimatedAddToListStateEvent());
              },
              child: const Icon(
                Icons.add,
              ),
            ),
          );
        },
      ),
    );
  }
}
