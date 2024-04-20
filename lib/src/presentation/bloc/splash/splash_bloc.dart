import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'splash_event.dart';

part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState()) {
    on<SplashEvent>(_onHandle);
  }

  void _onHandle(SplashEvent event, Emitter<SplashState> emit) async {
    await Future.delayed(const Duration(seconds: 2)).then(
      (value) => emit(
        state.copyWith(
          isTimerFinish: true,
        ),
      ),
    );
  }
}
