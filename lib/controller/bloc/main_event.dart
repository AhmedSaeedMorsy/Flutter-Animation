import 'package:flutter/material.dart';

abstract class MainEvent {}

class ChangeCounterEvent extends MainEvent {}

class ChangeColorContainerEvent extends MainEvent {
  final bool isInitial;
  ChangeColorContainerEvent({required this.isInitial});
}

class ChangeTextStyleEvent extends MainEvent {
  final bool isInitial;
  ChangeTextStyleEvent({required this.isInitial});
}

class ChangeAnimatedOpacityEvent extends MainEvent {
  ChangeAnimatedOpacityEvent();
}

class ChangeAnimatePaddingEvent extends MainEvent {
  ChangeAnimatePaddingEvent();
}

class ChangeAnimatePhysicalEvent extends MainEvent {
  ChangeAnimatePhysicalEvent();
}

class ChangeAnimatePositionedEvent extends MainEvent {
  ChangeAnimatePositionedEvent();
}

class ChangeAnimatePositionedDirctionalEndEvent extends MainEvent {
  final BuildContext context;
  ChangeAnimatePositionedDirctionalEndEvent({required this.context});
}

class ChangeAnimatePositionedDirctionalTopEvent extends MainEvent {
  ChangeAnimatePositionedDirctionalTopEvent();
}

class ChangeAnimatePositionedDirctionalStartEvent extends MainEvent {
  ChangeAnimatePositionedDirctionalStartEvent();
}

class ChangeAnimatePositionedDirctionalDownEvent extends MainEvent {
  final BuildContext context;
  ChangeAnimatePositionedDirctionalDownEvent({required this.context});
}

class ChangeAnimatedCrossFadeEvent extends MainEvent {}

class ChangeAnimatedSwitchEvent extends MainEvent {}

class ChangeAnimatedAddToListStateEvent extends MainEvent {
  ChangeAnimatedAddToListStateEvent();
}

class ChangeAnimatedDeleteFromListStateEvent extends MainEvent {
  final int index;
  ChangeAnimatedDeleteFromListStateEvent({required this.index});
}
