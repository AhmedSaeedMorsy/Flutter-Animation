abstract class ExplicitStates {
  final double opacity;
  ExplicitStates({
    this.opacity = 0.0,
  });
}

final class ExplicitInitState extends ExplicitStates {}

final class ChangeOpacityTweenAnimationBuilderState extends ExplicitStates {
  ChangeOpacityTweenAnimationBuilderState({
    required super.opacity,
  });
}
