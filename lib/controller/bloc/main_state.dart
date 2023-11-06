import 'package:flutter/material.dart';

abstract class MainState {
  final double opacity;
  EdgeInsetsGeometry padding;
  double elevation;
  bool isPositioned;
  bool isSwitch;
  bool isCrossFade;
  double top;
  double start;
  List list;
  GlobalKey<AnimatedListState> key = GlobalKey<AnimatedListState>();

  MainState({
    this.opacity = .5,
    this.padding = const EdgeInsets.all(10),
    this.elevation = 0,
    this.isPositioned = false,
    this.top = 100,
    this.start = 100,
    this.isCrossFade = false,
    this.isSwitch = false,
    this.list = const [],
  });
}

final class MainInitial extends MainState {
  MainInitial({
    required super.opacity,
  });
}

final class ChangeCounterState extends MainState {
  ChangeCounterState({required super.opacity});
}

final class ChangeContainerColorState extends MainState {
  ChangeContainerColorState({required super.opacity});
}

final class ChangeTextStyleState extends MainState {
  ChangeTextStyleState({required super.opacity});
}

final class ChangeAnimatedOpacity extends MainState {
  ChangeAnimatedOpacity({super.opacity = .5});
}

final class ChangeAnimatedPaddingState extends MainState {
  ChangeAnimatedPaddingState({super.opacity = 1, required super.padding});
}

final class ChangeAnimatedPhysicalState extends MainState {
  ChangeAnimatedPhysicalState({super.opacity = 1, required super.elevation});
}

final class ChangeAnimatedPositionedState extends MainState {
  ChangeAnimatedPositionedState({
    super.opacity = 1,
    required super.isPositioned,
  });
}

final class ChangeAnimatePositionedDirctionalTopState extends MainState {
  ChangeAnimatePositionedDirctionalTopState({
    required super.top,
    required super.start,
  });
}

final class ChangeAnimatePositionedDirctionalDownState extends MainState {
  ChangeAnimatePositionedDirctionalDownState({
    required super.top,
    required super.start,
  });
}

final class ChangeAnimatePositionedDirctionalStartState extends MainState {
  ChangeAnimatePositionedDirctionalStartState({
    required super.top,
    required super.start,
  });
}

final class ChangeAnimatePositionedDirctionalEndState extends MainState {
  ChangeAnimatePositionedDirctionalEndState({
    required super.top,
    required super.start,
  });
}

final class ChangeAnimateedCrossFadeState extends MainState {
  ChangeAnimateedCrossFadeState({
    required super.isCrossFade,
  });
}

final class ChangeAnimatedSwitchState extends MainState {
  ChangeAnimatedSwitchState({
    required super.isSwitch,
  });
}

final class ChangeAnimatedListStateAddToListState extends MainState {
  ChangeAnimatedListStateAddToListState({
    required super.list,
  });
}

final class ChangeAnimatedListStateDeleteFromListState extends MainState {
  ChangeAnimatedListStateDeleteFromListState({
    required super.list,
  });
}
