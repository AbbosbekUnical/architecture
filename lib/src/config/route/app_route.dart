import 'package:architecture/src/config/route/routes.dart';
import 'package:architecture/src/data/source/local/local_source.dart';
import 'package:architecture/src/presentation/bloc/splash/splash_bloc.dart';
import 'package:architecture/src/presentation/pages/splash/splash_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

import '../../../di/di.dart';

final localSource = sl<LocalSource>();
final logger = Logger();

GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

sealed class AppRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    if (kDebugMode) {
      logger.i("Route => ${settings.name}");
    }
    switch (settings.name) {
      case Routes.initial:
        return CupertinoPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => sl<SplashBloc>(),
            child: const SplashPage(),
          ),
        );
      default:
        return CupertinoPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text(settings.name ?? ''),
            ),
          ),
        );
    }
  }

  static Route<dynamic> onUnknownRoute(RouteSettings settings) {
    if (kDebugMode) {
      logger.i("Route => ${settings.name}");
    }
    return CupertinoPageRoute(
      builder: (context) => Scaffold(
        body: Center(
          child: Text(settings.name ?? ''),
        ),
      ),
    );
  }
}

class FadePageRoute<T> extends PageRouteBuilder<T> {
  FadePageRoute({required this.builder})
      : super(
          pageBuilder: (
            context,
            animation,
            secondaryAnimation,
          ) =>
              builder(context),
          transitionsBuilder: (
            context,
            animation,
            secondaryAnimation,
            child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
  final WidgetBuilder builder;

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 400);
}
