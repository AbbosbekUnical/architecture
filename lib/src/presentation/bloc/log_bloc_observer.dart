import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogBlocObserver extends BlocObserver {
  @override
  void onClose(BlocBase bloc) {
    if (kDebugMode) {
      log('$bloc => closed');
    }
    super.onClose(bloc);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    if (kDebugMode) {
      log('$change');
    }
    super.onChange(bloc, change);
  }

  @override
  void onCreate(BlocBase bloc) {
    if (kDebugMode) {
      log('$bloc => created');
    }
    super.onCreate(bloc);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    if (kDebugMode) {
      log('$bloc error : ${error.toString()}');
    }
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    if (kDebugMode) {
      log('$event event =>  ${bloc.runtimeType}');
    }
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    if (kDebugMode) {
      log('$transition');
    }
    super.onTransition(bloc, transition);
  }
}
