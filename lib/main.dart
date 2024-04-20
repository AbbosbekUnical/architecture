import 'dart:io';

import 'package:architecture/di/di.dart';
import 'package:architecture/src/config/route/app_route.dart';
import 'package:architecture/src/config/route/routes.dart';
import 'package:architecture/src/config/theme/app_theme.dart';
import 'package:architecture/src/presentation/bloc/log_bloc_observer.dart';
import 'package:architecture/src/presentation/bloc/main/main_bloc.dart';
import 'package:architecture/src/presentation/components/keyboard_dismissed/keyboard_dismisser.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsBinding binding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: binding);

  await EasyLocalization.ensureInitialized();
  await init();
  if (kDebugMode) {
    Bloc.observer = LogBlocObserver();
  }

  /// global CERTIFICATE_VERIFY_FAILEd_KEY
  HttpOverrides.global = MyHttpOverrides();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('uz'),
        Locale('en'),
        Locale('ru'),
      ],
      path: 'assets/locale/',
      child: const MyApp(),
    ),
  );
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MainBloc>(),
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return KeyboardDismisser(
            child: MaterialApp(
              title: 'Flutter Demo',
              debugShowCheckedModeBanner: false,
              theme: lightTheme,
              darkTheme: darkTheme,
              themeMode: ThemeMode.light,
              builder: (_, child) => MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  textScaler: const TextScaler.linear(1),
                ),
                child: child!,
              ),
              supportedLocales: context.supportedLocales,
              localizationsDelegates: context.localizationDelegates,
              locale: context.locale,
              initialRoute: Routes.initial,
              onGenerateRoute: AppRoutes.onGenerateRoute,
              onUnknownRoute: AppRoutes.onUnknownRoute,
            ),
          );
        },
      ),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) =>
      super.createHttpClient(context)
        ..badCertificateCallback = (cert, host, port) => true;
}
