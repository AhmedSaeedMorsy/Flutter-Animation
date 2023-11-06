import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'main_event.dart';
import 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitial(opacity: 1)) {
    on<ChangeCounterEvent>((event, emit) {
      counter = counter + 1;
      if (counter > 8) {
        counter = 0;
      }
      emit(ChangeCounterState(opacity: 1));
    });

    on<ChangeColorContainerEvent>(
      (event, emit) {
        if (event.isInitial) {
          isInitiol = false;
          containerColor = Colors.orangeAccent;

          fontSize = 20;
        } else {
          isInitiol = true;
          containerColor = Colors.green;
          fontSize = 40;
        }
        emit(ChangeTextStyleState(opacity: 1));
      },
    );

    on<ChangeTextStyleEvent>(
      (event, emit) {
        if (event.isInitial) {
          isInitiol = false;
          textColor = Colors.orangeAccent;
          fontSize = 30;
        } else {
          isInitiol = true;
          textColor = Colors.green;
          fontSize = 50;
        }
        emit(ChangeContainerColorState(opacity: 1));
      },
    );
    on<ChangeAnimatedOpacityEvent>((event, emit) {
      if (isOpacity) {
        isOpacity = false;
        emit(ChangeAnimatedOpacity(opacity: 0));
      } else {
        isOpacity = true;

        emit(ChangeAnimatedOpacity(opacity: 1));
      }
    });
    on<ChangeAnimatePaddingEvent>((event, emit) {
      if (isPadding) {
        isPadding = false;
        emit(ChangeAnimatedPaddingState(padding: const EdgeInsets.all(10)));
      } else {
        isPadding = true;
        emit(ChangeAnimatedPaddingState(padding: const EdgeInsets.all(40)));
      }
    });
    on<ChangeAnimatePhysicalEvent>((event, emit) {
      if (isPadding) {
        isPadding = false;
        emit(ChangeAnimatedPhysicalState(elevation: 0.0));
      } else {
        isPadding = true;
        emit(ChangeAnimatedPhysicalState(elevation: 40.0));
      }
    });
    on<ChangeAnimatePositionedEvent>((event, emit) {
      isPositioned = !isPositioned;
      emit(ChangeAnimatedPositionedState(isPositioned: isPositioned));
    });
    on<ChangeAnimatePositionedDirctionalTopEvent>((event, emit) {
      top -= 100;
      if (top < 0) {
        top = 0;
      }
      emit(ChangeAnimatePositionedDirctionalTopState(top: top, start: start));
    });
    on<ChangeAnimatePositionedDirctionalDownEvent>((event, emit) {
      top += 100;
      if (top > MediaQuery.of(event.context).size.height - 258) {
        top = MediaQuery.of(event.context).size.height - 258;
      }
      emit(ChangeAnimatePositionedDirctionalDownState(top: top, start: start));
    });
    on<ChangeAnimatePositionedDirctionalStartEvent>((event, emit) {
      start -= 100;
      if (start < 0) {
        start = 0;
      }
      emit(ChangeAnimatePositionedDirctionalStartState(top: top, start: start));
    });
    on<ChangeAnimatePositionedDirctionalEndEvent>((event, emit) {
      start += 100;
      if (start > MediaQuery.of(event.context).size.width - 100) {
        start = MediaQuery.of(event.context).size.width - 100;
      }
      emit(ChangeAnimatePositionedDirctionalEndState(top: top, start: start));
    });
    on<ChangeAnimatedCrossFadeEvent>((event, emit) {
      isCrossFade = !isCrossFade;
      emit(ChangeAnimateedCrossFadeState(isCrossFade: isCrossFade));
    });
    on<ChangeAnimatedSwitchEvent>((event, emit) {
      isSwitched = !isSwitched;
      emit(ChangeAnimatedSwitchState(isSwitch: isSwitched));
    });
    on<ChangeAnimatedAddToListStateEvent>((event, emit) {
      list.insert(0, "New item ${list.length}");
      key.currentState?.insertItem(0);
      emit(ChangeAnimatedListStateAddToListState(list: list));
    });
    on<ChangeAnimatedDeleteFromListStateEvent>((event, emit) {
      String removedItem = list[event.index];
      list.removeAt(event.index);
      key.currentState?.removeItem(
        event.index,
        duration: const Duration(
          milliseconds: 800,
        ),
        (context, animation) => SizeTransition(
          sizeFactor: animation,
          child: ListTile(
            title: Text(removedItem),
            textColor: Colors.red,
          ),
        ),
      );
      emit(ChangeAnimatedListStateAddToListState(list: list));
    });
  }
  GlobalKey<AnimatedListState> key = GlobalKey<AnimatedListState>();

  List list = [];
  bool isCrossFade = false;
  bool isSwitched = false;
  double start = 100;
  double top = 100;
  bool isPadding = false;
  bool isPositioned = false;
  bool isElevated = false;
  bool isOpacity = true;
  bool isInitiol = false;
  int counter = 0;
  Color containerColor = Colors.orangeAccent;
  Color textColor = Colors.orangeAccent;
  double width = 150;
  double raidius = 20;
  double hight = 150;

  double fontSize = 30;

  static MainBloc get(context) => BlocProvider.of(context);
  Alignment getAlignment(int counterAlign) {
    switch (counterAlign) {
      case 1:
        return Alignment.topCenter;
      case 2:
        return Alignment.topRight;
      case 3:
        return Alignment.centerLeft;
      case 4:
        return Alignment.center;
      case 5:
        return Alignment.centerRight;
      case 6:
        return Alignment.bottomLeft;
      case 7:
        return Alignment.bottomCenter;
      case 8:
        return Alignment.bottomRight;
      default:
        counter = 0;
        return Alignment.topLeft;
    }
  }
}
