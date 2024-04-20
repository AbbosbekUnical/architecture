part of 'splash_bloc.dart';

class SplashState extends Equatable {
  const SplashState({
    this.isTimerFinish = false,
  });

  final bool isTimerFinish;

  SplashState copyWith({
    bool? isTimerFinish,
  }) =>
      SplashState(
        isTimerFinish: isTimerFinish ?? this.isTimerFinish,
      );

  @override
  List<Object?> get props => [
        isTimerFinish,
      ];
}
