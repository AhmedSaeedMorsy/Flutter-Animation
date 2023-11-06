import 'package:flutter_bloc/flutter_bloc.dart';

import 'event.dart';
import 'states.dart';

class ExplicitBloc extends Bloc<ExplicitEvent, ExplicitStates> {
  ExplicitBloc() : super(ExplicitInitState()) {
    on<ChangeOpacityTweenAnimationBuilderEvent>((event, emit) {
      if (state.opacity == 0) {
        emit(ChangeOpacityTweenAnimationBuilderState(opacity: 1.0));
      } else {
        emit(ChangeOpacityTweenAnimationBuilderState(opacity: 0.0));
      }
    });
  }
  static ExplicitBloc get(context) => BlocProvider.of(context);
  double getRadiusvalue({required double value}) {
    return state.opacity * value * 70;
  }
}
